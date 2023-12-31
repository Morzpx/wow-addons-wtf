local name,ZGV = ...

-- GLOBAL BINDING_HEADER_ZYGORGUIDESACTIONBAR

local ActionBar = {
	Buttons = {},
}

ZGV.ActionBar = ActionBar

local CHAIN = ZGV.ChainCall
local L = ZGV.L
local ui = ZGV.UI
local SkinData = ui.SkinData

local BUTTON_SIZE = 30
local BAR_HEIGHT = BUTTON_SIZE+10

local function OnEvent(self, event)
	-- ZGV_STEP_CHANGED
	-- ZGV_NPC_TRANSLATED
	-- PLAYER_REGEN_ENABLED
	-- UPDATE_VEHICLE_ACTIONBAR

	if not ZGV.db.profile.enable_actionbuttons then return end -- disabled
	if not ZGV.ActionBar or not ZGV.ActionBar.Frame then return end -- we are too early
	if not ZGV.CurrentStep then return end -- we will retry on step focus

	-- only events registered here are for updating action bar, so no need 

	if ActionBar.SetTimer then ZGV:CancelTimer(ActionBar.SetTimer) end

	ActionBar:SetActionButtons()
end

function ActionBar:SetActionButtons()
	-- Hide disabled oveerlay

	if not ZGV.CurrentStep then return end
	
	if ActionBar.SetTimer then ZGV:CancelTimer(ActionBar.SetTimer) end
	if InCombatLockdown() then
		ActionBar.SetTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SetActionButtons()
		end, 1)
		return
	end


	ZGV.ActionBar:ClearBar()

	-- current step
	local actions = {}
	local actions_npc = {}

	local goals = {}
	
	for gi,goal in ipairs(ZGV.CurrentStep.goals) do tinsert(goals,goal) end
	for si,step in ipairs(ZGV:GetStickiesAt(ZGV.CurrentStep.num)) do
		if not step:IsComplete() then
			for gi,goal in ipairs(step.goals) do tinsert(goals,goal) end
		end
	end

	for gi,goal in ipairs(goals) do
		if goal:IsVisible() then
			if goal.castspell and goal.castspellid and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"spell",goal.castspellid})
			elseif goal.castspell and goal.extraaction  and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"extraaction",goal.extraaction})
			elseif goal.item or goal.itemid  and ZGV.db.profile.actionbar_item then
				table.insert(actions,{"item",goal.itemid  or  goal.item})
			elseif goal.script and goal.script:find("DoEmote")  and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"emote",goal.script})
			elseif goal.script and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"script",goal.script})
			elseif goal.macro and ZGV.db.profile.actionbar_quest then
				table.insert(actions,{"macro",goal.macro})
			elseif goal.petaction and ZGV.db.profile.actionbar_quest then
				local num,name,subtext,tex = ZGV.FindPetActionInfo(goal.petaction)
				if num then
					table.insert(actions,{"petaction",goal.numitem})
				end
			elseif goal.action=="talk" and goal.npcid and ZGV.db.profile.actionbar_talk then
				table.insert(actions_npc,{"talk",goal.npcid})
			elseif goal.action=="kill" and goal.targetid and ZGV.db.profile.actionbar_kill then
				table.insert(actions_npc,{"kill",goal.targetid})
			end
		end -- if goal visible
	end -- for goal in step

	for _,data in ipairs(actions) do ZGV.ActionBar:SetButton(data[1],data[2]) end
	for _,data in ipairs(actions_npc) do ZGV.ActionBar:SetButton(data[1],data[2]) end
end


function ActionBar:ShowTooltip()
	if ActionBar.Active then return end

	GameTooltip:SetOwner(ActionBar.Frame,"ANCHOR_BOTTOMLEFT")
	GameTooltip:SetText("Zygor Action Bar")
	GameTooltip:Show()

end

function ActionBar:CreateFrame() 
	if not ActionBar.Frame then
		ActionBar.Frame = CHAIN(ui:Create("Frame", UIParent, "ZygorGuidesViewer_ActionBar"))
			:SetSize(BAR_HEIGHT,BAR_HEIGHT)
			:SetFrameStrata("LOW")
			:SetFrameLevel(10)
			:CanDrag(true)
			:SetScript("OnEnter", function()
				ActionBar:ShowTooltip()
				end
			)
			:SetScript("OnLeave", function()
				GameTooltip:Hide()
				end
			)
			:SetScript("OnDragStop", function(self)
				self:StopMovingOrSizing()
				if self.snapped then
					self:ClearAllPoints()
					--self:SetPoint("BOTTOMLEFT",ZGV.Frame,"TOPLEFT",0,10)
				else
					ZGV.db.profile.actionbar_anchor = {self:GetPoint()}
				end
			end)
			:SetScript("OnMouseDown", function(self)
				-- store mouse-on-frame location, to take over dragging position
				local ssc=self:GetEffectiveScale()
				local l,b=self:GetLeft()*ssc,self:GetBottom()*ssc
				local cx,cy = GetCursorPosition()
				self.drag_offset_x,self.drag_offset_y = cx-l,cy-b
			end)
			:SetScript("OnUpdate",ActionBar.Frame_OnUpdate)
			:SetScript("OnSizeChanged",function() if not ZGV.db.profile.actionbar_anchor then ActionBar:SnapToZGVFrame(true) end end)
			:Hide()
		.__END
		ActionBar.Frame.close = CHAIN(CreateFrame("Button",nil,ActionBar.Frame,"ZGV_DefaultSkin_TitleButton_Template"))
			:SetPoint("TOPRIGHT",ActionBar.Frame,"TOPRIGHT", -5, -4)
			:SetScript("OnClick", function() 
				ZGV.db.profile.enable_actionbar = false
				ActionBar:ToggleFrame()
			 end)
			.__END
		ActionBar.Frame.close.buttonkey = "CLOSE"
		ActionBar.Frame.close:ApplySkin()

		ActionBar.Frame.Overlay = CHAIN(ui:Create("Frame", ActionBar.Frame))
			:SetAllPoints()
			:SetAlpha(1)
			:SetFrameLevel(15)
			:EnableMouse(true)
			:Hide()
		.__END

		if ZGV.db.profile.actionbar_anchor then
			ZGV.db.profile.actionbar_anchor[2]=UIParent
			ActionBar.Frame:ClearAllPoints()
			ActionBar.Frame:SetPoint(unpack(ZGV.db.profile.actionbar_anchor))
		end
	end

	ZGV:AddMessageHandler("SKIN_UPDATED",ActionBar.ApplySkin)
	
	ActionBar:ApplySkin()
end

function ActionBar:ShowDisabledOverlay()
	ActionBar.Frame.Overlay:Show()
end

local SNAP_Y=5
function ActionBar.Frame_OnUpdate(self)
	if self:IsDragging() then
		local ssc=self:GetEffectiveScale()
		local x,y = GetCursorPosition()
		local l,b=x-self.drag_offset_x,y-self.drag_offset_y
		local zsc=ZGV.Frame:GetEffectiveScale()
		local zl,zt=ZGV.Frame:GetLeft()*zsc,ZGV.Frame:GetTop()*zsc
		if (math.abs(zl-l)<10 and math.abs((zt+SNAP_Y)-b)<10) then
			self.snapped=true
			ZGV.db.profile.actionbar_anchor=nil
			ActionBar:SnapToZGVFrame(true)
			--ZGV.Anchors:Save(self,"actionbar_anchor")
		else
			self.snapped=false
			self:ClearAllPoints()
			self:SetPoint("BOTTOMLEFT",self:GetParent(),"BOTTOMLEFT",l/ssc,b/ssc)
		end
		--[[
		local width = self:GetWidth()
		local x,y = minimap:GetCenter()
		local sc = minimap:GetEffectiveScale()
		local mx,my = GetCursorPosition() --self:GetCenter()
		mx=mx/sc  my=my/sc
		local dx,dy=mx-x,my-y
		local dist = (dx*dx+dy*dy)^0.5

		local radmin=radius
		local radsnap=radius+width*0.2
		local radpull=radius+width*0.7
		local radfre=radius+width

		local radclamp
		if dist<=radsnap then self.snapped=true radclamp=radmin
		elseif dist<radpull and self.snapped then radclamp=radmin
		elseif dist<radfre and self.snapped then radclamp=radmin+(dist-radpull)/2
		else self.snapped=false -- dobby is freeee
		end
		
		if radclamp then
			dx=dx/(dist/radclamp)
			dy=dy/(dist/radclamp)
		end
		--]]
	else
		-- position it where it needs to be, but without anchoring
		if not ZGV.db.profile.actionbar_anchor then
			ActionBar:SnapToZGVFrame()
		end
	end
end

local old_x,old_y
function ActionBar:SnapToZGVFrame(force)
	if ActionBar.SnapTimer then ZGV:CancelTimer(ActionBar.SnapTimer) end
	if InCombatLockdown() then
		ActionBar.SnapTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SnapToZGVFrame(force)
		end, 1)
		return
	end

	local x,y = ZGV.Frame:GetLeft()*ZGV.Frame:GetEffectiveScale(),ZGV.Frame:GetTop()*ZGV.Frame:GetEffectiveScale()
	if force or x~=old_x or y~=old_y then
		old_x,old_y=x,y
		self.Frame:ClearAllPoints()
		self.Frame:SetPoint("BOTTOMLEFT",UIParent,"BOTTOMLEFT",(x/self.Frame:GetEffectiveScale()),(y+SNAP_Y)/self.Frame:GetEffectiveScale())
	end
end


function ActionBar:ApplySkin()
	local MF = ActionBar.Frame
	if not MF then return end

	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(MF.close)

	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	MF:SetBackdrop(SkinData("ActionBarBackdrop"))
	MF:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("ActionBarBackdropColor"))))
	MF:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("ActionBarBackdropBorderColor"))))

	ActionBar:SetAlpha()
	ActionBar:SetScale() 
end

function ActionBar:ToggleFrame()
	if not ActionBar.Frame then
		ActionBar:CreateFrame()
	end

	if ActionBar.ToggleTimer then ZGV:CancelTimer(ActionBar.ToggleTimer) end
	if InCombatLockdown() then 
		ActionBar.ToggleTimer = ZGV:ScheduleTimer(function() 
			ActionBar:ToggleFrame()
		end, 1)
		return
	end
	
	if ZGV.db.profile.enable_actionbar and ZGV.db.profile.enable_actionbuttons and ZGV.db.profile.enable_viewer then
		ActionBar.Frame:Show()
		ActionBar:SetActionButtons()
	else
		ActionBar.Frame:Hide()
	end
		
end

function ActionBar:SetButton(btype,object) 
	if not ZGV.db.profile.enable_actionbuttons then return end
	
	if btype and not object then ZGV:Debug("ActionButton must have data defined if type is set") return end

	local button,action_index = false,false
	-- look for any unused button, and use it if found
	for i,v in pairs(ActionBar.Buttons) do
		if btype==v:GetAttribute("rawtype") and object==v:GetAttribute("rawobject") then -- button for that item/spell already exists, show it, and don't create clones
			return v
		elseif not v:GetAttribute("type") then
			button = v
			action_index = i
			break
		end
	end

	-- if no unused was found, create new one
	if not button then
		local num = #ActionBar.Buttons+1
		button = ZGV.UI:Create("ActionButton",ActionBar.Frame,"ZygorAB"..num)
		button:SetSize(BUTTON_SIZE,BUTTON_SIZE)
		button:SetID(num)
		button:EnableDrag()
		table.insert(ActionBar.Buttons,button)
		action_index = num
	end

	local macro_index = GetMacroIndexByName("ZygorAction"..action_index)
	if macro_index==0 then
		local numAccountMacros, numCharacterMacros = GetNumMacros();
		if numAccountMacros==MAX_ACCOUNT_MACROS then
			if not ZGV.db.char.actionbarmacrowarning then
				ZGV:Print("Action Bar was unable to create needed macros, since you have exceeded maximum number of possible macros. You will need to remove some of your existing macros for Action Bar to be able to work properly.")
				ZGV.db.char.actionbarmacrowarning = true
			end
			return
		end
		macro_index = CreateMacro("ZygorAction"..action_index, 134400, "") -- create empty macro
		ZGV.db.char.actionbarmacrowarning = false
	end

	local macro_text, macro_texture, macro_name,macro_tooltip,zygor_texture_index,_ = "", 134400
	-- set data based on type
	if btype=="item" then 
		macro_name,_,_,_,_,_,_,_,_,macro_texture = ZGV:GetItemInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/use item:"..object
		button:SetAttribute("itemid",object)
	elseif btype=="spell" then
		macro_name,_,macro_texture = GetSpellInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/cast "..macro_name
		button:SetAttribute("spellid",object)
	elseif btype=="extraaction" then
		macro_name,_,macro_texture = GetSpellInfo(object)
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/click ExtraActionButton1"
		button:SetAttribute("spellid",object)
	elseif btype=="petaction" then
		local num,needsglobal
		num,macro_name = ZGV.FindPetActionInfo(object)
		_,_,macro_texture,needsglobal = GetPetActionInfo(num)
		if not tonumber(macro_texture) then 
			macro_texture = 1121022 
		elseif needsglobal then 
			macro_texture = _G[macro_texture] 
		end
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/cast "..macro_name
		button:SetAttribute("petaction",object)
	elseif btype=="emote" then
		if type(object)=="number" then 
			macro_text = GetMacroBody(object)
			_,macro_texture = GetMacroInfo(object)
		else
			macro_text = "/run "..object
			macro_texture = 1505955
		end
		--_,macro_texture = GetMacroInfo(object)
		zygor_texture_index = 3
		macro_tooltip = macro_text:match("\"(.*)\"") -- /run DoEmote("blah") -> blah
	elseif btype=="script" or btype=="macro" then
		macro_text = "/run "..object
		macro_texture = 1505955
		macro_tooltip = object
		zygor_texture_index = 4
	elseif btype=="zygor" then
		button:SetAttribute("zygor","zygor")
	elseif btype=="talk" then
		local name = ZGV.Localizers:GetTranslatedNPC(object)
		macro_name = L["stepgoal_talk to"]:format(name)
		macro_tooltip = macro_name
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run ZGV:MCM(4)\n/cleartarget\n/target "..name.."\n/run ZGV:MRM()"
		macro_texture = 132212
		zygor_texture_index = 1
	elseif btype=="kill" then
		local name = ZGV.Localizers:GetTranslatedNPC(object)
		macro_name = L["stepgoal_kill"]:format(name)
		macro_tooltip = macro_name
		macro_text = (macro_name and "#showtooltip "..macro_name.."\n" or "").."/run ZGV:MCM(8)\n/cleartarget\n/target "..name.."\n/run ZGV:MRM()"
		macro_texture = 132848
		zygor_texture_index = 2
	end

	EditMacro(macro_index,nil,macro_texture,macro_text)

	if btype=="item" then 
		local macro_name = macro_name or (tonumber(object) and "item:"..object) or object
		SetMacroItem(macro_index,macro_name)
	elseif btype=="spell" or btype=="petaction" then
		local macro_name = macro_name or (tonumber(object) and "spell:"..object) or object
		SetMacroSpell(macro_index,macro_name)
	end

	button:SetMacro(macro_index)

	if btype=="item" then 
		button:SetAttribute("itemid",object)
	elseif btype=="spell" then
		button:SetAttribute("spellid",object)
	elseif btype=="petaction" then
		local num,needsglobal
		num,macro_name = ZGV.FindPetActionInfo(object)
		button:SetAttribute("petid",num)
	end

	if macro_tooltip then
		button.tooltip = macro_tooltip
	end

	-- store object in zygor defined field for easier search of existing buttons later
	button:SetAttribute("rawobject",object)
	button:SetAttribute("rawtype",btype)

	if zygor_texture_index then
		button.tex:SetTexture(ZGV.DIR.."\\Skins\\actionbar")
		button.tex:SetTexCoord((zygor_texture_index-1)/4,zygor_texture_index/4,0,1)
	else
		button.tex:SetTexCoord(0,1,0,1)
	end

	-- object added may have been already on cooldown, so update cd timer
	button:UpdateCooldown()

	ActionBar:ReanchorButtons()

	return button
end


function ActionBar:ClearBar() 
	if not ActionBar.Frame then return end
	ActionBar.Frame.Overlay:Show()

	for i,v in pairs(ActionBar.Buttons) do
		v:ClearData()
	end

	for i=1,10 do
		local j = GetMacroIndexByName("ZygorAction"..i)
		if j>0 then
			EditMacro(j,nil,134400,"")
			SetMacroItem(j,"")
			SetMacroSpell(j,"")
		else
			break
		end
	end

	ActionBar:ReanchorButtons()
end

function ActionBar:ReanchorButtons(force) 
	if not ActionBar.Frame then return end
	if not ZGV.db.profile.enable_viewer then return end -- viewer is hidden, go away
	if not ZGV.db.profile.enable_actionbuttons and not force then return end -- everything is disabled, abort
	if not ZGV.db.profile.enable_actionbar and not force then return end -- we are not showin buttonsg, only updating macros. bail out

	local previous = false
	local space = 5
	local width = space
	local active = false
	for i,v in pairs(ActionBar.Buttons) do
		if v:GetAttribute("type") then
			if not previous then
				v:SetPoint("TOPLEFT",ActionBar.Frame,"TOPLEFT",space,-space)
			else
				v:SetPoint("TOPLEFT",previous,"TOPRIGHT",space,0)
			end
			width = width + v:GetWidth() + space
			previous = v
			active = true
		end
	end

	ActionBar.Active = active

	ActionBar.Frame:SetWidth(width+25)
	
	ActionBar.Frame.Overlay:Hide()

	if force=="off" then 
		ActionBar.Frame:Hide()
		return 
	elseif active or force=="on" then 
		ActionBar.Frame:Show()
	-- -- actionbar_hide_useless variant
	--elseif ZGV.db.profile.actionbar_hide_useless then
	--	ActionBar.Frame:Hide()
	--else 
	--	ActionBar.Frame:Show()
	else 
		ActionBar.Frame:Hide()
	end
end

function ActionBar:SetScale() 
	if ActionBar.ScaleTimer then ZGV:CancelTimer(ActionBar.ScaleTimer) end
	if InCombatLockdown() then 
		ActionBar.ScaleTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SetScale()
		end, 1)
		return
	end
	ActionBar.Frame:SetScale(ZGV.db.profile.actionbar_scale)
end

function ActionBar:SetAlpha(value) 
	if ActionBar.OpacityTimer then ZGV:CancelTimer(ActionBar.OpacityTimer) end
	if InCombatLockdown() then 
		ActionBar.OpacityTimer = ZGV:ScheduleTimer(function() 
			ActionBar:SetAlpha()
		end, 1)
		return
	end
	ActionBar.Frame:SetAlpha(value or ZGV.db.profile.opacitymain)
end

function ActionBar:TutorialPreview(mode) 
	local button = ActionBar.Buttons[1]

	if ActionBar.Frame:IsVisible() and (button and not button:GetAttribute("zygor")) then return end -- there is a non-faked button visible, do not hide/show anything


	if mode=="on" then
		if not (button and button:GetAttribute("type")) then -- there is no button visible, make a fake one
			button = ActionBar:SetButton("macro","")
			button:SetAttribute("zygor","zygor")
		end
		ActionBar:ReanchorButtons("on")
	else
		if button then button:SetAttribute("type",nil) end -- clear whatever is visible
		ActionBar:ReanchorButtons(not ZGV.db.profile.enable_actionbar and "off")
	end
end

tinsert(ZGV.startups,{"ActionBar startup",function(self)
	-- create globals for blizzard keybind menu
	for i=1,5 do
		_G[("BINDING_NAME_CLICK ZygorAB%d:LeftButton"):format(i)] = ("Zygor ActionBar Button %d"):format(i)
	end
	BINDING_HEADER_ZYGORGUIDESACTIONBAR = "Zygor Guides Viewer Action Bar"
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",OnEvent)
	ZGV:AddMessageHandler("PLAYER_REGEN_ENABLED",OnEvent)
	ZGV:AddMessageHandler("ZGV_NPC_TRANSLATED",OnEvent)
	ZGV:AddMessageHandler("UPDATE_VEHICLE_ACTIONBAR",OnEvent)
	ActionBar:CreateFrame()
end})
