local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ProfessionsHCLASSIC") then return end
ZGV.BETASTART()
ZGV.BETAEND()
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Alchemy\\Alchemy (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Alchemy') > 0 end,
description="This guide will walk you through leveling your Alchemy skill from 300-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 56.48,35.25 < 7 |walk
talk Yelmak##3347
|tip Inside the building.
Train Apprentice Alchemy |skillmax Alchemy,75 |goto Orgrimmar/0 56.84,33.03
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Alchemy |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Alchemy") >= 375 |or |next "Begin_Profession_Leveling"
stickystart "Collect_Silverleaf_Total"
stickystart "Collect_Briarthorn_Total"
stickystart "Collect_Bruiseweed_Total"
stickystart "Collect_Mageroyal_Total"
stickystart "Collect_Stranglekelp_Total"
stickystart "Collect_Liferoot_Total"
stickystart "Collect_Kingsblood_Total"
stickystart "Collect_Goldthorn_Total"
stickystart "Collect_Wild_Steelbloom_Total"
step
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_Total"
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Briarthorn_Total"
collect 100 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Bruiseweed_Total"
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Mageroyal_Total"
collect 20 Mageroyal##785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 155 |or
step
label "Collect_Stranglekelp_Total"
collect 50 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 210 |or
step
label "Collect_Liferoot_Total"
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
step
label "Collect_Kingsblood_Total"
collect 35 Kingsblood##3356 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 185 |or
step
label "Collect_Goldthorn_Total"
collect 60 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 265 |or
step
label "Collect_Wild_Steelbloom_Total"
collect 5 Wild Steelbloom##3355 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 215 |or
stickystart "Collect_Khadgar's_Whisker_Total"
stickystart "Collect_Arthas'_Tears_Total"
stickystart "Collect_Blindweed_Total"
stickystart "Collect_Golden_Sansam_Total"
stickystart "Collect_Mountain_Silversage_Total"
stickystart "Collect_Felweed_Total"
stickystart "Collect_Dreaming_Glory_Total"
stickystart "Collect_Terocone_Total"
stickystart "Collect_Netherbloom_Total"
stickystart "Collect_Nightmare_Vine_Total"
step
collect 90 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Khadgar's_Whisker_Total"
collect 15 Khadgar's Whisker##3358 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 230 |or
step
label "Collect_Arthas'_Tears_Total"
collect 25 Arthas' Tears##8836 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 250 |or
step
label "Collect_Blindweed_Total"
collect 50 Blindweed##8839 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Golden_Sansam_Total"
collect 50 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 330 |or
step
label "Collect_Mountain_Silversage_Total"
collect 25 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 315 |or
step
label "Collect_Felweed_Total"
collect 45 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 355 |or
step
label "Collect_Dreaming_Glory_Total"
collect 105 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 375 |or
step
label "Collect_Terocone_Total"
collect 5 Terocone##22789 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 335 |or
step
label "Collect_Netherbloom_Total"
collect 10 Netherbloom##22791 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 340 |or
step
label "Collect_Nightmare_Vine_Total"
collect 50 Nightmare Vine##22792 |or
|tip Farm them with Herbalism or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Alchemy") >= 375 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 85 Empty Vial##3371 |goto Orgrimmar/0 56.05,34.12 |or 3
buy 105 Leaded Vial##3372 |goto Orgrimmar/0 56.05,34.12 |or 3
buy 115 Crystal Vial##8925 |goto Orgrimmar/0 56.05,34.12 |or 3
'|complete skill("Alchemy") >= 375 |or
stickystart "Collect_Silverleaf_60"
step
label "Begin_Profession_Leveling"
collect 65 Peacebloom##2447 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 60 |or
step
label "Collect_Silverleaf_60"
collect 65 Silverleaf##765 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 60 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 65 Empty Vial##3371 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 60 |or
step
Open Your Alchemy Crafting Panel:
_<Create 65 Minor Healing Potions>_
|tip Save these, you will need them later.
collect 65 Minor Healing Potion##118 |or
'|complete skill("Alchemy") >= 110 |or
step
Open Your Alchemy Crafting Panel:
_<Create Minor Healing Potions>_
|tip You may need to create a few more of these.
|tip Save 65 of these, you will need them later.
|tip Each additional one requires one Peacebloom, one Silverleaf, and one Empty Vial.
Reach Skill 60 in Alchemy |skill Alchemy,60
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Journeyman Alchemy |skillmax Alchemy,150 |goto Orgrimmar/0 56.84,33.03
step
talk Yelmak##3347
|tip Inside the building.
Train Lesser Healing Potion |learn Lesser Healing Potion##2337 |goto Orgrimmar/0 56.84,33.03
step
collect 65 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 110 |or
step
Open Your Alchemy Crafting Panel:
_<Create 65 Lesser Healing Potions>_
Reach Skill 110 in Alchemy |skill Alchemy,110
step
talk Yelmak##3347
|tip Inside the building.
Train Healing Potion |learn Healing Potion##3447 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Bruiseweed_140"
step
collect 35 Briarthorn##2450 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
step
label "Collect_Bruiseweed_140"
collect 35 Bruiseweed##2453 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 140 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 140 |or
step
Open Your Alchemy Crafting Panel:
_<Create 35 Healing Potions>_
Reach Skill 140 in Alchemy |skill Alchemy,140
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Expert Alchemy |skillmax Alchemy,225 |goto Orgrimmar/0 56.84,33.03
step
talk Yelmak##3347
|tip Inside the building.
Train Lesser Mana Potion |learn Lesser Mana Potion##3173 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Stranglekelp_155"
step
collect 20 Mageroyal##785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 155 |or
step
label "Collect_Stranglekelp_155"
collect 20 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 155 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 20 Empty Vial##3371 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 155 |or
step
Open Your Alchemy Crafting Panel:
_<Create 20 Lesser Mana Potions>_
Reach Skill 155 in Alchemy |skill Alchemy,155
step
talk Yelmak##3347
|tip Inside the building.
Train Greater Healing Potion |learn Greater Healing Potion##7181 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Kingsblood_185"
step
collect 35 Liferoot##3357 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 185 |or
step
label "Collect_Kingsblood_185"
collect 35 Kingsblood##3356 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 185 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 35 Leaded Vial##3372 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 185 |or
step
Open Your Alchemy Crafting Panel:
_<Create 35 Greater Healing Potions>_
Reach Skill 185 in Alchemy |skill Alchemy,185
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Agility |learn Elixir of Agility##11449 |goto Orgrimmar/0 56.84,33.03
label "Collect_Stranglekelp_210"
step
collect 30 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 210 |or
step
label "Collect_Stranglekelp_210"
collect 30 Stranglekelp##3820 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 210 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 30 Leaded Vial##3372 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 210 |or
step
Open Your Alchemy Crafting Panel:
_<Create 30 Elixirs of Agility>_
Reach Skill 210 in Alchemy |skill Alchemy,210
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Greater Defense |learn Elixir of Greater Defense##11450 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Goldthorn_215"
step
collect 5 Wild Steelbloom##3355 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 215 |or
step
label "Collect_Goldthorn_215"
collect 5 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 215 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 5 Leaded Vial##3372 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 215 |or
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixirs of Greater Defense>_
Reach Skill 215 in Alchemy |skill Alchemy,215
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Yelmak##3347
|tip Inside the building.
Train Artisan Alchemy |skillmax Alchemy,300 |goto Orgrimmar/0 56.84,33.03
step
talk Yelmak##3347
|tip Inside the building.
Train Superior Healing Potion |learn Superior Healing Potion##11457 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Khadgar's_Whisker_230"
step
collect 15 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 230 |or
step
label "Collect_Khadgar's_Whisker_230"
collect 15 Khadgar's Whisker##3358 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 230 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 15 Crystal Vial##8925 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 230 |or
step
Open Your Alchemy Crafting Panel:
_<Create 15 Superior Healing Potions>_
Reach Skill 230 in Alchemy |skill Alchemy,230
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Detect Undead |learn Elixir of Detect Undead##11460 |goto Orgrimmar/0 56.84,33.03
step
collect 25 Arthas' Tears##8836 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 250 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 25 Crystal Vial##8925 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 250 |or
step
Open Your Alchemy Crafting Panel:
_<Create 25 Elixirs of Detect Undead>_
Reach Skill 250 in Alchemy |skill Alchemy,250
step
talk Yelmak##3347
|tip Inside the building.
Train Elixir of Greater Agility |learn Elixir of Greater Agility##11467 |goto Orgrimmar/0 56.84,33.03
stickystart "Collect_Goldthorn_265"
step
collect 25 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 265 |or
step
label "Collect_Goldthorn_265"
collect 25 Goldthorn##3821 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 265 |or
step
talk Kor'geld##3348
|tip Inside the building.
buy 25 Crystal Vial##8925 |goto Orgrimmar/0 56.05,34.12 |or
'|complete skill("Alchemy") >= 265 |or
step
Open Your Alchemy Crafting Panel:
_<Create 25 Elixirs of Greater Agility>_
Reach Skill 265 in Alchemy |skill Alchemy,265
step
talk Algernon##4610
buy Recipe: Superior Mana Potion##13477 |goto Undercity 51.71,74.67 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Alchemy") >= 285 |or
step
use the Recipe: Superior Mana Potion##13477
Train Superior Mana Potion |learn Superior Mana Potion##17553
stickystart "Collect_Blindweed_285"
step
collect 50 Sungrass##8838 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 285 |or
step
label "Collect_Blindweed_285"
collect 50 Blindweed##8839 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 285 |or
step
talk Algernon##4610
buy 25 Crystal Vial##8925 |goto 51.71,74.67 |or
'|complete skill("Alchemy") >= 285 |or
step
Open Your Alchemy Crafting Panel:
_<Create 25 Superior Mana Potions>_
Reach Skill 285 in Alchemy |skill Alchemy,285
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto 60.83,37.85 < 7 |walk
talk Evie Whirlbrew##11188
|tip Inside the building.
buy 25 Crystal Vial##8925 |goto 60.75,37.78 |or
'|complete skill("Alchemy") >= 300 |or
step
talk Evie Whirlbrew##11188
|tip Inside the building.
buy Recipe: Major Healing Potion##13480 |goto 60.75,37.78 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Alchemy") >= 300 |or
step
use the Recipe: Major Healing Potion##13480
Train Major Healing Potion |learn Major Healing Potion##17556 |or
'|complete skill("Alchemy") >= 300 |or
stickystart "Collect_Mountain_Silversage_300"
step
collect 50 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 300 |or
step
label "Collect_Mountain_Silversage_300"
collect 25 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 300 |or
step
Open Your Alchemy Crafting Panel:
_<Create 25 Major Healing Potions>_
Reach Skill 300 in Alchemy |skill Alchemy,300
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Master Alchemy |skillmax Alchemy,375 |goto Hellfire Peninsula/0 52.2,36.4
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Onslaught Elixir |learn Onslaught Elixir##33720 |goto 52.2,36.4
stickystart "Collect_Felweed_315"
step
collect 20 Mountain Silversage##13465 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 315 |or
step
label "Collect_Felweed_315"
collect 20 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 315 |or
step
talk Apothecary Antonivich##16588
|tip Inside the building.
buy 20 Imbued Vial##18256 |goto Hellfire Peninsula/0 52.2,36.4 |or
'|complete skill("Alchemy") >= 315 |or
step
Open Your Alchemy Crafting Panel:
_<Create 15 Onslaught Elixir>_
Reach Skill 315 in Alchemy |skill Alchemy,315
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Elixir of Healing Power |learn Elixir of Healing Power##28545 |goto Hellfire Peninsula/0 52.2,36.4
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 25 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.8,65.8 |or
'|complete skill("Alchemy") >= 330 |or
stickystart "Collect_Dreaming_Glory_330"
step
collect 25 Golden Sansam##13464 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 330 |or
step
label "Collect_Dreaming_Glory_330"
collect 25 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 330 |or
step
Open Your Alchemy Crafting Panel:
_<Create 25 Elixir of Healing Power>_
|tip You may need to create a few more or less of these.
|tip Each one requires another Golden Sansam and Dreaming Glory.
Reach Skill 330 in Alchemy |skill Alchemy,330
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Elixir of Draenic Wisdom |learn Elixir of Draenic Wisdom##39638 |goto Hellfire Peninsula/0 52.2,36.4
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 5 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.8,65.8 |or
'|complete skill("Alchemy") >= 335 |or
stickystart "Collect_Felweed_335"
step
collect 5 Terocone##22789 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 335 |or
step
label "Collect_Felweed_335"
collect 5 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 335 |or
step
Open Your Alchemy Crafting Panel:
_<Create 5 Elixir of Draenic Wisdom>_
Reach Skill 335 in Alchemy |skill Alchemy,335
step
talk Apothecary Antonivich##16588
|tip Inside the building.
Train Super Healing Potion |learn Super Healing Potion##28551 |goto Hellfire Peninsula/0 52.2,36.4
step
talk Alchemist Gribble##18802
|tip Inside the building.
buy 70 Imbued Vial##18256 |goto Hellfire Peninsula/0 53.8,65.8 |or
|tip Save these, you will need them later.
'|complete skill("Alchemy") >= 375 |or
stickystart "Collect_Felweed_340"
step
collect 10 Netherbloom##22791 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 340 |or
step
label "Collect_Felweed_340"
collect 5 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 340 |or
step
Open Your Alchemy Crafting Panel:
_<Create 5 Super Healing Potion>_
Reach Skill 340 in Alchemy |skill Alchemy,340
step
talk Daga Ramba##19837
|tip Inside the building.
buy Recipe: Super Mana Potion##22907 |goto Blade's Edge Mountains/0 51.0,57.8 |or 2
buy Recipe: Major Dreamless Sleep Potion##22911 |goto Blade's Edge Mountains/0 51.0,57.8 |or 2
'|complete skill("Alchemy") >= 375 |or
step
use the Recipe: Super Mana Potion##22907
Learn Super Mana Potion |learn Super Mana Potion##28555
stickystart "Collect_Felweed_355"
step
collect 30 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 355 |or
step
label "Collect_Felweed_355"
collect 15 Felweed##22785 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 355 |or
step
Open Your Alchemy Crafting Panel:
_<Create 15 Super Mana Potion>_
Reach Skill 355 in Alchemy |skill Alchemy,355
step
use the Recipe: Major Dreamless Sleep Potion##22911
Learn Major Dreamless Sleep Potion |learn Major Dreamless Sleep Potion##28562
stickystart "Collect_Nightmare_Vine_375"
step
collect 50 Dreaming Glory##22786 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 375 |or
step
label "Collect_Nightmare_Vine_375"
collect 50 Nightmare Vine##22792 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Alchemy") >= 375 |or
step
Open Your Alchemy Crafting Panel:
_<Create 50 Major Dreamless Sleep Potion>_
|tip You may need to create a few more or less of these.
|tip Each one requires another Nightmare Vine and Dreaming Glory.
Reach Skill 375 in Alchemy |skill Alchemy,375
step
_Congratulations!_
You Reached Skill 375 in Alchemy.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Blacksmithing (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Blacksmithing') > 300 end,
description="This guide will walk you through leveling your Blacksmithing skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 81.56,22.74 < 7 |walk
talk Saru Steelfury##3355
|tip Inside the building.
Train Apprentice Blacksmithing |skillmax Blacksmithing,75 |goto Orgrimmar/0 82.35,22.98
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Blacksmithing |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Blacksmithing") >= 300 |or |next "Begin_Profession_Leveling"
stickystart "Collect_Coarse_Stone_Total"
stickystart "Collect_Copper_Bar_Total"
stickystart "Collect_Silver_Bar_Total"
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Gold_Bar_Total"
step
collect 150 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 65 |or
step
label "Collect_Coarse_Stone_Total"
collect 85 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 100 |or
step
label "Collect_Copper_Bar_Total"
collect 150 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 110 |or
step
label "Collect_Silver_Bar_Total"
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Bronze_Bar_Total"
collect 140 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Heavy_Stone_Total"
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 140 |or
step
label "Collect_Gold_Bar_Total"
collect 5 Gold Bar##3577 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 155 |or
stickystart "Collect_Steel_Bar_Total"
stickystart "Collect_Solid_Stone_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Dense_Stone_Total"
stickystart "Collect_Thorium_Bar_Total"
step
collect 230 Iron Bar##3575 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 190 |or
step
label "Collect_Steel_Bar_Total"
collect 190 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Solid_Stone_Total"
collect 520 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 210 |or
step
label "Collect_Mithril_Bar_Total"
collect 250 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 270 |or
step
label "Collect_Mageweave_Cloth_Total"
collect 60 Mageweave Cloth##4338 |or
|tip Farm them from humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 225 |or
step
label "Collect_Dense_Stone_Total"
collect 20 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 260 |or
step
label "Collect_Thorium_Bar_Total"
collect 432 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Blacksmithing") >= 300 |or
step
talk Tamar##3366
|tip Inside the building.
buy 35 Green Dye##2605 |goto 63.05,45.53 |or
'|complete skill("Blacksmithing") >= 165 |or
step
label "Begin_Profession_Leveling"
talk Sumi##3356
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto 82.59,23.95 |or
|tip Save this, you will need it later.
'|complete skill("Blacksmithing") >= 375 |or
step
collect 40 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 30 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 40 Rough Sharpening Stones>_
|tip You may need to create a few more or less of these.
|tip Each additional Rough Sharpening Stone requires one Rough Stone.
Reach Skill 30 in Blacksmithing |skill Blacksmithing,30
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Grinding Stone |learn Rough Grinding Stone##3320 |goto Orgrimmar/0 82.35,22.98
step
collect 110 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 65 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 55 Rough Grinding Stones>_
|tip You may need to create a few more or less of these.
|tip Each additional Rough Grinding Stone requires two Rough Stone.
|tip Save 10 of these, you will need them later.
Reach Skill 65 in Blacksmithing |skill Blacksmithing,65
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Sharpening Stone |learn Coarse Sharpening Stone##2665 |goto Orgrimmar/0 82.35,22.98
step
collect 25 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 75 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Coarse Sharpening Stone>_
|tip You may need to create a few more or less of these.
|tip Each additional Coarse Sharpening Stone requires one Coarse Stone.
Reach Skill 75 in Blacksmithing |skill Blacksmithing,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Journeyman Blacksmithing |skillmax Blacksmithing,150 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Coarse Grinding Stone |learn Coarse Grinding Stone##3326 |goto Orgrimmar/0 82.35,22.98
step
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 90 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 30 Coarse Grinding Stones>_
collect 30 Coarse Grinding Stone##3478 |or
'|complete skill("Blacksmithing") >= 101 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create Coarse Grinding Stones>_
|tip You may need to create a few more of these.
|tip Each additional Coarse Grinding Stone requires two Coarse Stone.
|tip Save 30 of these, you will need them later.
Reach Skill 90 in Blacksmithing |skill Blacksmithing,90
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Runed Copper Belt |learn Runed Copper Belt##2666 |goto Orgrimmar/0 82.35,22.98
step
collect 100 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 100 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Runed Copper Belts>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 100 in Blacksmithing |skill Blacksmithing,100 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Silver Rod |learn Silver Rod##7818 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Rough_Grinding_Stone_105"
step
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 105 |or
step
label "Collect_Rough_Grinding_Stone_105"
collect 10 Rough Grinding Stone##3470 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 105 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Silver Rods>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 105 in Blacksmithing |skill Blacksmithing,105 |goto Orgrimmar/0 82.35,22.98
step
collect 50 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 110 |or
step
Enter the building |goto 81.62,22.79 < 7 |walk
Open Your Blacksmithing Crafting Panel:
_<Create 5 Runed Copper Belts>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 110 in Blacksmithing |skill Blacksmithing,110 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Rough Bronze Leggings |learn Rough Bronze Leggings##2668 |goto Orgrimmar/0 82.35,22.98
step
collect 90 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 125 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Rough Bronze Leggings>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 125 in Blacksmithing |skill Blacksmithing,125 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Heavy Grinding Stone |learn Heavy Grinding Stone##3337 |goto Orgrimmar/0 82.35,22.98
step
collect 90 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 140 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 30 Heavy Grinding Stones>_
collect 30 Heavy Grinding Stone##3486 |or
'|complete skill("Blacksmithing") >= 151 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create Heavy Grinding Stones>_
|tip You may need to create a few more of these.
|tip Each additional Heavy Grinding Stone requires three Heavy Stone.
|tip Save 30 of these, you will need them later.
Reach Skill 140 in Blacksmithing |skill Blacksmithing,140
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Patterned Bronze Bracers |learn Patterned Bronze Bracers##2672 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Coarse_Grinding_Stone_150"
step
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 150 |or
step
label "Collect_Coarse_Grinding_Stone_150"
collect 20 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 150 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Patterned Bronze Bracers>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 150 in Blacksmithing |skill Blacksmithing,150 |goto Orgrimmar/0 82.35,22.98
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Expert Blacksmithing |skillmax Blacksmithing,225 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Golden Rod |learn Golden Rod##14379 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Coarse_Grinding_Stone_155"
step
collect 5 Gold Bar##3577 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 155 |or
step
label "Collect_Coarse_Grinding_Stone_155"
collect 10 Coarse Grinding Stone##3478 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 155 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Golden Rods>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 155 in Blacksmithing |skill Blacksmithing,155 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Green Iron Leggings |learn Green Iron Leggings##3506 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Heavy_Grinding_Stone_165"
step
collect 80 Iron Bar##3575 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 165 |or
step
label "Collect_Heavy_Grinding_Stone_165"
collect 10 Heavy Grinding Stone##3486 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 165 |or
step
talk Tamar##3366
|tip Inside the building.
buy 35 Green Dye##2605 |goto 63.05,45.53 |or
'|complete skill("Blacksmithing") >= 165 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Green Iron Leggings>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 165 in Blacksmithing |skill Blacksmithing,165 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Green Iron Bracers |learn Green Iron Bracers##3501 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Green_Dye_190"
step
collect 150 Iron Bar##3575 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 190 |or
step
label "Collect_Green_Dye_190"
collect 25 Green Dye##2605
|tip You purchased these in a previous step.
'|complete skill("Blacksmithing") >= 190 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Green Iron Bracers>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 190 in Blacksmithing |skill Blacksmithing,190 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Golden Scale Bracers |learn Golden Scale Bracers##7223 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Heavy_Grinding_Stone_200"
step
collect 50 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 200 |or
step
label "Collect_Heavy_Grinding_Stone_200"
collect 20 Heavy Grinding Stone##3486 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 200 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Golden Scale Bracers>_
|tip Stand next to an anvil.
|tip Inside the building.
|tip If you intend to choose the Armorsmith specialization, keep 6 of these.
Reach Skill 200 in Blacksmithing |skill Blacksmithing,200 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Solid Grinding Stone |learn Solid Grinding Stone##9920 |goto Orgrimmar/0 82.35,22.98
step
collect 520 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 210 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 130 Solid Grinding Stones>_
|tip Save these, you will need them later.
collect 130 Solid Grinding Stone##7966 |or
'|complete skill("Blacksmithing") >= 225 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create Solid Grinding Stones>_
|tip You may need to make a few more of these.
|tip Each additional Solid Grinding Stone requires four Solid Stone.
|tip Save 130 these, you will need them later.
Reach Skill 210 in Blacksmithing |skill Blacksmithing,210
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Heavy Mithril Gauntlet |learn Heavy Mithril Gauntlet##9928 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Mageweave_Cloth_225"
step
collect 90 Mithril Bar##3860 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 225 |or
step
label "Collect_Mageweave_Cloth_225"
collect 60 Mageweave Cloth##4338 |or
|tip Farm them from humanoid mobs or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 225 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Heavy Mithril Gauntlets>_
|tip Stand next to an anvil.
|tip Inside the building.
Reach Skill 225 in Blacksmithing |skill Blacksmithing,225 |goto Orgrimmar/0 82.35,22.98
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Artisan Blacksmithing |skillmax Blacksmithing,300 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Steel Plate Helm |learn Steel Plate Helm##9935 |goto Orgrimmar/0 82.35,22.98
stickystart "Collect_Solid_Grinding_Stone_235"
step
collect 140 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 235 |or
step
label "Collect_Solid_Grinding_Stone_235"
collect 10 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 235 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 10 Steel Plate Helms>_
|tip Stand next to an anvil.
|tip Inside the building.
|tip If you intend to choose the Armorsmith specialization, keep 4 of these.
Reach Skill 235 in Blacksmithing |skill Blacksmithing,235 |goto Orgrimmar/0 82.35,22.98
step
collect Plans: Mithril Spurs##7989 |or
|tip Purchase this from the auction house.
'|complete skill("Blacksmithing") >= 255 |or
step
use the Plans: Mithril Spurs##7989
Learn Mithril Spurs |learn Mithril Spurs##9964
stickystart "Collect_Solid_Grinding_Stone_250"
step
collect 80 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 250 |or
step
label "Collect_Solid_Grinding_Stone_250"
collect 60 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 250 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Mithril Spurs>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each addtional Mithril Spur requires four Mithril Bars and three Solid Grinding Stones.
|tip Solid Grinding Stones require four Solid Stone.
Reach Skill 250 in Blacksmithing |skill Blacksmithing,250 |goto Orgrimmar/0 82.35,22.98
step
talk Saru Steelfury##3355
|tip Inside the building.
Train Dense Sharpening Stone |learn Dense Sharpening Stone##16641 |goto Orgrimmar/0 82.35,22.98
step
collect 20 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 260 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Dense Sharpening Stones>_
|tip You may need to create a few more or less of these.
|tip Each addtional Dense Sharpening Stone requires one Dense Stone.
Reach Skill 260 in Blacksmithing |skill Blacksmithing,260
stickystart "Collect_Solid_Grinding_Stone_270"
step
collect 80 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 270 |or
step
label "Collect_Solid_Grinding_Stone_270"
collect 60 Solid Grinding Stone##7966 |or
|tip You created these in a previous step.
'|complete skill("Blacksmithing") >= 270 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 20 Mithril Spurs>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each addtional Mithril Spur requires four Mithril Bars and three Solid Grinding Stones.
|tip Solid Grinding Stones require four Solid Stone.
Reach Skill 270 in Blacksmithing |skill Blacksmithing,270 |goto Orgrimmar/0 82.35,22.98
step
Reach Level 50 |ding 50
|tip You must be at least this level before you can accept the next quests.
|tip Use the leveling guides to accomplish this.
step
collect 322 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need 10 for a quest, and at least 312 for the the next recipe.
'|complete skill("Blacksmithing") >= 295 |or
step
talk Derotain Mudsipper##14567
accept A Blue Light Bargain##7652 |goto Tanaris 51.38,28.67
step
talk Derotain Mudsipper##14567
accept Imperial Plate Bracer##7655 |goto 51.38,28.67
step
collect 10 Thorium Bar##12359 |q 7655/1
|tip You collected these in a previous step.
step
talk Derotain Mudsipper##14567
turnin Imperial Plate Bracer##7655 |goto 51.38,28.67
step
use the Plans: Imperial Plate Bracers##12690
Learn Imperial Plate Bracers |learn Imperial Plate Bracers##16649
step
collect 312 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 295 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 26 Imperial Plate Bracers>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Imperial Plate Bracer requires twelve Thorium Bars.
Reach Skill 295 in Blacksmithing |skill Blacksmithing,295 |goto 51.39,28.71
step
collect 140 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
|tip You will need 50 for quests, and at least 90 for the the next recipe.
'|complete skill("Blacksmithing") >= 300 |or
step
talk Derotain Mudsipper##14567
accept Imperial Plate Boots##7654 |goto 51.38,28.67
accept Imperial Plate Chest##7656 |goto 51.38,28.67
stickystart "Collect_Thorium_Bar_7656"
step
collect 20 Thorium Bar##12359 |q 7654/1
|tip You collected these in a previous step.
step
label "Collect_Thorium_Bar_7656"
collect 30 Thorium Bar##12359 |q 7656/1
|tip You collected these in a previous step.
step
talk Derotain Mudsipper##14567
turnin Imperial Plate Boots##7654 |goto 51.38,28.67
turnin Imperial Plate Chest##7656 |goto 51.38,28.67
step
use the Plans: Imperial Plate Boots##12700
Learn Imperial Plate Boots |learn Imperial Plate Boots##16657
step
collect 90 Thorium Bar##12359 |or
|tip You collected these in a previous step.
'|complete skill("Blacksmithing") >= 300 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Imperial Plate Boots>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Imperial Plate Boots requires eighteen Thorium Bars.
Reach Skill 300 in Blacksmithing |skill Blacksmithing,300 |goto 51.39,28.71
step
use the Plans: Imperial Plate Chest##12705
Learn Imperial Plate Chest |learn Imperial Plate Chest##16663
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Rohok##16583
Train Master Blacksmithing |skillmax Blacksmithing,375 |goto Hellfire Peninsula/0 53.13,38.15
step
talk Rohok##16583
Train Fel Weightstone |learn Fel Weightstone##34607 |goto 53.13,38.15
step
Click Here to Start with Thorium Bars |confirm |or
|tip You will need 588 Thorium Bars.
_Or_
Click Here to Start with Fel Iron Bars |confirm |next "Start_with_Fel_Iron_Bars" |or
|tip You will need 100 extra Fel Iron Bars.
'|complete skill("Blacksmithing") >= 316 |next "Start_with_Fel_Iron_Bars" |or
step
collect 288 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 316 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 16 Imperial Plate Boots>_
|tip Stand next to an anvil.
Reach Skill 316 in Blacksmithing |skill Blacksmithing,316 |goto 53.07,38.05
step
collect 300 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 325 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 15 Imperial Plate Chests>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Imperial Plate Chest requires twenty Thorium Bars.
Reach Skill 325 in Blacksmithing |skill Blacksmithing,325 |goto 53.07,38.05
stickystart "Collect_Netherweave_Cloth_305"
step
label "Start_with_Fel_Iron_Bars"
collect 7 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 305 |or
step
label "Collect_Netherweave_Cloth_305"
collect 7 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 305 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Fel Weightstones>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Fel Weightstone requires one Fel Iron Bar and one Netherweave Cloth.
Reach Skill 305 in Blacksmithing |skill Blacksmithing,305 |goto 53.07,38.05
step
talk Rohok##16583
Train Fel Iron Plate Belt |learn Fel Iron Plate Belt##29547 |goto 53.13,38.15
step
collect 44 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 316 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 11 Fel Iron Plate Belts>_
|tip Stand next to an anvil.
Reach Skill 316 in Blacksmithing |skill Blacksmithing,316 |goto 53.07,38.05
step
talk Rohok##16583
Train Fel Iron Chain Gloves |learn Fel Iron Chain Gloves##29552 |goto 53.13,38.15
step
collect 25 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 321 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Fel Iron Chain Gloves>_
|tip Stand next to an anvil.
Reach Skill 321 in Blacksmithing |skill Blacksmithing,321 |goto 53.07,38.05
step
talk Rohok##16583
Train Fel Iron Plate Boots |learn Fel Iron Plate Boots##29548 |goto 53.13,38.15
step
collect 24 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 325 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 5 Fel Iron Plate Boots>_
|tip Stand next to an anvil.
Reach Skill 325 in Blacksmithing |skill Blacksmithing,325 |goto 53.07,38.05
step
talk Rohok##16583
Train Lesser Rune of Warding |learn Lesser Rune of Warding##32284 |goto 53.13,38.15
step
collect 25 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 335 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Lesser Runes of Warding>_
|tip You may need to create a few more or less of these.
|tip Each additional Rune of Warding requires one Adamantite Bar.
Reach Skill 335 in Blacksmithing |skill Blacksmithing,335
step
talk Rohok##16583
Train Fel Iron Chain Tunic |learn Fel Iron Chain Tunic##29556 |goto 53.13,38.15
step
collect 63 Fel Iron Bar##23445 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 340 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Fel Iron Chain Tunics>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Fel Iron Chain Tunic requires nine Fel Iron Bars.
Reach Skill 340 in Blacksmithing |skill Blacksmithing,340 |goto 53.07,38.05
step
talk Rohok##16583
buy 1 Plans: Lesser Ward of Shielding##23638 |goto 53.13,38.15 |or
|tip This is a limited supply item that can also be purchased from the auction house.
|tip If it is sold out it should restock in about 15-60 minutes.
'|complete skill("Blacksmithing") >= 350 |or
step
use the Plans: Lesser Ward of Shielding##23638
Learn Lesser Ward of Shielding |learn Lesser Ward of Shielding##29728
step
collect 25 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 350 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Lesser Wards of Shielding>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Lesser Ward of Shielding requires one Adamantite Bar.
Reach Skill 350 in Blacksmithing |skill Blacksmithing,350 |goto 53.07,38.05
step
talk Fedryen Swiftspear##17904
buy 1 Plans: Adamantite Weightstone##28632 |goto Zangarmarsh/0 79.26,63.68 |or
'|complete skill("Blacksmithing") >= 360 |or
step
use the Plans: Adamantite Weightstone##28632
Learn Adamantite Weightstone |learn Adamantite Weightstone##34608
stickystart "Collect_Netherweave_Cloth_360"
step
collect 25 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 360 |or
step
label "Collect_Netherweave_Cloth_360"
collect 50 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 360 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 25 Adamantite Weightstone>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Adamantite Weightstone requires one Adamantite Bar and two Netherweave Cloth.
Reach Skill 360 in Blacksmithing |skill Blacksmithing,360 |goto Hellfire Peninsula/0 53.07,38.05
step
How would you like to finish?
Click Here to Finish with a Dungeon Recipe |confirm |next "Level_with_Felsteel_Gloves" |or
|tip This requires farming "Plans: Felsteel Gloves" from Auchenai Monks in Auchenai Crypts.
|tip This has a respectable drop rate and shouldn't be too difficult to acquire.
|tip This recipe requires approximately 102 Felsteel Bars to reach 375.
_Or_
Click Here to Finish with Aldor or Scryers Reputation |confirm |or
|tip Scryers is usually considered to be cheaper, but it varies from server to server.
|tip Honored reputation is required for Aldor, while Friendly is required for Scryers.
|tip Scryers requires approximately 34 Hardened Adamantite Bars, 136 Arcane Dust, and 34 Prismatic Shards.
|tip Aldor requires approximately 136 Fel Iron Bars, 68 Primal Water, and 68 Primal Fire.
'|complete skill("Blacksmithing") >= 375 |next "Level_with_Felsteel_Gloves" |or
step
talk Haggard War Veteran##19684
accept A'dal##10210 |goto Shattrath City/0 59.67,41.44 |or
'|complete skill("Blacksmithing") >= 375 |or
step
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71 |or
'|complete skill("Blacksmithing") >= 375 |or
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32 |or
'|complete skill("Blacksmithing") >= 375 |or
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip Stay very close to it or you will fail the quest.
|tip He eventually walks to this location.
|tip This escort quest takes 8-10 minutes.
Tour the City of Light |q 10211/1 |goto 50.36,42.98 |or
'|complete skill("Blacksmithing") >= 375 |or
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32 |or
'|complete skill("Blacksmithing") >= 375 |or
step
talk Archmage Khadgar##18166
Pledge Allegiance to the Aldor |complete completedq(10551) |goto 54.76,44.32 |or
|tip Accept the "Allegiance to the Aldor" quest.
|tip You will become aligned with the Aldor faction by completing this quest.
_Or_
Pledge Allegiance to the Scryers |complete completedq(10552) |next "Scryers_Allegiance" |goto 54.76,44.32 |or
|tip Accept the "Allegiance to the Scryers" quest.
|tip You will become aligned with the Scryers faction by completing this quest. |or
'|complete skill("Blacksmithing") >= 375 |next "Level_with_Felsteel_Gloves" |or
stickystart "Collect_Aldor_Reputation_Items"
stickystart "Reach_Honored_With_Aldor"
step
label "Aldor_Allegiance"
talk Adyen the Lightwarden##18537
|tip Inside the building.
accept Single Mark of Sargeras##10655 |goto 30.75,34.61 |only if itemcount(30809) < 10
accept Marks of Sargeras##10653 |goto 30.75,34.61 |only if itemcount(30809) >= 10 and not completedq(10653)
accept More Marks of Sargeras##10654 |goto 30.75,34.61 |only if itemcount(30809) >= 10 and completedq(10653)
|tip
Click Here to Turn in Fel Armaments |confirm |or
'|complete rep('The Aldor') >= Honored or skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
step
talk Ishanah##18538
|tip Inside the building.
accept Fel Armaments##10421
|tip
Click Here to Turn in Marks of Sargeras |confirm |next "Aldor_Allegiance" |or
'|complete rep('The Aldor') >= Honored or skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
step
label "Collect_Aldor_Reputation_Items"
collect Mark of Sargeras##30809 |n
|tip Farm these from demon enemies in Outland zones and dungeons.
|tip Death's Door in Blade's Edge Mountains is a good farming spot.
|tip Ten are required to exchange for 250 Aldor reputation.
collect Fel Armament##29740 |n
|tip Farm these from demon enemies in Outland zones and dungeons.
|tip Legion Hold in Shadowmoon Valley and the Shadow Labyrinth dungeon are good farming spots.
|tip Ten are required to exchange for 350 Aldor reputation.
'|complete rep('The Aldor') >= Honored or skill("Blacksmithing") >= 375
|only if completedq(10551)
step
label "Reach_Honored_With_Aldor"
Reach Honored Reputation with The Aldor |complete rep('The Aldor') >= Honored or skill("Blacksmithing") >= 375 |goto 30.75,34.61
|only if completedq(10551)
step
Enter the building |goto 49.37,30.74 < 10 |walk
talk Quartermaster Endarin##19321
|tip Inside the building.
buy 1 Plans: Flamebane Gloves##23603 |goto 47.69,25.72 |or
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
step
use the Plans: Flamebane Gloves##23603
Learn Flamebane Gloves |learn Flamebane Gloves##29616 |or
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
stickystart "Collect_Primal_Water_375"
stickystart "Collect_Primal_Fire_375"
step
collect 136 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
step
label "Collect_Primal_Water_375"
collect 68 Primal Water##21885 |or
|tip Farm them with Mining, from Outland water elementals, or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
step
label "Collect_Primal_Fire_375"
collect 68 Primal Fire##21884 |or
|tip Farm them with Mining, from Outland fire elementals, or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10551)
stickystart "Collect_Scryers_Reputation_Items"
stickystart "Reach_Friendly_With_Scryers"
step
label "Scryers_Allegiance"
talk Magistrix Fyalenn##18531
|tip Inside the building.
accept Single Sunfury Signet##10659 |goto 45.19,81.45 |only if itemcount(30810) < 10
accept Sunfury Signets##10656 |goto 45.19,81.45 |only if itemcount(30810) >= 10 and not completedq(10656)
accept More Sunfury Signets##10658 |goto 45.19,81.45 |only if itemcount(30810) >= 10 and completedq(10656)
|tip
Click Here to Turn in Arcane Tomes |confirm |or
'|complete rep('The Scryers') >= Friendly or skill("Blacksmithing") >= 375 |or
|only if completedq(10552)
step
talk Voren'thal the Seer##18530
|tip Inside the building.
accept Arcane Tomes##10419
Click here to turn in Sunfury Signets |confirm |next "Scryers_Allegiance" |or
'|complete rep('The Scryers') >= Friendly or skill("Blacksmithing") >= 375 |or
|only if completedq(10552)
step
label "Collect_Scryers_Reputation_Items"
collect Sunfury Signet##30810 |n
|tip Farm these from Outland Elf enemies in Outland zones and dungeons.
|tip Eclipse Point in Shadowmoon Valley is a good farming spot.
|tip Ten are required to exchange for 250 Scryers reputation.
collect Arcane Tome##29739 |n
|tip Farm these from Outland Elf in Outland zones and dungeons.
|tip Eclipse Point in Shadowmoon Valley is a good farming spot.
|tip Ten are required to exchange for 350 Scryers reputation.
'|complete rep('The Scryers') >= Friendly or skill("Blacksmithing") >= 375
|only if completedq(10552)
step
label "Reach_Friendly_With_Scryers"
Reach Friendly Reputation with The Scryers |complete rep('The Scryers') >= Friendly or skill("Blacksmithing") >= 375 |goto 45.19,81.45
|only if completedq(10552)
step
Enter the building |goto 58.90,59.55 < 10 |walk
talk Quartermaster Enuril##19331
|tip Inside the building.
buy 1 Plans: Enchanted Adamantite Belt##23597 |goto 60.51,64.35 |or
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10552)
step
use the Plans: Enchanted Adamantite Belt##23597
Learn Enchanted Adamantite Belt |learn Enchanted Adamantite Belt##29608
|only if completedq(10552)
stickystart "Collect_Arcane_Dust_375"
stickystart "Collect_Arcane_Dust_375"
step
collect 34 Hardened Adamantite Bar##23573 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10552)
step
label "Collect_Arcane_Dust_375"
collect 136 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10552)
step
label "Collect_Large_Prismatic_Shard_375"
collect 34 Large Prismatic Shard##22449 |or
|tip Disenchant them from Outland rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
|only if completedq(10552)
step
label "Reputation_375_Create"
Open Your Blacksmithing Crafting Panel:
_<Create 17 Flamebane Gloves>_ |only if completedq(10551)
_<Create 17 Enchanted Adamantite Belts>_ |only if completedq(10552)
|tip Stand next to an anvil.
|tip You may need to make a few more or less of these.
|tip Each additional Flamebane Glove requires eight Fel Iron Bars, four Primal Water, and four Primal Fire. |only if completedq(10551)
|tip Each additional Enchanted Adamantite Belt requires two Hardened Adamantite Bars, eight Arcane Dust, and two Large Prismatic Shards. |only if completedq(10552)
Reach Skill 375 in Blacksmithing |skill Blacksmithing,375 |goto 69.35,42.90
step
label "Level_with_Felsteel_Gloves"
kill Auchenai Monk##18497+
|tip Inside the Auchenai Crypts dungeon.
collect Plans: Felsteel Gloves##23605 |or
|tip This will not drop unless there is a Blacksmith in the group.
|tip It is Bind on Pickup and cannot be traded.
'|complete skill("Blacksmithing") >= 375 |or
step
use the Plans: Felsteel Gloves##23605
Learn Felsteel Gloves |learn Felsteel Gloves##29619 |or
'|complete skill("Blacksmithing") >= 375 |or
step
collect 102 Felsteel Bar##23448 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Blacksmithing") >= 375 |or
step
Open Your Blacksmithing Crafting Panel:
_<Create 17 Felsteel Gloves>_
|tip Stand next to an anvil.
|tip You may need to make a few more or less of these.
|tip Each additional Felsteel Gloves requires six Felsteel Bars.
Reach Skill 375 in Blacksmithing |skill Blacksmithing,375 |goto 69.35,42.90
step
_Congratulations!_
You Reached Skill 375 in Blacksmithing.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Cooking') > 0 end,
description="This guide will walk you through leveling your Cooking skill from 1-300.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Zamja##3399
|tip Inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Orgrimmar 57.40,53.96
step
collect 55 Chunk of Boar Meat##769 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 50 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 55 Roasted Boar Meat>_
Reach Skill 50 in Cooking |skill Cooking,50 |goto Orgrimmar 57.20,53.32
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Zamja##3399
|tip Inside the building.
Train Journeyman Cooking |skillmax Cooking,150 |goto Orgrimmar 57.40,53.96
step
Run down the stairs |goto Silverpine Forest 43.09,41.39 < 5 |walk
talk Andrew Hilbert##3556
|tip Downstairs inside the crypt.
buy Recipe: Smoked Bear Meat##6892 |n
use the Recipe: Smoked Bear Meat##6892
Train Smoked Bear Meat |learn Smoked Bear Meat##8607 |goto Silverpine Forest 43.22,40.66
step
collect 30 Bear Meat##3173 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 80 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 30 Smoked Bear Meat>_
Reach Skill 80 in Cooking |skill Cooking,80 |goto Orgrimmar 57.20,53.32
step
talk Zamja##3399
|tip Inside the building.
Train Boiled Clams |learn Boiled Clams##6499 |goto 57.40,53.96
step
_Collect These Items:_
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 40 Clam Meat##5503 |or
'|complete skill("Cooking") >= 110 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Xen'to##3400
|tip Inside the building.
buy 40 Refreshing Spring Water##159 |goto Orgrimmar 57.57,52.90
'|complete skill("Cooking") >= 110 |or
step
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 40 Boiled Clams>_
Reach Skill 110 in Cooking |skill Cooking,110 |goto Orgrimmar 57.20,53.32
step
talk Zamja##3399
|tip Inside the building.
Train Crab Cake |learn Crab Cake##2544 |goto 57.40,53.96
step
_Collect These Items:_
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 30 Crawler Meat##2674 |or
'|complete skill("Cooking") >= 130 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Xen'to##3400
|tip Inside the building.
buy 30 Mild Spice##2678 |goto Orgrimmar 57.57,52.90
'|complete skill("Cooking") >= 130 |or
step
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 30 Crab Cakes>_
Reach Skill 130 in Cooking |skill Cooking,130 |goto 57.20,53.32
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Wulan##12033
|tip Upstairs inside the building.
buy Expert Cookbook##16072 |n
use the Expert Cookbook##16072
Train Expert Cook |skillmax Cooking,225 |goto Desolace 26.17,69.65
step
talk Nerrist##1148
buy Recipe: Curiously Tasty Omelet##3682 |n
use the Recipe: Curiously Tasty Omelet##3682
Train Curiously Tasty Omelet |learn Curiously Tasty Omelet##3376 |goto Stranglethorn Vale 32.70,29.23
step
collect 50 Raptor Egg##3685 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 175 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Xen'to##3400
|tip Inside the building.
buy 50 Hot Spices##2692 |goto Orgrimmar 57.57,52.90
'|complete skill("Cooking") >= 175 |or
step
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 50 Curiously Tasty Omelets>_
Reach Skill 175 in Cooking |skill Cooking,175 |goto 57.20,53.32
step
talk Nerrist##1148
buy Recipe: Roast Raptor##12228 |n
use the Recipe: Roast Raptor##12228
Train Roast Raptor |learn Roast Raptor##15855 |goto Stranglethorn Vale 32.70,29.23
step
collect 60 Raptor Flesh##12184 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 225 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Xen'to##3400
|tip Inside the building.
buy 60 Hot Spices##2692 |goto Orgrimmar 57.57,52.90
'|complete skill("Cooking") >= 225 |or
step
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 60 Roast Raptors>_
Reach Skill 225 in Cooking |skill Cooking,225 |goto 57.20,53.32
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
talk Zamja##3399
|tip Inside the building.
accept To Gadgetzan You Go!##6611 |goto Orgrimmar 57.40,53.96
step
Enter the building |goto Thousand Needles 45.94,51.07 < 7 |walk
talk Innkeeper Abeqwa##11116
|tip Inside the building.
buy 20 Alterac Swiss##8932 |goto 46.07,51.52 |q 6610 |future
|tip It may be cheaper on the Auction House.
step
Enter the building |goto Tanaris 52.38,27.91 < 5 |walk
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin To Gadgetzan You Go!##6611 |goto Tanaris 52.63,28.11
accept Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
stickystart "Collect_12_Giant_Eggs"
step
kill Steeljaw Snapper##14123+
|tip They look like turtles.
collect Big-mouth Clam##7973+ |n
use the Big-mouth Clam##7973+
collect 10 Zesty Clam Meat##7974 |q 6610/2 |goto 67.75,22.96 |or
|tip You can also purchase them from the Auction House.
You can find more around:
[67.09,18.71]
[67.51,26.30]
[67.68,29.49]
step
label "Collect_12_Giant_Eggs"
map The Hinterlands
path	follow smart;	loop on;	ants curved;	dist 30
path	44.80,59.32	47.13,56.54	50.76,57.53	55.91,52.30	59.36,53.56
path	62.11,54.23	61.51,46.51	57.53,46.76	51.91,41.76	47.07,45.83
path	41.96,47.60	44.40,54.54
Kill Owlbeast enemies
|tip Follow the path and kill them as you find them.
collect 12 Giant Egg##12207 |q 6610/1 |or
|tip You can also purchase them from the Auction House.
step
Enter the building |goto Tanaris 52.38,27.91 < 5 |walk
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin Clamlette Surprise##6610 |goto 52.63,28.11
Train Artisan Cook |skillmax Cooking,300 |goto 52.63,28.11
step
|tip You will learn this automatically.
step
Enter the building |goto Winterspring 61.32,38.72 < 5 |walk
talk Himmik##11187
|tip Inside the building.
buy Recipe: Monster Omelet##16110 |n
use the Recipe: Monster Omelet##16110
Train Monster Omelet |learn Monster Omelet##15933 |goto Winterspring 61.33,39.16
step
Leave the building |goto 61.32,38.72 < 5 |walk
Enter the building |goto 61.33,37.36 < 5 |walk
talk Qia##11189
|tip Inside the building.
buy 120 Soothing Spices##3713 |goto 61.20,37.21
'|complete skill("Cooking") >= 275	 |or
step
map The Hinterlands
path	follow smart;	loop on;	ants curved;	dist 30
path	44.80,59.32	47.13,56.54	50.76,57.53	55.91,52.30	59.36,53.56
path	62.11,54.23	61.51,46.51	57.53,46.76	51.91,41.76	47.07,45.83
path	41.96,47.60	44.40,54.54
Kill Owlbeast enemies along this path
collect 60 Giant Egg##12207 |or
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 275 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 60 Monster Omelets>_
Reach Skill 275 in Cooking |skill Cooking,275 |goto Orgrimmar 57.20,53.32
step
Follow the path |goto Tanaris 61.03,26.14 < 50 |only if walking
Enter the building |goto Tanaris 66.66,22.20 < 5 |walk
talk Gikkix##8137
|tip Inside the building.
buy Recipe: Poached Sunscale Salmon##13946 |n
use the Recipe: Poached Sunscale Salmon##13946
Train Poached Sunscale Salmon |learn Poached Sunscale Salmon##18244 |goto Tanaris 66.64,22.08
step
collect 35 Raw Sunscale Salmon##13760 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("Cooking") >= 300 |or
step
Run up the stairs |goto Orgrimmar 56.34,56.91 < 7 |only if walking
Enter the building |goto Orgrimmar 58.14,53.56 < 7 |walk
Open Your Cooking Crafting Panel:
|tip Stand next to the Mighty Blaze.
|tip Inside the building.
_<Create 35 Poached Sunscale Salmon>_
Reach Skill 300 in Cooking |skill Cooking,300 |goto Orgrimmar 57.20,53.32
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking + Fishing (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return (skill('Cooking') > 0) or (skill('Fishing') > 0) end,
description="This guide will walk you through leveling both your Cooking and Fishing skills from 1-300, together.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
talk Harn Longcast##5940
buy Fishing Pole##6256 |goto Mulgore 47.51,55.06
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Harn Longcast##5940
buy 10 Shiny Bauble##6529 |goto 47.51,55.06
'|complete skill("Fishing") >= 75 |or
step
talk Uthan Stillwater##5938
Train Apprentice Fishing |skillmax Fishing,75 |goto 44.51,60.66
step
Fish in the Water
|tip Use the "Fishing" skill in your spell book.
|tip Equip the Fishing Pole in your bags.
|tip Save the fish you catch, to cook later.
use the Shiny Bauble##6529+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 75 in Fishing |skill Fishing,75 |goto 44.49,61.24
step
talk Uthan Stillwater##5938
Train Journeyman Fishing |skillmax Fishing,150 |goto 44.51,60.66
step
Enter the building |goto Mulgore 46.32,58.69 < 7 |walk
talk Pyall Silentstride##3067
|tip Inside the building.
Train Apprentice Cooking |skillmax Cooking,75 |goto Mulgore 45.41,58.11
step
Leave the building |goto 46.32,58.69 < 7 |walk
talk Harn Longcast##5940
buy Recipe: Brilliant Smallfish##6325 |n
use the Recipe: Brilliant Smallfish##6325
Train Brilliant Smallfish |learn Brilliant Smallfish##7751 |goto 47.51,55.06
step
talk Harn Longcast##5940
buy Recipe: Longjaw Mud Snapper##6328 |goto 47.51,55.06
|tip Save this for later.
step
Fish in the Water
use the Shiny Bauble##6529+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 130 in Fishing |skill Fishing,130 |goto Thunder Bluff 41.47,57.15
collect 55 Raw Brilliant Smallfish##6291 |goto Thunder Bluff 41.47,57.15 |or
'|complete skill("Cooking") >= 50 |or
step
label "Collect_Raw_Longjaw_Mud_Snapper_"
collect 60 Raw Longjaw Mud Snapper##6289 |goto Thunder Bluff 41.47,57.15 |or
'|complete skill("Cooking") >= 100 |or
step
talk Naal Mistrunner##3027
buy Recipe: Bristle Whisker Catfish##6330 |goto 50.99,52.45
|tip Save this for later.
'|complete skill("Cooking") >= 175 |or
step
Open Your Cooking Crafting Panel:
|tip Stand next to the Boiling Cauldron.
_<Create 55 Brilliant Smallfish>_
Reach Skill 50 in Cooking |skill Cooking,50 |goto 51.39,53.25
step
use the Recipe: Longjaw Mud Snapper##6328
|tip You should have this from earlier in the guide.
Train Longjaw Mud Snapper |learn Longjaw Mud Snapper##7753
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Aska Mistrunner##3026
Train Journeyman Cooking |skillmax Cooking,150 |goto 50.72,53.11
step
Open Your Cooking Crafting Panel:
|tip Stand next to the Boiling Cauldron.
_<Create 60 Longjaw Mud Snappers>_
Reach Skill 100 in Cooking |skill Cooking,100 |goto 51.39,53.25
step
use the Recipe: Bristle Whisker Catfish##6330
Train Bristle Whisker Catfish |learn Bristle Whisker Catfish##7755
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
Run down the ramp |goto Stranglethorn Vale 28.04,76.53 < 7 |only if walking
Enter the building |goto Stranglethorn Vale 27.47,77.09 < 5 |walk
talk Old Man Heming##2626
|tip Inside the building.
buy Expert Fishing - The Bass and You##16083 |n
use Expert Fishing - The Bass and You##16083
Train Expert Fishing |skillmax Fishing,225 |goto Stranglethorn Vale 27.42,77.16
step
talk Old Man Heming##2626
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto 27.42,77.16
'|complete skill("Fishing") >= 225 |or
step
Enter the building |goto 28.11,74.99 < 10 |walk
talk Kelsey Yance##2664
|tip Inside the building.
buy Recipe: Mithril Head Trout##17062 |goto 28.23,74.34
buy Recipe: Filet of Redgill##13941 |goto 28.23,74.34
|tip Save these for later.
step
Enter the building |goto Stonetalon Mountains 46.47,59.31 < 7 |only if walking
talk Grawnal##4082
|tip Inside the building.
buy Flint and Tinder##4471 |goto Stonetalon Mountains 45.88,58.66 |only if itemcount(4471) < 1
|tip You need to have Flint and Tinder in your bags to be able to create Basic Campfires to cook with.
buy 10 Simple Wood##4470 |goto Stonetalon Mountains 45.88,58.66 |only if itemcount(4470) < 15 and skill("Cooking") < 300
|tip You will use one of these each time you create a Basic Campfire to cook with.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 205 in Fishing |skill Fishing,205 |goto 46.34,61.25
collect 150 Raw Bristle Whisker Catfish##6308 |goto 46.34,61.25 |or
'|complete skill("Cooking") >= 175 |or
step
_Create a Basic Campfire_
|tip Use the "Basic Campfire" skill in your spell book.
Open Your Cooking Crafting Panel:
|tip Stand next to the Basic Campfire.
_<Create 25 Bristle Whisker Catfish>_
Reach Skill 125 in Cooking |skill Cooking,125 |goto 46.32,60.85
step
talk Wulan##12033
|tip Upstairs inside the building.
buy Expert Cookbook##16072 |n
use the Expert Cookbook##16072
Train Expert Cooking |skillmax Cooking,225 |goto Desolace 26.17,69.65
step
_Create a Basic Campfire_
|tip Use the "Basic Campfire" skill in your spell book.
Open Your Cooking Crafting Panel:
|tip Stand next to the Basic Campfire.
_<Create 125 Bristle Whisker Catfish>_
Reach Skill 175 in Cooking |skill Cooking,175 |goto 25.52,70.11
step
use the Recipe: Mithril Head Trout##17062
Train Mithril Head Trout |learn Mithril Head Trout##20916
step
Enter the building |goto 24.54,68.64 < 7 |walk
talk Innkeeper Sikewa##11106
|tip Inside the building.
buy 20 Alterac Swiss##8932 |goto 24.09,68.21 |q 6610 |future
|tip It may be cheaper on the Auction House.
|tip Save these for later.
step
Fish in the Water
|tip Save any Raw Mithril Head Trout you catch.
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 225 in Fishing |skill Fishing,225 |goto Dustwallow Marsh 38.08,31.99
step
Reach Level 35 |ding 35
|tip You must be at least this level before you can accept the quest in the next step.
|tip Use the leveling guides to accomplish this.
step
Follow the path down |goto 52.55,62.35 < 15 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
accept Nat Pagle, Angler Extreme##6607 |goto 58.55,60.21
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Feralas Ahi##16967 |q 6607/1 |goto Feralas 62.38,52.50 |or
|tip You will eventually catch one.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Sar'theris Striker##16968 |q 6607/3 |goto Desolace 26.19,75.50 |or
|tip You will eventually catch one.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Misty Reed Mahi Mahi##16970 |q 6607/2 |goto Swamp of Sorrows 90.45,73.47 |or
|tip You will eventually catch one.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Savage Coast Blue Sailfin##16969 |q 6607/4 |goto Stranglethorn Vale 29.69,28.37 |or
|tip You will eventually catch one.
step
Follow the path down |goto Dustwallow Marsh 52.55,62.35 < 15 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.55,60.21
Train Artisan Fishing |skillmax Fishing,300 |goto Dustwallow Marsh 58.55,60.21
|tip You will learn this automatically.
step
Follow the path up |goto 53.42,63.96 < 15 |only if walking
Fish in the Water
|tip Save any Raw Mithril Head Trout you catch.
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 255 in Fishing |skill Fishing,255 |goto 38.08,31.99
collect 60 Raw Mithril Head Trout##8365 |goto 38.08,31.99 |or
'|complete skill("Cooking") >= 225 |or
step
_Create a Basic Campfire_
|tip Use the "Basic Campfire" skill in your spell book.
Open Your Cooking Crafting Panel:
|tip Stand next to the Basic Campfire.
_<Create 60 Mithril Head Trout>_
Reach Skill 225 in Cooking |skill Cooking,225 |goto 37.93,31.78
step
use the Recipe: Filet of Redgill##13941
Train Filet of Redgill |learn Filet of Redgill##18241
step
Enter the building |goto Tanaris 52.38,27.91 < 5 |walk
talk Dirge Quikcleave##8125
|tip Inside the building.
accept Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
step
kill Steeljaw Snapper##14123+
|tip They look like turtles.
collect Big-mouth Clam##7973+ |n
use the Big-mouth Clam##7973+
collect 10 Zesty Clam Meat##7974 |q 6610/2 |goto 67.75,22.96 |or
|tip You can also purchase them from the Auction House.
You can find more around:
[67.09,18.71]
[67.51,26.30]
[67.68,29.49]
step
map The Hinterlands
path	follow smart;	loop on;	ants curved;	dist 30
path	44.80,59.32	47.13,56.54	50.76,57.53	55.91,52.30	59.36,53.56
path	62.11,54.23	61.51,46.51	57.53,46.76	51.91,41.76	47.07,45.83
path	41.96,47.60	44.40,54.54
Kill Owlbeast enemies
|tip Follow the path and kill them as you find them.
collect 12 Giant Egg##12207 |q 6610/1 |or
|tip You can also purchase them from the Auction House.
step
Enter the building |goto Tanaris 52.38,27.91 < 5 |walk
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin Clamlette Surprise##6610 |goto Tanaris 52.63,28.11
Train Artisan Cook |skillmax Cooking,300 |goto Tanaris 52.63,28.11
|tip You will learn this automatically.
step
Follow the path |goto 61.03,26.14 < 50 |only if walking
Enter the building |goto 66.66,22.20 < 5 |walk
talk Gikkix##8137
|tip Inside the building.
buy Recipe: Spotted Yellowtail##13939 |n
use the Recipe: Spotted Yellowtail##13939
Train Spotted Yellowtail |learn Spotted Yellowtail##18238 |goto 66.64,22.08
step
talk Gikkix##8137
|tip Inside the building.
buy Recipe: Poached Sunscale Salmon##13946 |goto 66.64,22.08
|tip Save this for later.
step
Enter the building |goto Feralas 74.69,43.00 < 5 |walk
talk Sheendra Tallgrass##8145
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto Feralas 74.49,42.73
'|complete skill("Cooking") >= 300 |or
step
Fish in the Water
|tip Save any Raw Redgill you catch.
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 300 in Fishing |skill Fishing,300 |goto 75.65,43.89
collect 20 Raw Mithril Head Trout##8365 |goto 75.65,43.89 |or
'|complete skill("Cooking") >= 250 |or
step
label "Collect_Raw_Redgill_"
collect 50 Raw Redgill##13758 |goto 75.65,43.89 |or
'|complete skill("Cooking") >= 280 |or
step
label "Collect_Raw_Sunscale_Salmon_"
collect 35 Raw Sunscale Salmon##13760 |goto 75.65,43.89 |or
'|complete skill("Cooking") >= 300 |or
step
_Create a Basic Campfire_
|tip Use the "Basic Campfire" skill in your spell book.
Open Your Cooking Crafting Panel:
|tip Stand next to the Basic Campfire.
_<Create 20 Mithril Headed Trout>_
Reach Skill 235 in Cooking |skill Cooking,235 |goto 75.32,43.72
step
_Create a Basic Campfire_
|tip Use the "Basic Campfire" skill in your spell book.
Open Your Cooking Crafting Panel:
|tip Stand next to the Basic Campfire.
_<Create 50 Filets of Redgill>_
Reach Skill 275 in Cooking |skill Cooking,275 |goto 75.32,43.72
step
use the Recipe: Poached Sunscale Salmon##13946
Train Poached Sunscale Salmon |learn Poached Sunscale Salmon##18244
step
_Create a Basic Campfire_
|tip Use the "Basic Campfire" skill in your spell book.
Open Your Cooking Crafting Panel:
|tip Stand next to the Basic Campfire.
_<Create 35 Poached Sunscale Salmon>_
Reach Skill 300 in Cooking |skill Cooking,300 |goto 75.32,43.72
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Cooking (300-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Cooking') > 0 end,
description="This guide will walk you through leveling your Cooking skill from 300-375.",
},[[
step
talk Baxter##18988
|tip Inside the building.
buy Master Cookbook##27736
Train Master Cooking |skillmax Cooking,375 |goto Hellfire Peninsula/0 56.8,37.4
step
talk Sid Limbardi##16826
|tip Inside the building.
buy Recipe: Ravager Dog##27688 |n
use Recipe: Ravager Dog##27688
Train Ravager Dog |learn Ravager Dog##33284 |goto 54.6,41.0
step
collect 30 Ravager Flesh##27674 |or
|tip Refer to Ravager Flesh farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 30 Ravager Dog>_
Reach Skill 325 in Cooking |skill Cooking,325
step
talk Nula the Butcher##20097
buy Recipe: Talbuk Steak##27693 |n
use Recipe: Talbuk Steak##27693
Train Talbuk Steak |learn Talbuk Steak##33289 |goto Nagrand/0 58.0,35.6
step
collect 40 Talbuk Venison##27682 |or
|tip Refer to Talbuk Venison farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 30 Talbuk Steak>_
Reach Skill 355 in Cooking |skill Cooking,355
step
talk Xerintha Ravenoak##20916
buy Recipe: Mok'Nathal Shortribs##31675 |n
|tip This is a limited supply recipe.
|tip You can also complete the quest "Mok'Nathal Treats" from Matron Varah.
use Recipe: Mok'Nathal Shortribs##31675
Train Mok'Nathal Shortribs |learn Mok'Nathal Shortribs##38867 |goto Blade's Edge Mountains/0 62.4,40.2
step
collect 60 Raptor Ribs##31670 |or
|tip Refer to Raptor Ribs farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your Cooking Crafting Panel:
_<Create 20 Mok'Nathal Shortribs>_
Reach Skill 375 in Cooking |skill Cooking,375
step
_Congratulations!_
You Reached 375 Cooking Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Enchanting (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Enchanting') > 0 end,
description="This guide will walk you through leveling your Enchanting skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 53.42,36.92 < 7 |walk
talk Godan##3345
|tip Inside the building.
Train Apprentice Enchanting |skillmax Enchanting,75 |goto Orgrimmar/0 53.89,38.66
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Enchanting |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Enchanting") >= 375 |next "Begin_Profession_Leveling" |only if default |or
'|complete skill("Enchanting") >= 385 |next "Begin_Profession_Leveling" |only if BloodElf |or
stickystart "Collect_Soul_Dust_Total"
stickystart "Collect_Vision_Dust_Total"
stickystart "Collect_Dream_Dust_Total"
stickystart "Collect_Illusion_Dust_Total"
step
cast Disenchant##13262
collect 157 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Soul_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 60 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 165 |only if default |or
'|complete skill("Enchanting") >= 175 |only if BloodElf |or
step
label "Collect_Vision_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 278 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 250 |only if default |or
'|complete skill("Enchanting") >= 260 |only if BloodElf |or
step
label "Collect_Dream_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 440 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 294 |only if default |or
'|complete skill("Enchanting") >= 304 |only if BloodElf |or
step
label "Collect_Illusion_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 50 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 300 |only if default |or
'|complete skill("Enchanting") >= 310 |only if BloodElf |or
stickystart "Collect_Lesser_Astral_Essence_Total"
stickystart "Collect_Greater_Astral_Essence_Total"
stickystart "Collect_Lesser_Mystic_Essence_Total"
stickystart "Collect_Greater_Mystic_Essence_Total"
stickystart "Collect_Greater_Eternal_Essence_Total"
step
cast Disenchant##13262
collect 12 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
label "Collect_Lesser_Astral_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 135 |only if default |or
'|complete skill("Enchanting") >= 145 |only if BloodElf |or
step
label "Collect_Greater_Astral_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Astral Essence##11082 |or
|tip Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 151 |only if default |or
'|complete skill("Enchanting") >= 161 |only if BloodElf |or
step
label "Collect_Lesser_Mystic_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 20 Lesser Mystic Essence##11134 |or
|tip Disenchant level 31-35 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 185 |only if default |or
'|complete skill("Enchanting") >= 195 |only if BloodElf |or
step
label "Collect_Greater_Mystic_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 2 Greater Mystic Essence##11135 |or
|tip Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Greater_Eternal_Essence_Total"
cast Disenchant##13262 |notinsticky
collect 8 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
stickystart "Collect_Golden_Rod_Total"
stickystart "Collect_Truesilver_Rod_Total"
stickystart "Collect_Arcanite_Rod_Total"
step
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Golden_Rod_Total"
collect 1 Golden Rod##11128 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Gold Bar and 2 Coarse Grinding Stones to craft.
'|complete skill("Enchanting") >= 156 |only if default |or
'|complete skill("Enchanting") >= 166 |only if BloodElf |or
step
label "Collect_Truesilver_Rod_Total"
collect 1 Truesilver Rod##11144 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Truesilver Bar and 1 Heavy Grinding Stones to craft.
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Arcanite_Rod_Total"
collect 1 Arcanite Rod##16206 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 3 Arcanite Bars and 1 Dense Grinding Stone to craft.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
stickystart "Collect_Iridescent_Pearl_Total"
stickystart "Collect_Black_Pearl_Total"
stickystart "Collect_Golden_Pearl_Total"
stickystart "Collect_Purple_Lotus_Total"
stickystart "Collect_Small_Brilliant_Shard_Total"
stickystart "Collect_Large_Brilliant_Shard_Total"
step
collect 1 Shadowgem##1210 |or
|tip Farm it with Mining or purchase it from the auction house.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Iridescent_Pearl_Total"
collect 1 Iridescent Pearl##5500 |or
|tip Farm it using the "Iridescent Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 156 |only if default |or
'|complete skill("Enchanting") >= 166 |only if BloodElf |or
step
label "Collect_Black_Pearl_Total"
collect 1 Black Pearl##7971 |or
|tip Farm it using the "Black Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Golden_Pearl_Total"
collect 1 Golden Pearl##13926 |or
|tip Farm it using the "Golden Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Purple_Lotus_Total"
collect 40 Purple Lotus##8831 |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 265 |only if default |or
'|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
label "Collect_Small_Brilliant_Shard_Total"
collect 4 Small Brilliant Shard##14343 |or
|tip Disenchant level 46-51 rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Large_Brilliant_Shard_Total"
collect 8 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
stickystart "Collect_Adamantite_Rod_Total"
stickystart "Collect_Greater_Planar_Essence_Total"
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Nightmare_Vine_Total"
stickystart "Collect_Primal_Might_Total"
stickystart "Collect_Large_Prismatic_Shard_Total"
step
collect 1 Fel Iron Rod##25843 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 6 Fel Iron Bars to craft.
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
step
label "Collect_Adamantite_Rod_Total"
collect 1 Adamantite Rod##25844 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 10 Adamantite Bars to craft.
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
label "Collect_Greater_Planar_Essence_Total"
cast Disenchant##13262
collect 48 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Enchanting") >= 375 |only if default |or
'|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
label "Collect_Arcane_Dust_Total"
cast Disenchant##13262 |notinsticky
collect 718 Arcane Dust##22445 |only if default |or
collect 592 Arcane Dust##22445 |only if BloodElf |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 365 |only if default |or
'|complete skill("Enchanting") >= 375 |only if BloodElf |or
step
label "Collect_Nightmare_Vine_Total"
collect 14 Nightmare Vine##22792 |only if default |or
collect 7 Nightmare Vine##22792 |only if BloodElf |or
|tip Farm them with Herbalism or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 350 |only if default |or
'|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
label "Collect_Primal_Might_Total"
collect 1 Primal Might##23571 |or
|tip Create it with Alchemy or purchase it from the auction house.
|tip It requires 1 Primal Earth, 1 Primal Water, 1 Primal Air, 1 Primal Fire and 1 Primal Mana to craft.
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
label "Collect_Large_Prismatic_Shard_Total"
cast Disenchant##13262 |notinsticky
collect 26 Large Prismatic Shard##22449 |only if default |or
collect 27 Large Prismatic Shard##22449 |only if BloodElf |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Enchanting") >= 375 |only if default |or
'|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
label "Begin_Profession_Leveling"
talk Kithas##3346
|tip Inside the building.
buy Copper Rod##6217 |goto 53.87,38.02 |or 3
buy Strange Dust##10940 |goto 53.87,38.02 |or 3
buy Lesser Magic Essence##10938 |goto 53.87,38.02 |or 3
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 2 |only if default |or
'|complete skill("Enchanting") >= 12 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Copper Rod>_
|tip Save this, you will need it later.
Reach Skill 2 in Enchanting |skill Enchanting,2 |only if default |or
Reach Skill 12 in Enchanting |skill Enchanting,12 |only if BloodElf |or
step
cast Disenchant##13262
collect 75 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 75 |only if default |or
'|complete skill("Enchanting") >= 85 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 75 Enchant Bracer - Minor Health>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Minor Health enchant requires one Strange Dust.
Reach Skill 75 in Enchanting |skill Enchanting,75 |only if default |or
Reach Skill 85 in Enchanting |skill Enchanting,85 |only if BloodElf |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Journeyman Enchanting |skillmax Enchanting,150 |goto Orgrimmar/0 53.89,38.66
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Minor Stamina |learn Enchant Bracer - Minor Stamina##7457 |goto Orgrimmar/0 53.89,38.66
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracer - Minor Health>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Minor Health enchant requires one Strange Dust.
Reach Skill 90 in Enchanting |skill Enchanting,90 |only if default |or
Reach Skill 100 in Enchanting |skill Enchanting,100 |only if BloodElf |or
step
cast Disenchant##13262
collect 30 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 90 |only if default |or
'|complete skill("Enchanting") >= 90 |or
step
Open Your Enchanting Crafting Panel:
_<Create 10 Enchant Bracer - Minor Stamina>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
Reach Skill 100 in Enchanting |skill Enchanting,100 |only if default |or
Reach Skill 110 in Enchanting |skill Enchanting,110 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Runed Silver Rod |learn Runed Silver Rod##7795 |goto Orgrimmar/0 53.89,38.66
stickystart "Collect_Greater_Magic_Essence_101"
stickystart "Collect_Silver_Rod_101"
stickystart "Collect_Shadowgem_101"
step
cast Disenchant##13262
collect 6 Strange Dust##10940 |or
|tip Disenchant level 5-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Greater_Magic_Essence_101"
cast Disenchant##13262 |notinsticky
collect 3 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Silver_Rod_101"
collect 1 Silver Rod##6338 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Silver bar and 2 Rough Grinding Stones to craft.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
label "Collect_Shadowgem_101"
collect 1 Shadowgem##1210 |or
|tip Farm it with Mining or purchase it from the auction house.
'|complete skill("Enchanting") >= 101 |only if default |or
'|complete skill("Enchanting") >= 111 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Silver Rod>_
|tip Save this, you will need it later.
Reach Skill 101 in Enchanting |skill Enchanting,101 |only if default |or
Reach Skill 111 in Enchanting |skill Enchanting,111 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Greater Magic Wand |learn Greater Magic Wand##14807 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 9 Greater Magic Essence##10939 |or
|tip Disenchant level 9-15 uncommon (green) armor and level 9-25 uncommon (green) weapons with Enchanting or purchase them from the auction house.
|tip You can combine 3 Lesser Magic Essences to create 1 Greater Magic Essence.
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
Enter the building |goto Orgrimmar 53.42,36.92 < 7 |walk
talk Kithas##3346
|tip Inside the building.
buy 9 Simple Wood##4470 |goto Orgrimmar 53.87,38.02 |or
'|complete skill("Enchanting") >= 110 |only if default |or
'|complete skill("Enchanting") >= 120 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 9 Greater Magic Wands>_
Reach Skill 110 in Enchanting |skill Enchanting,110 |only if default |or
Reach Skill 120 in Enchanting |skill Enchanting,120 |only if BloodElf |or
step
talk Kulwia##12043
buy Formula: Enchant Cloak - Minor Agility##11039 |goto Stonetalon Mountains 45.39,59.33 |or 2
buy Formula: Enchant Bracer - Lesser Strength##11101 |goto Stonetalon Mountains 45.39,59.33 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 165 |only if default |or
'|complete skill("Enchanting") >= 175 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Minor Agility##11039
Train Enchant Cloak - Minor Agility |learn Enchant Cloak - Minor Agility##13419
step
cast Disenchant##13262
collect 25 Lesser Astral Essence##10998 |or
|tip Disenchant level 21-25 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 135 |only if default |or
'|complete skill("Enchanting") >= 145 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 25 Enchant Cloak - Minor Agility>_
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
Reach Skill 135 in Enchanting |skill Enchanting,135 |only if default |or
Reach Skill 145 in Enchanting |skill Enchanting,145 |only if BloodElf |or
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Expert Enchanting |skillmax Enchanting,225 |goto Orgrimmar/0 53.89,38.66
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Lesser Stamina |learn Enchant Bracer - Lesser Stamina##13501 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 40 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 155 |only if default |or
'|complete skill("Enchanting") >= 165 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracer - Lesser Stamina>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
Reach Skill 155 in Enchanting |skill Enchanting,155 |only if default |or
Reach Skill 165 in Enchanting |skill Enchanting,165 |only if BloodElf |or
step
use the Formula: Enchant Bracer - Lesser Strength##11101
|tip You purchased this in a previous step.
Train Enchant Bracer - Lesser Strength |learn Enchant Bracer - Lesser Strength##13536
step
talk Godan##3345
|tip Inside the building.
Train Runed Golden Rod |learn Runed Golden Rod##13628 |goto Orgrimmar/0 53.89,38.66
stickystart "Collect_Soul_Dust_151"
stickystart "Collect_Golden_Rod_151"
stickystart "Collect_Iridescent_Pearl_151"
step
cast Disenchant##13262
collect 2 Greater Astral Essence##11082 |or
|tip Disenchant level 26-30 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 156 |only if default |or
'|complete skill("Enchanting") >= 166 |only if BloodElf |or
step
label "Collect_Soul_Dust_151"
cast Disenchant##13262 |notinsticky
collect 2 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 156 |only if default |or
'|complete skill("Enchanting") >= 166 |only if BloodElf |or
step
label "Collect_Golden_Rod_151"
collect 1 Golden Rod##11128 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Gold Bar and 2 Coarse Grinding Stones to craft.
'|complete skill("Enchanting") >= 156 |only if default |or
'|complete skill("Enchanting") >= 166 |only if BloodElf |or
step
label "Collect_Iridescent_Pearl_151"
collect 1 Iridescent Pearl##5500 |or
|tip Farm it using the "Iridescent Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 156 |only if default |or
'|complete skill("Enchanting") >= 166 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Golden Rod>_
|tip Save this, you will need it later.
Reach Skill 156 in Enchanting |skill Enchanting,156 |only if default |or
Reach Skill 166 in Enchanting |skill Enchanting,166 |only if BloodElf |or
step
cast Disenchant##13262
collect 18 Soul Dust##11083 |or
|tip Disenchant level 26-35 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 165 |only if default |or
'|complete skill("Enchanting") >= 175 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 9 Enchant Bracer - Lesser Strength>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
Reach Skill 165 in Enchanting |skill Enchanting,165 |only if default |or
Reach Skill 175 in Enchanting |skill Enchanting,175 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Spirit |learn Enchant Bracer - Spirit##13642 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 20 Lesser Mystic Essence##11134 |or
|tip Disenchant level 31-35 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 185 |only if default |or
'|complete skill("Enchanting") >= 195 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 20 Enchant Bracer - Spirit>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
Reach Skill 185 in Enchanting |skill Enchanting,185 |only if default |or
Reach Skill 195 in Enchanting |skill Enchanting,195 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Bracer - Strength |learn Enchant Bracer - Strength##13661 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 15 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 200 |only if default |or
'|complete skill("Enchanting") >= 210 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 15 Enchant Bracer - Strength>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
Reach Skill 200 in Enchanting |skill Enchanting,200 |only if default |or
Reach Skill 210 in Enchanting |skill Enchanting,210 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Runed Truesilver Rod |learn Runed Truesilver Rod##13702 |goto Orgrimmar/0 53.89,38.66
stickystart "Collect_Greater_Mystic_Essence_201"
stickystart "Collect_Truesilver_Rod_201"
stickystart "Collect_Black_Pearl_201"
step
cast Disenchant##13262
collect 2 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Greater_Mystic_Essence_201"
cast Disenchant##13262 |notinsticky
collect 2 Greater Mystic Essence##11135 |or
|tip Disenchant level 36-40 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Truesilver_Rod_201"
collect 1 Truesilver Rod##11144 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 1 Truesilver Bar and 1 Heavy Grinding Stones to craft.
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
label "Collect_Black_Pearl_201"
collect 1 Black Pearl##7971 |or
|tip Farm it using the "Black Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 201 |only if default |or
'|complete skill("Enchanting") >= 211 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Truesilver Rod>_
|tip Save this, you will need it later.
Reach Skill 201 in Enchanting |skill Enchanting,201 |only if default |or
Reach Skill 211 in Enchanting |skill Enchanting,211 |only if BloodElf |or
step
cast Disenchant##13262
collect 35 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 220 |only if default |or
'|complete skill("Enchanting") >= 230 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 35 Enchant Bracer - Strength>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Strength enchant requires one Vision Dust.
Reach Skill 220 in Enchanting |skill Enchanting,220 |only if default |or
Reach Skill 230 in Enchanting |skill Enchanting,230 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Cloak - Greater Defense |learn Enchant Cloak - Greater Defense##13746 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 15 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 225 |only if default |or
'|complete skill("Enchanting") >= 235 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak - Greater Defense>_
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
Reach Skill 225 in Enchanting |skill Enchanting,225 |only if default |or
Reach Skill 235 in Enchanting |skill Enchanting,235 |only if BloodElf |or
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Godan##3345
|tip Inside the building.
Train Artisan Enchanting |skillmax Enchanting,300 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 36 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 230 |only if default |or
'|complete skill("Enchanting") >= 240 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 12 Enchant Cloak - Greater Defense>_
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Greater Defense enchant requires three Vision Dust.
Reach Skill 230 in Enchanting |skill Enchanting,230 |only if default |or
Reach Skill 240 in Enchanting |skill Enchanting,240 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Boots - Stamina |learn Enchant Boots - Stamina##13836 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 25 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 235 |only if default |or
'|complete skill("Enchanting") >= 245 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Boots - Stamina>_
|tip Place then enchant on a boot slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' boots to make some profit while increasing your skill level.
Reach Skill 235 in Enchanting |skill Enchanting,235 |only if default |or
Reach Skill 245 in Enchanting |skill Enchanting,245 |only if BloodElf |or
step
talk Godan##3345
|tip Inside the building.
Train Enchant Chest - Superior Health |learn Enchant Chest - Superior Health##13858 |goto Orgrimmar/0 53.89,38.66
step
cast Disenchant##13262
collect 150 Vision Dust##11137 |or
|tip Disenchant level 36-45 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 250 |only if default |or
'|complete skill("Enchanting") >= 260 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 25 Enchant Chest - Superior Health>_
|tip Place then enchant on a chest slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' chest to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Superior Health enchant requires six Vision Dust.
Reach Skill 250 in Enchanting |skill Enchanting,250 |only if default |or
Reach Skill 260 in Enchanting |skill Enchanting,260 |only if BloodElf |or
step
talk Kania##15419
|tip Upstairs inside the building.
buy Formula: Lesser Mana Oil##20754 |goto Silithus 52.0,39.6 |or
'|complete skill("Enchanting") >= 265 |only if default |or
'|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
use the Formula: Lesser Mana Oil##20754
Learn Lesser Mana Oil |learn Lesser Mana Oil##25135
stickystart "Collect_Purple_Lotus_265"
step
cast Disenchant##13262
collect 60 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 265 |only if default |or
'|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
label "Collect_Purple_Lotus_265"
collect 40 Purple Lotus##8831 |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Enchanting") >= 265 |only if default |or
'|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
talk Daniel Bartlett##4561
buy 20 Crystal Vial##8925 |goto Undercity 64.05,37.37 |or
'|complete skill("Enchanting") >= 265 |only if default |or
'|complete skill("Enchanting") >= 275 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 20 Lesser Mana Oil>_
|tip You may need to make a few more or less of these.
|tip Each additional Lesser Mana Oil requires three Dream Dust, two Purple Lotus, and one Crystal Vial.
Reach Skill 265 in Enchanting |skill Enchanting,265 |only if default |or
Reach Skill 275 in Enchanting |skill Enchanting,275 |only if BloodElf |or
step
talk Daniel Bartlett##4561
buy Formula: Enchant Shield - Greater Stamina##16217 |goto 64.05,37.37 |or
|tip This is a limited supply item that cannot be purchased from the auction house.
|tip If he doesn't have it for sale, you will have to wait.
'|complete skill("Enchanting") >= 294 |only if default |or
'|complete skill("Enchanting") >= 304 |only if BloodElf |or
step
use the Formula: Enchant Shield - Greater Stamina##16217
Learn Enchant Shield - Greater Stamina |learn Enchant Shield - Greater Stamina##20017
step
cast Disenchant##13262
collect 380 Dream Dust##11176 |or
|tip Disenchant level 46-55 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 294 |only if default |or
'|complete skill("Enchanting") >= 304 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 30 Enchant Shield - Greater Stamina>_
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|tip You may need to make a few more or less of these.
|tip Each additional Greater Stamina enchant requires ten Dream Dust.
Reach Skill 294 in Enchanting |skill Enchanting,294 |only if default |or
Reach Skill 304 in Enchanting |skill Enchanting,304 |only if BloodElf |or
step
Follow the road |goto Moonglade 40.25,37.05 < 30 |only if walking
talk Lorelae Wintersong##12022
|tip Inside the building.
buy Formula: Enchant Cloak - Superior Defense##16224 |goto Moonglade 48.24,40.14 |or 2
buy Formula: Runed Arcanite Rod##16243 |goto Moonglade 48.24,40.14 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
'|complete skill("Enchanting") >= 300 |only if default |or
'|complete skill("Enchanting") >= 310 |only if BloodElf |or
step
use the Formula: Enchant Cloak - Superior Defense##16224
Learn Enchant Cloak - Superior Defense |learn Enchant Cloak - Superior Defense##20015
step
use the Formula: Runed Arcanite Rod##16243
Learn Runed Arcanite Rod |learn Runed Arcanite Rod##20051
stickystart "Collect_Greater_Eternal_Essence_295"
stickystart "Collect_Small_Brilliant_Shard_295"
stickystart "Collect_Large_Brilliant_Shard_295"
stickystart "Collect_Arcanite_Rod_295"
stickystart "Collect_Golden_Pearl_295"
step
cast Disenchant##13262
collect 10 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Greater_Eternal_Essence_295"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Small_Brilliant_Shard_295"
cast Disenchant##13262 |notinsticky
collect 4 Small Brilliant Shard##14343 |or
|tip Disenchant level 46-51 rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Large_Brilliant_Shard_295"
cast Disenchant##13262 |notinsticky
collect 2 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Arcanite_Rod_295"
collect 1 Arcanite Rod##16206 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 3 Arcanite Bars and 1 Dense Grinding Stone to craft.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
label "Collect_Golden_Pearl_295"
collect 1 Golden Pearl##13926 |or
|tip Farm it using the "Golden Pearl" farming guide or purchase it from the Auction House.
'|complete skill("Enchanting") >= 295 |only if default |or
'|complete skill("Enchanting") >= 305 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Arcanite Rod>_
|tip Save this, you will need it later.
Reach Skill 295 in Enchanting |skill Enchanting,295 |only if default |or
Reach Skill 305 in Enchanting |skill Enchanting,305 |only if BloodElf |or
step
cast Disenchant##13262
collect 40 Illusion Dust##16204 |or
|tip Disenchant level 56-60 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 300 |only if default |or
'|complete skill("Enchanting") >= 310 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 5 Enchant Cloak - Superior Defense>_
|tip Place then enchant on a cloak slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' cloak to make some profit while increasing your skill level.
Reach Skill 300 in Enchanting |skill Enchanting,300 |only if default |or
Reach Skill 310 in Enchanting |skill Enchanting,310 |only if BloodElf |or
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Felannia##18753
|tip Inside the building.
Train Master Enchanting |skillmax Enchanting,375 |goto Hellfire Peninsula/0 52.2,36.0
step
talk Felannia##18753
|tip Inside the building.
Train Enchant Bracer - Assault |learn Enchant Bracer - Assault##34002 |goto 52.2,36.0
stickystart "Collect_Greater_Eternal_Essence_301"
stickystart "Collect_Large_Brilliant_Shard_301"
step
collect 1 Fel Iron Rod##25843 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 6 Fel Iron Bars to craft.
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
step
label "Collect_Greater_Eternal_Essence_301"
cast Disenchant##13262 |notinsticky
collect 4 Greater Eternal Essence##16203 |or
|tip Disenchant level 51-56 uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
step
label "Collect_Large_Brilliant_Shard_301"
cast Disenchant##13262 |notinsticky
collect 6 Large Brilliant Shard##14344 |or
|tip Disenchant level 51-60 rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Fel Iron Rod>_
Reach Skill 301 in Enchanting |skill Enchanting,301 |only if default
Reach Skill 311 in Enchanting |skill Enchanting,311 |only if BloodElf
step
cast Disenchant##13262
collect 54 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 301 |only if default |or
'|complete skill("Enchanting") >= 311 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 9 Enchant Bracer - Assault>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
Reach Skill 310 in Enchanting |skill Enchanting,310 |only if default
Reach Skill 320 in Enchanting |skill Enchanting,320 |only if BloodElf
step
talk Felannia##18753
|tip Inside the building.
Train Enchant Bracer - Brawn |learn Enchant Bracer - Brawn##27899 |goto 52.2,36.0
step
cast Disenchant##13262
collect 48 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 316 |only if default |or
'|complete skill("Enchanting") >= 326 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 8 Enchant Bracer - Brawn>_
|tip Place then enchant on a bracer slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' bracers to make some profit while increasing your skill level.
|tip You may need to create a few more or less of these.
|tip Each additional Brawn enchant requires 6 Arcane Dust.
Reach Skill 316 in Enchanting |skill Enchanting,316 |only if default
Reach Skill 326 in Enchanting |skill Enchanting,326 |only if BloodElf
step
talk Felannia##18753
|tip Inside the building.
Train Enchant Gloves - Assault |learn Enchant Gloves - Assault##33996 |goto 52.2,36.0
step
cast Disenchant##13262
collect 130 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 330 |only if default |or
'|complete skill("Enchanting") >= 340 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 16 Enchant Gloves - Assault>_
|tip Place then enchant on a glove slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' glove to make some profit while increasing your skill level.
|tip You may need to create a few more or less of these.
|tip Each additional Assault enchant requires 8 Arcane Dust.
Reach Skill 330 in Enchanting |skill Enchanting,330 |only if default
Reach Skill 340 in Enchanting |skill Enchanting,340 |only if BloodElf
step
talk Madame Ruby##19663
buy Formula: Enchant Shield - Major Stamina##28282 |goto Shattrath City/0 63.2,70.6 |or 3
buy Formula: Large Prismatic Shard##22565 |goto Shattrath City/0 63.2,70.6 |or 3
buy Formula: Superior Wizard Oil##22563 |goto Shattrath City/0 63.2,70.6 |or 3
'|complete skill("Enchanting") >= 350 |only if default |or
'|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
use the Formula: Enchant Shield - Major Stamina##28282
|tip You purchased this in a previous step.
Learn Enchant Shield - Major Stamina |learn Enchant Shield - Major Stamina##34009
step
cast Disenchant##13262
collect 180 Arcane Dust##22445 |only if default |or
collect 75 Arcane Dust##22445 |only if BloodElf |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 340 |only if default |or
'|complete skill("Enchanting") >= 345 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 12 Enchant Shield - Major Stamina>_ |only if default
_<Create 5 Enchant Shield - Major Stamina>_ |only if BloodElf
|tip Place then enchant on a shield slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' shield to make some profit while increasing your skill level.
|tip You may need to create a few more or less of these. |only if default
|tip Each additional Major Stamina enchant requires 15 Arcane Dust. |only if default
Reach Skill 340 in Enchanting |skill Enchanting,340 |only if default
Reach Skill 345 in Enchanting |skill Enchanting,345 |only if BloodElf
step
talk Felannia##18753
|tip Inside the building.
Train Small Prismatic Shard |learn Small Prismatic Shard##42615 |goto Hellfire Peninsula/0 52.2,36.0
step
use the Formula: Large Prismatic Shard##22565
|tip You purchased this in a previous step.
Learn Large Prismatic Shard |learn Large Prismatic Shard##28022
step
cast Disenchant##13262
collect 1 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase it from the auction house.
_Or_
collect 3 Small Prismatic Shard##22448 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house.
|tip You will be converting these back and forth, so it doesn't matter which one you have.
'|complete skill("Enchanting") >= 355 |or
|only if BloodElf
step
Open Your Enchanting Crafting Panel:
_<Create Large Prismatic Shard>_
_<Create Small Prismatic Shard>_
|tip Convert the shard(s) you have back and forth between Large and Small.
|tip This may take a while, but it will save you some gold.
Reach Skill 355 in Enchanting |skill Enchanting,355
|only if BloodElf
step
use Formula: Superior Wizard Oil##22563
|tip You purchased this in a previous step.
Train Superior Wizard Oil |learn Superior Wizard Oil##22522
stickystart "Collect_Nightmare_Vine_350"
step
cast Disenchant##13262
collect 42 Arcane Dust##22445 |only if default |or
collect 21 Arcane Dust##22445 |only if BloodElf |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 350 |only if default |or
'|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
label "Collect_Nightmare_Vine_350"
cast Disenchant##13262 |notinsticky
collect 14 Nightmare Vine##22792 |only if default |or
collect 7 Nightmare Vine##22792 |only if BloodElf |or
|tip Farm them with Herbalism or purchase them from the auction house.
'|complete skill("Enchanting") >= 350 |only if default |or
'|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
talk Ernie Packwell##19194
buy 14 Imbued Vial##18256 |goto Shattrath City/0 66.6,65.0 |only if default |or
buy 7 Imbued Vial##18256 |goto Shattrath City/0 66.6,65.0 |only if BloodElf |or
'|complete skill("Enchanting") >= 350 |only if default |or
'|complete skill("Enchanting") >= 360 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 14 Superior Wizard Oil>_ |only if default
_<Create 7 Superior Wizard Oil>_ |only if BloodElf
|tip You may need to create a few more or less of these.
|tip Each additional Superior Wizard Oil requires 3 Arcane Dust, 1 Nightmare Vine, and 1 Imbued Vial.
Reach Skill 350 in Enchanting |skill Enchanting,350 |only if default
Reach Skill 360 in Enchanting |skill Enchanting,360 |only if BloodElf
step
talk Felannia##18753
|tip Inside the building.
Train Enchant Gloves - Major Strength |learn Enchant Gloves - Major Strength##33995 |goto Hellfire Peninsula/0 52.2,36.0
stickystart "Collect_Greater_Planar_Essence_365"
step
cast Disenchant##13262
collect 264 Arcane Dust##22445 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 365 |only if default |or
'|complete skill("Enchanting") >= 375 |only if BloodElf |or
step
label "Collect_Greater_Planar_Essence_365"
cast Disenchant##13262 |notinsticky
collect 22 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 365 |only if default |or
'|complete skill("Enchanting") >= 375 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 22 Enchant Gloves - Major Strength>_
|tip Place then enchant on a glove slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' glove to make some profit while increasing your skill level.
|tip You may need to create a few more or less of these.
|tip Each additional Major Strength enchant requires 12 Arcane Dust and 1 Greater Planar Essence.
Reach Skill 365 in Enchanting |skill Enchanting,365 |only if default
Reach Skill 375 in Enchanting |skill Enchanting,375 |only if BloodElf
step
talk Rungor##18960
buy Formula: Runed Adamantite Rod##25848 |goto Terokkar Forest/0 48.8,46.0 |or
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
use the Formula: Runed Adamantite Rod##25848
|tip You purchased this in a previous step.
Train Runed Adamantite Rod |learn Runed Adamantite Rod##32665
stickystart "Collect_Primal_Might_366"
stickystart "Collect_Greater_Planar_Essence_366"
stickystart "Collect_Large_Prismatic_Shard_366"
step
cast Disenchant##13262
collect 1 Adamantite Rod##25844 |or
|tip Create it with Blacksmithing or purchase it from the auction house.
|tip It requires 10 Adamantite Bars to craft.
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
label "Collect_Primal_Might_366"
cast Disenchant##13262 |notinsticky
collect 1 Primal Might##23571 |or
|tip Create it with Alchemy or purchase it from the auction house.
|tip It requires 1 Primal Earth, 1 Primal Water, 1 Primal Air, 1 Primal Fire and 1 Primal Mana to craft.
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
label "Collect_Greater_Planar_Essence_366"
cast Disenchant##13262 |notinsticky
collect 8 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
label "Collect_Large_Prismatic_Shard_366"
cast Disenchant##13262 |notinsticky
collect 8 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 366 |only if default |or
'|complete skill("Enchanting") >= 376 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 1 Runed Adamantite Rod>_
Reach Skill 366 in Enchanting |skill Enchanting,366 |only if default
Reach Skill 376 in Enchanting |skill Enchanting,376 |only if BloodElf
step
Reach Honored Reputation with the Keepers of Time |complete rep('Keepers of Time') >= Honored
|tip Refer to the "Keepers of Time" reputation guide to accomplish this.
step
talk Alurmi##21643
buy Formula: Enchant Ring - Spellpower##22536 |goto Tanaris 63.58,57.64 |or
'|complete skill("Enchanting") >= 375 |only if default |or
'|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
use the Formula: Enchant Ring - Spellpower##22536
|tip You purchased this in a previous step.
Learn Enchant Ring - Spellpower |learn Enchant Ring - Spellpower##27924
stickystart "Collect_Greater_Planar_Essence_375"
step
cast Disenchant##13262
collect 18 Large Prismatic Shard##22449 |or
|tip Disenchant Outland rare (blue) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 375 |only if default |or
'|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
label "Collect_Greater_Planar_Essence_375"
cast Disenchant##13262 |notinsticky
collect 18 Greater Planar Essence##22446 |or
|tip Disenchant Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Enchanting") >= 375 |only if default |or
'|complete skill("Enchanting") >= 385 |only if BloodElf |or
step
Open Your Enchanting Crafting Panel:
_<Create 9 Enchant Ring - Spellpower>_
|tip Place then enchant on a ring slot item, either equipped or in your inventory.
|tip You may be able to use it on other players' ring to make some profit while increasing your skill level.
|tip You may need to create a few more or less of these.
|tip Each additional Spellpower enchant requires 1 Large Prismatic Shard and 1 Greater Planar Essence.
Reach Skill 375 in Enchanting |skill Enchanting,375 |only if default
Reach Skill 385 in Enchanting |skill Enchanting,385 |only if BloodElf
step
_Congratulations!_
You Reached 375 Enchanting Skill. |only if default
You Reached 385 Enchanting Skill. |only if BloodElf
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Engineering (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill("Engineering") > 0 end,
description="This guide will walk you through leveling your Engineering skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Apprentice Engineering |skillmax Engineering,75 |goto Orgrimmar/0 76.18,25.18
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Engineering |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Engineering") >= 375 |next "Begin_Profession_Leveling" |only if default |or
'|complete skill("Engineering") >= 390 |next "Begin_Profession_Leveling" |only if Gnome |or
stickystart "Collect_Coarse_Stone_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Dense_Stone_Total"
stickystart "Collect_Moss_Agate_Total"
stickystart "Collect_Medium_Leather_Total"
step
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Engineering") >= 30 |only if default |or
'|complete skill("Engineering") >= 45 |only if Gnome |or
step
label "Collect_Coarse_Stone_Total"
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 95 |only if default |or
'|complete skill("Engineering") >= 110 |only if Gnome |or
step
label "Collect_Heavy_Stone_Total"
collect 30 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 146 |only if default |or
'|complete skill("Engineering") >= 161 |only if Gnome |or
step
label "Collect_Solid_Stone_Total"
collect 120 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 195 |only if default |or
'|complete skill("Engineering") >= 210 |only if Gnome |or
step
label "Collect_Dense_Stone_Total"
collect 70 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 260 |only if default |or
'|complete skill("Engineering") >= 275 |only if Gnome |or
step
label "Collect_Moss_Agate_Total"
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
label "Collect_Medium_Leather_Total"
collect 15 Medium Leather##2319 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 160 |only if default |or
'|complete skill("Engineering") >= 175 |only if Gnome |or
stickystart "Collect_Silver_Bar_Total"
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Steel_Bar_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Thorium_Bar_Total"
step
collect 66 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Silver_Bar_Total"
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 105 |only if default |or
'|complete skill("Engineering") >= 120 |only if Gnome |or
step
label "Collect_Bronze_Bar_Total"
collect 120 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Steel_Bar_Total"
collect 4 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |only if default |or
'|complete skill("Engineering") >= 315 or itemcount(10498) >= 1 |only if Gnome |or
step
label "Collect_Mithril_Bar_Total"
collect 161 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 238 |only if default |or
'|complete skill("Engineering") >= 253 |only if Gnome |or
step
label "Collect_Thorium_Bar_Total"
collect 225 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
stickystart "Collect_Wool_Cloth_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Runecloth_Total"
step
collect 50 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
label "Collect_Wool_Cloth_Total"
collect 60 Wool Cloth##2592 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Mageweave_Cloth_Total"
collect 20 Mageweave Cloth##4338 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
label "Collect_Runecloth_Total"
collect 35 Runecloth##14047 |or
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
stickystart "Collect_Adamantite_Bar_Total"
stickystart "Collect_Mote_of_Earth_Total"
stickystart "Collect_Mote_of_Fire_Total"
stickystart "Collect_Primal_Earth_Total"
stickystart "Collect_Netherweave_Cloth_Total"
step
collect 350 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Adamantite_Bar_Total"
collect 200 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
label "Collect_Mote_of_Earth_Total"
collect 90 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Mote_of_Fire_Total"
collect 45 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Primal_Earth_Total"
collect 50 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
label "Collect_Netherweave_Cloth_Total"
collect 40 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Engineering") >= 355 |only if default |or
'|complete skill("Engineering") >= 370 |only if Gnome |or
step
label "Begin_Profession_Leveling"
talk Sovik##3413
|tip Inside the building.
buy Blacksmith Hammer##5956 |goto 75.49,25.36 |or
|tip Save this, you will need it later.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
collect 60 Rough Stone##2835 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 30 |only if default |or
'|complete skill("Engineering") >= 45 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 60 Rough Blasting Powder>_
collect 60 Rough Blasting Powder##4357 |or
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Rough Blasting Powder>_
|tip Save 60 of these, you will need them later.
Reach Skill 30 in Engineering |skill Engineering,30 |only if default |or
Reach Skill 45 in Engineering |skill Engineering,45 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Handful of Copper Bolts |learn Handful of Copper Bolts##3922 |goto Orgrimmar/0 76.18,25.18
step
collect 30 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 50 |only if default |or
'|complete skill("Engineering") >= 65 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 30 Handful of Copper Bolts>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 30 Handful of Copper Bolts##4359 |goto Orgrimmar/0 79.61,22.95 |or
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Handful of Copper Bolts>_
|tip Stand next to an anvil.
|tip Save 30 of these, you will need them later.
|tip You may need to make a few more of these.
|tip Each additional Handful of Copper Bolts requires 1 copper bar.
Reach Skill 50 in Engineering |skill Engineering,50 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 65 in Engineering |skill Engineering,65 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Arclight Spanner |learn Arclight Spanner##7430 |goto Orgrimmar/0 76.18,25.18
step
collect 6 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 51 or itemcount(6219) < 1 |only if default |or
'|complete skill("Engineering") >= 66 or itemcount(6219) < 1 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 1 Arclight Spanner>_
|tip Stand next to an anvil.
|tip Save this, you will need it later.
Reach Skill 51 in Engineering |skill Engineering,51 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 66 in Engineering |skill Engineering,66 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Rough Copper Bomb |learn Rough Copper Bomb##3923 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Handful_of_Copper_Bolts_75"
stickystart "Collect_Copper_Bar_75"
stickystart "Collect_Linen_Cloth_75"
step
collect 60 Rough Blasting Powder##4357 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Handful_of_Copper_Bolts_75"
collect 30 Handful of Copper Bolts##4359 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Copper_Bar_75"
collect 30 Copper Bar##2840 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
label "Collect_Linen_Cloth_75"
collect 30 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 75 |only if default |or
'|complete skill("Engineering") >= 90 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 30 Rough Copper Bombs>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Rough Copper Bomb requires 2 Rough Blasting Powder, 1 Handful of Copper Bolts, 1 Copper Bar, and 1 Linen Cloth.
Reach Skill 75 in Engineering |skill Engineering,75 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 90 in Engineering |skill Engineering,90 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Journeyman Engineering |skillmax Engineering,150 |goto Orgrimmar/0 76.18,25.18
step
talk Roxxik##11017
|tip Inside the building.
Train Coarse Blasting Powder |learn Coarse Blasting Powder##3929 |goto Orgrimmar/0 76.18,25.18
step
collect 60 Coarse Stone##2836 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 95 |only if default |or
'|complete skill("Engineering") >= 110 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 60 Coarse Blasting Powder>_
|tip Save these, you will need them later.
collect 60 Coarse Blasting Powder##4364 |or
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Coarse Blasting Powder>_
|tip Save 60 of these, they will be used in a later schematic.
Reach Skill 95 in Engineering |skill Engineering,95 |only if default |or
Reach Skill 110 in Engineering |skill Engineering,110 |only if Gnome |or
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Coarse Dynamite |learn Coarse Dynamite##3931 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Linen_Cloth_100"
step
collect 60 Coarse Blasting Powder##4364 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
label "Collect_Linen_Cloth_100"
collect 20 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 100 |only if default |or
'|complete skill("Engineering") >= 115 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 20 Coarse Dynamite>_
|tip You may need to create a few more or less of these.
|tip Each additional Coarse Dynamite requires 3 Coarse Blasting Powder and 1 Linen Cloth.
Reach Skill 100 in Engineering |skill Engineering,100 |only if default |or
Reach Skill 115 in Engineering |skill Engineering,115 |only if Gnome |or
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
Train Silver Contact |learn Silver Contact##3973 |goto Orgrimmar/0 76.18,25.18
step
collect 5 Silver Bar##2842 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 105 |only if default |or
'|complete skill("Engineering") >= 120 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 5 Silver Contacts>_
Reach Skill 105 in Engineering |skill Engineering,105 |only if default |or
Reach Skill 120 in Engineering |skill Engineering,120 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Bronze Tube |learn Bronze Tube##3938 |goto Orgrimmar/0 76.18,25.18
step
collect 50 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
talk Sovik##3413
|tip Inside the building.
buy 25 Weak Flux##2880 |goto Orgrimmar 75.49,25.36 |or
'|complete skill("Engineering") >= 125 |only if default |or
'|complete skill("Engineering") >= 140 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 10 Bronze Tubes>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 10 Bronze Tube##4371 |goto 79.61,22.95 |or
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Bronze Tubes>_
|tip Stand next to an anvil.
|tip Save 10 of these, you will need them later.
|tip You may need to create a few more or less of these.
|tip Each additional Bronze Tube requires 2 Bronze Bars and 1 Weak Flux.
Reach Skill 125 in Engineering |skill Engineering,125 |goto 79.61,22.95 |only if default |or
Reach Skill 140 in Engineering |skill Engineering,140 |goto 79.61,22.95 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Standard Scope |learn Standard Scope##3978 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Moss_Agate_135"
step
collect 10 Bronze Tube##4371 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
label "Collect_Moss_Agate_135"
collect 10 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 135 |only if default |or
'|complete skill("Engineering") >= 150 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 10 Standard Scopes>_
Reach Skill 135 in Engineering |skill Engineering,135 |only if default |or
Reach Skill 150 in Engineering |skill Engineering,150 |only if Gnome |or
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Roxxik##11017
|tip Inside the building.
Train Expert Engineering |skillmax Engineering,225 |goto Orgrimmar/0 76.18,25.18
step
talk Roxxik##11017
|tip Inside the building.
Train Heavy Blasting Powder |learn Heavy Blasting Powder##3945 |goto Orgrimmar/0 76.18,25.18
step
talk Roxxik##11017
|tip Inside the building.
Train Whirring Bronze Gizmo |learn Whirring Bronze Gizmo##3942 |goto Orgrimmar/0 76.18,25.18
step
collect 30 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 146 |only if default |or
'|complete skill("Engineering") >= 161 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 30 Heavy Blasting Powder>_
|tip Save these, you will need them later.
collect 30 Heavy Blasting Powder##4377 |or
'|complete skill("Engineering") >= 146 |only if default |or
'|complete skill("Engineering") >= 161 |only if Gnome |or
stickystart "Collect_Wool_Cloth_Gizmo"
step
collect 30 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Wool_Cloth_Gizmo"
collect 15 Wool Cloth##2592 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Whirring Bronze Gizmos>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 15 Whirring Bronze Gizmo##4375 |goto 79.61,22.95 |or
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Whirring Bronze Gizmos>_
|tip Stand next to an anvil.
|tip Save 15 of these, you will need them later.
|tip You may need to create a few more or less of these.
|tip Each additional Whirring Bronze Gizmo requires 2 Bronze Bars and 1 Wool Cloth.
Reach Skill 150 in Engineering |skill Engineering,150 |goto 79.61,22.95 |only if default |or
Reach Skill 165 in Engineering |skill Engineering,165 |goto 79.61,22.95 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Bronze Framework |learn Bronze Framework##3953 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Medium_Leather_Framework"
stickystart "Collect_Wool_Cloth_Framework"
step
collect 30 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Medium_Leather_Framework"
collect 15 Medium Leather##2319 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Engineering") >= 160 |only if default |or
'|complete skill("Engineering") >= 175 |only if Gnome |or
step
label "Collect_Wool_Cloth_Framework"
collect 15 Wool Cloth##2592 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 160 |only if default |or
'|complete skill("Engineering") >= 175 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Bronze Frameworks>_
|tip Save these, you will need them later.
collect 15 Bronze Framework##4382 |or
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Bronze Frameworks>_
|tip Save 15 of these, you will need them later.
Reach Skill 160 in Engineering |skill Engineering,160 |only if default |or
Reach Skill 175 in Engineering |skill Engineering,175 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Explosive Sheep |learn Explosive Sheep##3955 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Whirring_Bronze_Gizmo_175"
stickystart "Collect_Bronze_Framework_175"
stickystart "Collect_Wool_Cloth_175"
step
collect 30 Heavy Blasting Powder##4377 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Whirring_Bronze_Gizmo_175"
collect 15 Whirring Bronze Gizmo##4375 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Bronze_Framework_175"
collect 15 Bronze Framework##4382 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
label "Collect_Wool_Cloth_175"
collect 30 Wool Cloth##2592 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 175 |only if default |or
'|complete skill("Engineering") >= 190 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 15 Explosive Sheep>_
|tip Stand next to an anvil.
|tip Save 5 of these if you intend to specialize in Goblin Engineering later.
Reach Skill 175 in Engineering |skill Engineering,175 |goto 79.61,22.95 |only if default |or
Reach Skill 190 in Engineering |skill Engineering,190 |goto 79.61,22.95 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Gyromatic Micro-Adjustor |learn Gyromatic Micro-Adjustor##12590 |goto Orgrimmar/0 76.18,25.18
step
collect 4 Steel Bar##3859 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 300 or itemcount(10498) >= 1 |only if default |or
'|complete skill("Engineering") >= 315 or itemcount(10498) >= 1 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 1 Gyromatic Micro-Adjustor>_
|tip Stand next to an anvil.
|tip Save this, you will need it later.
collect 1 Gyromatic Micro-Adjustor##10498 |goto 79.61,22.95 |or
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Solid Blasting Powder |learn Solid Blasting Powder##12585 |goto Orgrimmar/0 76.18,25.18
step
collect 120 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 195 |only if default |or
'|complete skill("Engineering") >= 210 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 60 Solid Blasting Powder>_
|tip Save these, you will need them later.
collect 60 Solid Blasting Powder##10505 |or
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Solid Blasting Powder>_
|tip Save 60 of these, you will need them later.
|tip You may need to create a few more of these.
|tip Each additional Solid Blasting Powder requires 2 Solid Stone.
Reach Skill 195 in Engineering |skill Engineering,195 |only if default |or
Reach Skill 210 in Engineering |skill Engineering,210 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Mithril Tube |learn Mithril Tube##12589 |goto Orgrimmar/0 76.18,25.18
step
collect 21 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 200 |only if default |or
'|complete skill("Engineering") >= 215 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 7 Mithril Tubes>_
|tip Stand next to an anvil.
|tip You  may need to create a few more or less of these.
|tip Each additional Mithril Tube requires 3 Mithril Bars.
|tip Save 6 of these if you intend to specialize in Gnomish Engineering later.
Reach Skill 200 in Engineering |skill Engineering,200 |goto 79.61,22.95 |only if default |or
Reach Skill 215 in Engineering |skill Engineering,215 |goto 79.61,22.95 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Unstable Trigger |learn Unstable Trigger##12591 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Mithril_Bar_216"
stickystart "Collect_Mageweave_Cloth_216"
step
collect 20 Solid Blasting Powder##10505 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
label "Collect_Mithril_Bar_216"
collect 20 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
label "Collect_Mageweave_Cloth_216"
collect 20 Mageweave Cloth##4338 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 216 |only if default |or
'|complete skill("Engineering") >= 231 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 20 Unstable Triggers>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 20 Unstable Trigger##10560 |goto 79.61,22.95 |or
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Unstable Triggers>_
|tip Stand next to an anvil.
|tip Save 20 of these, you will need them later.
|tip You may need to create a few more or less of these.
|tip Each additional Unstable Trigger requires 1 Solid Blasting Powder, 1 Mithril Bar, and 1 Mageweave Cloth.
Reach Skill 216 in Engineering |skill Engineering,216 |goto 79.61,22.95 |only if default |or
Reach Skill 231 in Engineering |skill Engineering,231 |goto 79.61,22.95 |only if Gnome |or
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Roxxik##11017
|tip Inside the building.
Train Artisan Engineering |skillmax Engineering,300 |goto Orgrimmar/0 76.18,25.18
step
talk Roxxik##11017
|tip Inside the building.
Train Mithril Casing |learn Mithril Casing##12599 |goto Orgrimmar/0 76.18,25.18
step
collect 120 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 238 |only if default |or
'|complete skill("Engineering") >= 253 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 40 Mithril Casings>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 40 Mithril Casing##10561 |goto Orgrimmar/0 79.61,22.95 |or
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Mithril Casings>_
|tip Stand next to an anvil.
|tip Save 40 of these, you will need them later.
|tip You may need to create a few more or less of these.
|tip Each additional Mithril Casing requires 3 Mithril Bars.
Reach Skill 238 in Engineering |skill Engineering,238 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 253 in Engineering |skill Engineering,253 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Hi-Explosive Bomb |learn Hi-Explosive Bomb##12619 |goto Orgrimmar/0 76.18,25.18
stickystart "Collect_Unstable_Trigger_250"
stickystart "Collect_Mithril_Casing_250"
step
collect 40 Solid Blasting Powder##10505 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
label "Collect_Unstable_Trigger_250"
collect 20 Unstable Trigger##10560 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
label "Collect_Mithril_Casing_250"
collect 40 Mithril Casing##10561 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 250 |only if default |or
'|complete skill("Engineering") >= 265 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 20 Hi-Explosive Bombs>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Hi-Explosive Bomb requires 2 Solid Blasting Powders, 1 Unstable Trigger, and 1 Mithril Casing.
Reach Skill 250 in Engineering |skill Engineering,250 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 265 in Engineering |skill Engineering,265 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
talk Roxxik##11017
|tip Inside the building.
Train Dense Blasting Powder |learn Dense Blasting Powder##19788 |goto Orgrimmar/0 76.18,25.18
step
collect 70 Dense Stone##12365 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 260 |only if default |or
'|complete skill("Engineering") >= 275 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 35 Dense Blasting Powder>_
|tip You may need to create a few more or less of these.
|tip Each additional Dense Blasting Powder requires 2 Dense Stone.
Reach Skill 260 in Engineering |skill Engineering,260 |only if default |or
Reach Skill 275 in Engineering |skill Engineering,275 |only if Gnome |or
step
Enter the building |goto Orgrimmar/0 75.19,24.59 < 5 |walk
talk Sovik##3413
|tip Inside the building.
buy Schematic: Thorium Widget##16042 |goto Orgrimmar/0 75.49,25.36 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
use the Schematic: Thorium Widget##16042
Train Thorium Widget |learn Thorium Widget##19791
stickystart "Collect_Runecloth_285"
step
collect 105 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
label "Collect_Runecloth_285"
collect 35 Runecloth##14047 |or
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
'|complete skill("Engineering") >= 285 |only if default |or
'|complete skill("Engineering") >= 300 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 35 Thorium Widget>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Thorium Widget requires 3 Thorium Bar and 2 Runecloth.
Reach Skill 285 in Engineering |skill Engineering,285 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 300 in Engineering |skill Engineering,300 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 60.86,38.51 < 5 |walk
talk Xizzer Fizzbolt##11185
|tip Inside the building.
buy Schematic: Thorium Tube##16047 |goto Winterspring 60.81,38.60 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
use the Schematic: Thorium Tube##16047
Train Thorium Tube |learn Thorium Tube##19795
step
collect 120 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 300 |only if default |or
'|complete skill("Engineering") >= 315 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 20 Thorium Tubes>_
|tip Stand next to an anvil.
|tip You may need to create a few more or less of these.
|tip Each additional Thorium Tube requires 6 Thorium Bars.
Reach Skill 300 in Engineering |skill Engineering,300 |goto Orgrimmar/0 79.61,22.95 |only if default |or
Reach Skill 315 in Engineering |skill Engineering,315 |goto Orgrimmar/0 79.61,22.95 |only if Gnome |or
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Zebig##18752
Learn Master Engineering |skillmax Engineering,375 |goto Hellfire Peninsula/0 54.78,38.51
step
talk Zebig##18752
Train Handful of Fel Iron Bolts |learn Handful of Fel Iron Bolts##30305 |goto Hellfire Peninsula/0 54.78,38.51
step
talk Zebig##18752
Train Elemental Blasting Powder |learn Elemental Blasting Powder##30303 |goto Hellfire Peninsula/0 54.78,38.51
step
talk Zebig##18752
Train Fel Iron Casing |learn Fel Iron Casing##30304 |goto Hellfire Peninsula/0 54.78,38.51
step
collect 110 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 320 |only if default |or
'|complete skill("Engineering") >= 335 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 110 Handfuls of Fel Iron Bolts>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 110 Handful of Fel Iron Bolts##23783 |goto 53.07,38.04 |or
'|complete skill("Engineering") >= 320 |only if default |or
'|complete skill("Engineering") >= 335 |only if Gnome |or
step
collect 240 Fel Iron Bar##23445 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 80 Fel Iron Casings>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 80 Fel Iron Casing##23782 |goto 53.07,38.04 |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
stickystart "Collect_Mote_of_Fire_320"
step
collect 90 Mote of Earth##22573 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
label "Collect_Mote_of_Fire_320"
collect 45 Mote of Fire##22574 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 45 Elemental Blasting Powders>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 45 Elemental Blasting Powder##23781 |goto 53.07,38.04 |or
'|complete skill("Engineering") >= 321 |only if default |or
'|complete skill("Engineering") >= 336 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Fel Iron Casing>_
|tip Stand next to an anvil.
|tip You may need to create a few more of these.
|tip Each additional Fel Iron Casing requires 3 Fel Iron Bars.
Reach Skill 320 in Engineering |skill Engineering,320 |goto 53.07,38.04 |only if default |or
Reach Skill 335 in Engineering |skill Engineering,335 |goto 53.07,38.04 |only if Gnome |or
step
talk Zebig##18752
Train Fel Iron Bomb |learn Fel Iron Bomb##30310 |goto 54.78,38.51
stickystart "Collect_Fel_Iron_Casing_325"
stickystart "Collect_Elemental_Blasting_Powder_325"
step
collect 10 Handful of Fel Iron Bolts##2378 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |only if default |or
'|complete skill("Engineering") >= 340 |only if Gnome |or
step
label "Collect_Fel_Iron_Casing_325"
collect 5 Fel Iron Casing##23782 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |only if default |or
'|complete skill("Engineering") >= 340 |only if Gnome |or
step
label "Collect_Elemental_Blasting_Powder_325"
collect 5 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 325 |only if default |or
'|complete skill("Engineering") >= 340 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 5 Fel Iron Bomb>_
|tip Stand next to an anvil.
Reach Skill 325 in Engineering |skill Engineering,325 |goto 53.07,38.04 |only if default |or
Reach Skill 340 in Engineering |skill Engineering,340 |goto 53.07,38.04 |only if Gnome |or
step
talk Zebig##18752
Train Adamantite Frame |learn Adamantite Frame##30306 |goto 54.78,38.51
stickystart "Collect_Primal_Earth_336"
step
collect 200 Adamantite Bar##23446 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
label "Collect_Primal_Earth_336"
collect 50 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 50 Adamantite Frames>_
|tip Stand next to an anvil.
|tip Save these, you will need them later.
collect 50 Adamantite Frame##23784 |goto 53.07,38.04 |or
'|complete skill("Engineering") >= 336 |only if default |or
'|complete skill("Engineering") >= 351 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Adamantite Frames>_
|tip Stand next to an anvil.
|tip You may need to make a few more of these.
|tip Each additional Adamantite Frame requires 4 Adamantite Bars and 1 Primal Earth.
Reach Skill 335 in Engineering |skill Engineering,335 |goto 53.07,38.04 |only if default |or
Reach Skill 350 in Engineering |skill Engineering,350 |goto 53.07,38.04 |only if Gnome |or
step
talk Wind Trader Lathrai##18484
buy 1 Schematic: White Smoke Flare##23811 |goto Shattrath City/0 75.15,36.62 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Engineering") >= 355 |only if default |or
'|complete skill("Engineering") >= 370 |only if Gnome |or
step
use the Schematic: White Smoke Flare##23811
Train White Smoke Flare |learn White Smoke Flare##30341
stickystart "Collect_Elemental_Blasting_Powder_325"
step
collect 40 Netherweave Cloth##21877 |or
|tip Farm them from humanoid mobs in Outland or purchase them from the auction house.
'|complete skill("Engineering") >= 355 |only if default |or
'|complete skill("Engineering") >= 370 |only if Gnome |or
step
label "Collect_Elemental_Blasting_Powder_325"
collect 40 Elemental Blasting Powder##23781 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 355 |only if default |or
'|complete skill("Engineering") >= 370 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 40 White Smoke Flares>_
|tip Stand next to an anvil.
|tip You may need to make a few more or less of these.
|tip Each additional White Smoke Flare requires 1 Netherweave Cloth and 1 Elemental Blasting Powder.
Reach Skill 355 in Engineering |skill Engineering,355 |goto 69.35,42.89 |only if default |or
Reach Skill 370 in Engineering |skill Engineering,370 |goto 69.35,42.89 |only if Gnome |or
step
talk Viggz Shinesparked##19661
buy 1 Schematic: Adamantite Rifle##23799 |goto 64.95,69.67 |or
'|complete skill("Engineering") >= 370 |only if default |or
'|complete skill("Engineering") >= 385 |only if Gnome |or
step
use the Schematic: Adamantite Rifle##23799
Train Adamantite Rifle |learn Adamantite Rifle##30313
stickystart "Collect_Fel_Iron_Casing_370"
stickystart "Collect_Adamantite_Frame_370"
step
collect 100 Handful of Fel Iron Bolts##2378 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 370 |only if default |or
'|complete skill("Engineering") >= 385 |only if Gnome |or
step
label "Collect_Fel_Iron_Casing_370"
collect 75 Fel Iron Casing##23782 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 370 |only if default |or
'|complete skill("Engineering") >= 385 |only if Gnome |or
step
label "Collect_Adamantite_Frame_370"
collect 50 Adamantite Frame##23784 |or
|tip You created these in a previous step.
'|complete skill("Engineering") >= 370 |only if default |or
'|complete skill("Engineering") >= 385 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create 25 Adamantite Rifles>_
|tip Stand next to an anvil.
|tip You may need to make a few more or less of these.
|tip Each additional Adamantite Rifle requires 1 Netherweave Cloth and 1 Elemental Blasting Powder.
Reach Skill 370 in Engineering |skill Engineering,370 |goto 69.35,42.89 |only if default |or
Reach Skill 385 in Engineering |skill Engineering,385 |goto 69.35,42.89 |only if Gnome |or
step
Open Your Engineering Crafting Panel:
_<Create Adamantite Rifles>_
|tip Stand next to an anvil.
|tip This is generall the cheapest recipe to max level.
|tip Each additional Adamantite Rifle requires 4 Handfuls of Fel Iron Bolts, 3 Fel Iron Casings, and 2 Adamantite Frames.
|tip The following are some alternative dropped recipes:
|tip Khorium Scope dropped by Sunfury Bowman mobs in Netherstorm.
|tip Hyper-Vision Goggles dropped by Mo'arg Weaponsmiths in Shadowmoon Valley.
|tip Felsteel Boomstick dropped by Doomforge Engineers in Blade's Edge Mountains.
Reach Skill 375 in Engineering |skill Engineering,375 |goto 69.35,42.89 |only if default |or
Reach Skill 390 in Engineering |skill Engineering,390 |goto 69.35,42.89 |only if Gnome |or
step
_Congratulations!_
You Reached Skill 375 in Engineering. |only if default
You Reached Skill 390 in Engineering. |only if Gnome
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('First Aid') > 0 end,
description="This guide will walk you through leveling your First Aid skill from 1-300.",
},[[
step
talk Arnok##3373
|tip Inside the building.
Train Apprentice First Aid |skillmax First Aid,75 |goto Orgrimmar 34.18,84.58
step
collect 50 Linen Cloth##2589 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 40 |or
step
Open Your First Aid Crafting Panel:
_<Create 50 Linen Bandages>_
Reach Skill 40 First in Aid |skill First Aid,40
step
talk Arnok##3373
|tip Inside the building.
Train Heavy Linen Bandage |learn Heavy Linen Bandage##3276 |goto Orgrimmar 34.18,84.58
step
collect 80 Linen Cloth##2589 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 70 |or
step
Open Your First Aid Crafting Panel:
_<Create 40 Heavy Linen Bandages>_
Reach Skill 70 First in Aid |skill First Aid,70
step
talk Arnok##3373
|tip Inside the building.
Train Journeyman First Aid |skillmax First Aid,150 |goto Orgrimmar 34.18,84.58
step
collect 50 Linen Cloth##2589 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 80 |or
step
Open Your First Aid Crafting Panel:
_<Create 25 Heavy Linen Bandages>_
Reach Skill 80 First in Aid |skill First Aid,80
step
talk Arnok##3373
|tip Inside the building.
Train Wool Bandage |learn Wool Bandage##3277 |goto Orgrimmar 34.18,84.58
step
collect 60 Wool Cloth##2592 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 115 |or
step
Open Your First Aid Crafting Panel:
_<Create 60 Wool Bandages>_
Reach Skill 115 First in Aid |skill First Aid,115
step
talk Arnok##3373
|tip Inside the building.
Train Heavy Wool Bandage |learn Heavy Wool Bandage##3278 |goto Orgrimmar 34.18,84.58
step
collect 110 Wool Cloth##2592 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 150 |or
step
Open Your First Aid Crafting Panel:
_<Create 55 Heavy Wool Bandages>_
Reach Skill 150 First in Aid |skill First Aid,150
step
talk Arnok##3373
|tip Inside the building.
Train Silk Bandage |learn Silk Bandage##7928 |goto Orgrimmar 34.18,84.58
step
talk Balai Lok'Wein##13476
buy Expert First Aid - Under Wraps##16084 |n
use the Expert First Aid - Under Wraps##16084
Train Expert First Aid |skillmax First Aid,225 |goto Dustwallow Marsh 36.49,30.36
step
talk Balai Lok'Wein##13476
buy Manual: Heavy Silk Bandage##16112 |goto 36.49,30.36
buy Manual: Mageweave Bandage##16113 |goto 36.49,30.36
|tip Save these for later.
step
collect 50 Silk Cloth##4306 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 180 |or
step
Open Your First Aid Crafting Panel:
_<Create 50 Silk Bandages>_
Reach Skill 180 First in Aid |skill First Aid,180
step
use Manual: Heavy Silk Bandage##16112
Train Heavy Silk Bandage |learn Heavy Silk Bandage##7929
step
collect 90 Silk Cloth##4306 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 210 |or
step
Open Your First Aid Crafting Panel:
_<Create 45 Heavy Silk Bandages>_
Reach Skill 210 First in Aid |skill First Aid,210
step
use Manual: Mageweave Bandage##16113
Train Mageweave Bandage |learn Mageweave Bandage##10840
step
collect 30 Mageweave Cloth##4338 |or
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
'|complete skill("First Aid") >= 225 |or
step
Open Your First Aid Crafting Panel:
_<Create 30 Mageweave Bandages>_
Reach Skill 225 First in Aid |skill First Aid,225
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
_Collect These Items:_
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 96 Mageweave Cloth##4338 |or
'|complete skill("First Aid") >= 260 |or
step
label "Collect_Runecloth_"
collect 85 Runecloth##14047 |or
'|complete skill("First Aid") >= 300 |or
'|complete skill("First Aid") >= 300 |or
step
Enter the building |goto Arathi Highlands 73.42,36.65 < 5 |walk
talk Doctor Gregory Victor##12920
|tip Inside the building.
accept Triage##6622 |goto Arathi Highlands 73.41,36.89
step
use the Triage Bandage##16991
|tip Use it on the injured NPC's on the rugs nearby inside the building.
|tip You must use the Triage Bandage to heal them before they die.
|tip If too many die you will fail the quest.
|tip Press "Ctrl+V" to show their health bars to make it easier.
|tip Try to heal them by priority, in this order:
|tip Critically Injured
|tip Badly Injured
|tip Injured Patients
Save #15# Patients |q 6624/1 |goto 73.03,36.84
|tip If you fail, just abandon the quest and try again.
step
talk Doctor Gregory Victor##12920
|tip Inside the building.
turnin Triage##6624 |goto 73.41,36.89
Train Artisan First Aid |skillmax First Aid,300 |goto 73.41,36.89
|tip You will learn this automatically.
step
Open Your First Aid Crafting Panel:
_<Create 30 Mageweave Bandages>_
Reach Skill 240 First in Aid |skill First Aid,240
step
talk Doctor Gregory Victor##12920
|tip Inside the building.
Tell him _"Teach me how to create and apply a Heavy Mageweave Bandage, Doctor."_
Train Heavy Mageweave Bandage |learn Heavy Mageweave Bandage##10841 |goto 73.41,36.89
step
Open Your First Aid Crafting Panel:
_<Create 33 Heavy Mageweave Bandages>_
Reach Skill 260 First in Aid |skill First Aid,260
step
talk Doctor Gregory Victor##12920
|tip Inside the building.
Tell him _"Teach me how to create and apply a Runecloth Bandage, Doctor."_
Train Runecloth Bandage |learn Runecloth Bandage##18629 |goto 73.41,36.89
step
Open Your First Aid Crafting Panel:
_<Create 45 Runecloth Bandages>_
Reach Skill 290 First in Aid |skill First Aid,290
step
talk Doctor Gregory Victor##12920
|tip Inside the building.
Tell him _"Teach me how to create and apply a Heavy Runecloth Bandage, Doctor."_
Train Heavy Runecloth Bandage |learn Heavy Runecloth Bandage##18630 |goto 73.41,36.89
step
Open Your First Aid Crafting Panel:
_<Create 20 Heavy Runecloth Bandages>_
Reach Skill 300 First in Aid |skill First Aid,300
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\First Aid\\First Aid (300-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Alchemy') > 0 end,
description="This guide will walk you through leveling your First Aid skill from 300-375.",
},[[
step
talk Aresella##18991
|tip Inside the building.
Train Master First Aid |skillmax First Aid,375 |goto Hellfire Peninsula/0 26.2,62.0
step
talk Aresella##18991
|tip Inside the building.
buy Manual: Netherweave Bandage##21992 |goto Hellfire Peninsula/0 26.2,62.0
buy Manual: Heavy Netherweave Bandage##21993 |goto Hellfire Peninsula/0 26.2,62.0
step
collect 140 Runecloth##14047 |or
|tip Refer to Runecloth farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your First Aid Crafting Panel:
_<Create 70 Heavy Runecloth Bandage>_
Reach Skill 330 First in Aid |skill First Aid,330
step
use Manual: Netherweave Bandage##21992
Train Netherweave Bandage |learn Netherweave Bandage##27032
step
collect 90 Netherweave Cloth##21877 |or
|tip Refer to Netherweave Cloth farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
Open Your First Aid Crafting Panel:
_<Create 40 Netherweave Bandage>_
Reach Skill 360 First in Aid |skill First Aid,360
step
use Manual: Heavy Netherweave Bandage##21993
Train Heavy Netherweave Bandage |learn Heavy Netherweave Bandage##27033
step
Open Your First Aid Crafting Panel:
_<Create 20 Heavy Netherweave Bandage>_
Reach Skill 375 First in Aid |skill First Aid,375
step
_Congratulations!_
You Reached 375 First Aid Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Fishing\\Fishing (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Fishing') > 0 end,
description="This guide will walk you through leveling your Fishing skill from 1-300.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
talk Lumak##3332
Train Apprentice Fishing |skillmax Fishing,75 |goto Orgrimmar 69.80,29.21
step
talk Shankys##3333
buy Fishing Pole##6256 |goto 69.99,29.77
|tip You need to be able to equip a fishing pole in order to fish.
'|complete skill("Fishing") >= 300 |or
step
talk Shankys##3333
buy 10 Shiny Bauble##6529 |goto 69.99,29.77
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 55 |or
step
Fish in the Water
|tip Use the "Fishing" skill in your spell book.
|tip Equip the Fishing Pole in your bags.
use the Shiny Bauble##6529+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 55 in Fishing |skill Fishing,55 |goto Durotar 41.65,15.66
step
talk Shankys##3333
buy Strong Fishing Pole##6365 |goto Orgrimmar 69.99,29.77
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
|tip If you can't get one, you can skip this step.
step
Fish in the Water
|tip Equip the "Strong Fishing Pole", if you were able to get one.
use the Shiny Bauble##6529+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 75 in Fishing |skill Fishing,75 |goto 69.76,30.11
step
talk Lumak##3332
Train Journeyman Fishing |skillmax Fishing,150 |goto 69.80,29.21
step
talk Shankys##3333
buy 10 Nightcrawlers##6530 |goto 69.99,29.77
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 150 |or
step
Fish in the Water
use the Nightcrawlers##6530+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 150 in Fishing |skill Fishing,150 |goto Stonetalon Mountains 46.33,61.29
step
Run down the ramp |goto Stranglethorn Vale 28.04,76.53 < 7 |only if walking
Enter the building |goto Stranglethorn Vale 27.47,77.09 < 5 |walk
talk Old Man Heming##2626
|tip Inside the building.
buy Expert Fishing - The Bass and You##16083 |n
use Expert Fishing - The Bass and You##16083
Train Expert Fishing |skillmax Fishing,225 |goto Stranglethorn Vale 27.42,77.16
step
talk Old Man Heming##2626
|tip Inside the building.
buy 20 Bright Baubles##6532 |goto 27.42,77.16
'|complete skill("Fishing") >= 225 |or
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 225 in Fishing |skill Fishing,225 |goto 27.64,76.67
step
Reach Level 35 |ding 35
|tip You must be at least this level before you can accept the quest in the next step.
|tip Use the leveling guides to accomplish this.
step
Follow the path down |goto Dustwallow Marsh 52.55,62.35 < 15 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
accept Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.55,60.21
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Feralas Ahi##16967 |q 6607/1 |goto Feralas 62.38,52.50 |or
|tip You will eventually catch one.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Sar'theris Striker##16968 |q 6607/3 |goto Desolace 26.19,75.50 |or
|tip You will eventually catch one.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Misty Reed Mahi Mahi##16970 |q 6607/2 |goto Swamp of Sorrows 90.45,73.47 |or
|tip You will eventually catch one.
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
collect Savage Coast Blue Sailfin##16969 |q 6607/4 |goto Stranglethorn Vale 29.69,28.37 |or
|tip You will eventually catch one.
step
Follow the path down |goto Dustwallow Marsh 52.55,62.35 < 15 |only if walking
talk Nat Pagle##12919
|tip On a small island in the water.
turnin Nat Pagle, Angler Extreme##6607 |goto Dustwallow Marsh 58.55,60.21
Train Artisan Fishing |skillmax Fishing,300 |goto Dustwallow Marsh 58.55,60.21
|tip You will learn this automatically.
step
talk Shankys##3333
buy 20 Bright Baubles##6532 |goto 69.99,29.77
|tip These will allow you to catch fish easier.
'|complete skill("Fishing") >= 300	 |or
step
Fish in the Water
use the Bright Baubles##6532+
|tip Use it on your Fishing Pole.
|tip These will allow you to catch fish easier.
|tip Try to keep one of these active whenever you are fishing.
Reach Skill 300 in Fishing |skill Fishing,300 |goto The Hinterlands 81.66,82.38
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Herbalism') > 0 end,
description="This guide will walk you through leveling your Herbalism skill from 1-300.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.43,56.78 < 7 |only if walking
Enter the building |goto Orgrimmar 54.75,40.57 < 7 |walk
talk Jandi##3404
|tip Inside the building.
Train Apprentice Herbalist |skillmax Herbalism,75 |goto Orgrimmar 55.62,39.46
step
map Durotar
path	follow smart;	loop on;	ants curved;	dist 30
path	53.29,45.77	55.68,46.14	56.16,50.10	55.24,54.58	55.03,60.41
path	54.89,63.15	54.79,65.91	54.21,71.92	54.98,76.20	52.08,77.83
path	50.18,74.99	49.93,69.47	51.36,67.29	51.81,64.25	51.58,58.68
path	51.88,55.18	50.35,51.24	50.49,48.42
Reach Skill 75 in Herbalism |skill Herbalism,75
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.43,56.78 < 7 |only if walking
Enter the building |goto Orgrimmar 54.75,40.57 < 7 |walk
talk Jandi##3404
|tip Inside the building.
Train Journeyman Herbalist |skillmax Herbalism,150 |goto Orgrimmar 55.62,39.46
step
map The Barrens
path	follow smart;	loop on;	ants curved;	dist 30
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	43.15,60.77
path	43.09,56.64	43.61,52.80	41.37,48.89	42.58,47.61	41.37,44.96
path	43.42,44.79	43.15,42.53	43.28,39.61	42.28,38.89	41.58,37.21
path	42.55,35.50	42.04,33.21	40.69,29.92	40.86,26.76	40.85,25.65
path	41.14,22.86	40.75,20.98	43.41,19.48	45.37,20.92	46.02,22.67
path	47.72,24.15	50.85,22.99	53.51,23.60	58.76,25.08	60.04,27.81
path	60.07,30.45	59.29,36.79	58.73,39.32
Reach Skill 100 in Herbalism |skill Herbalism,100
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
map The Barrens
path	follow smart;	loop on;	ants curved;	dist 30
path	49.34,61.86	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69
path	49.98,75.97	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76
path	46.10,86.08	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36
path	43.80,75.03	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35
path	45.54,68.99	45.03,65.70	43.83,62.98
Reach Skill 125 in Herbalism |skill Herbalism,125
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.43,56.78 < 7 |only if walking
Enter the building |goto Orgrimmar 54.75,40.57 < 7 |walk
talk Jandi##3404
|tip Inside the building.
Train Expert Herbalist |skillmax Herbalism,225 |goto Orgrimmar 55.62,39.46
step
map Wetlands
path	follow smart;	loop on;	ants curved;	dist 30
path	13.6,37.2	15.1,33.5	18.5,32.8	19.2,26.5	21.8,27.2
path	24.6,28.8	28.2,30.5	32.9,27.9	35.5,24.6	38.6,23.2
path	41.1,24.4	46.5,25.4	51.5,29.0	56.5,30.5	59.3,32.9
path	62.7,34.1	61.8,39.2	58.3,44.0	56.4,48.5	44.7,34.5
path	41.0,34.0	35.2,31.8	31.5,36.3	26.9,34.9	18.3,36.6
Reach Skill 160 in Herbalism |skill Herbalism,160
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
map Swamp of Sorrows
path	follow smart;	loop on;	ants curved;	dist 30
path	20.50,54.53	16.62,58.22	15.71,65.71	12.68,68.05	10.73,63.62
path	12.41,55.83	15.50,47.83	18.39,45.92	22.07,39.95	28.92,38.70
path	33.28,38.90	38.62,34.97	47.12,33.93	51.82,34.91	51.62,41.06
path	44.78,45.30	37.49,50.34	33.07,52.19	27.05,54.68	22.47,57.13
Reach Skill 205 in Herbalism |skill Herbalism,205
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
Run up the stairs |goto Orgrimmar 56.43,56.78 < 7 |only if walking
Enter the building |goto Orgrimmar 54.75,40.57 < 7 |walk
talk Jandi##3404
|tip Inside the building.
Train Artisan Herbalist |skillmax Herbalism,300 |goto Orgrimmar 55.62,39.46
step
map Blasted Lands
path	follow smart;	loop on;	ants curved;	dist 30
path	59.95,26.91	63.87,32.24	62.52,37.16	61.93,40.77	63.59,47.87
path	60.16,47.06	56.61,47.07	52.58,50.11	48.61,51.34	45.83,49.50
path	46.56,43.37	45.38,37.03	44.55,26.43	45.95,23.01	49.76,23.71
path	51.28,26.22	52.49,31.62	51.40,36.19	53.41,38.07	55.97,36.24
path	57.46,32.43	58.67,28.99
Reach Skill 275 in Herbalism |skill Herbalism,275
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
|tip You won't be able to gather Sungrass until level 230 Herbalism.
|tip You Won't be able to gather Gromsblood until level 250 Herbalism.
step
map Azshara
path	follow smart;	loop on;	ants curved;	dist 30
path	44.24,35.76	44.97,34.08	45.34,30.56	45.01,27.72	44.00,22.97
path	44.61,20.55	45.91,19.60	48.17,18.74	50.79,18.10	52.77,19.45
path	53.43,20.10	54.10,20.23	56.85,20.66	59.23,18.80	61.89,16.89
path	64.79,17.01	66.41,15.27	69.57,16.37	71.70,16.63	73.96,18.69
path	75.86,21.19	76.87,24.70	79.46,24.05	79.40,26.62	77.14,28.54
path	74.71,29.28	71.72,29.19	69.51,28.09	67.74,26.09	64.29,23.93
path	61.47,23.67	59.32,24.37	56.53,25.81	54.31,28.58	52.61,32.17
path	49.37,31.47	46.94,31.71
Reach Skill 285 in Herbalism |skill Herbalism,285
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
step
map Eastern Plaguelands
path	follow smart;	loop on;	ants curved;	dist 30
path	63.32,54.67	67.59,55.28	72.06,54.50	75.06,53.69	77.43,53.29
path	78.36,55.80	79.17,59.16	80.07,63.69	80.31,67.80	78.88,71.68
path	76.88,73.45	75.52,74.46	74.76,76.67	72.94,78.41	68.81,75.52
path	66.81,76.30	65.03,73.91	64.71,69.43	63.81,66.25	63.25,64.01
path	63.98,59.07
Reach Skill 300 in Herbalism |skill Herbalism,300
|tip Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Herbalism (300-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Alchemy') > 0 end,
description="This guide will walk you through leveling your Herbalism skill from 300-375.",
},[[
step
talk Ruak Stronghorn##18748
|tip Inside the building.
Train Master Herbalism |skillmax Herbalism,375 |goto Hellfire Peninsula/0 52.23,36.26
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 30
path	60.48,46.42	56.45,46.34	51.59,45.14	46.16,44.25	47.26,40.40
path	48.66,37.90	46.93,33.18	50.86,27.89	52.60,26.35	55.98,32.01
path	59.46,30.91	60.89,32.93	62.41,35.51	63.10,30.75	64.79,28.93
path	67.56,26.55	67.08,34.46	67.82,41.32	69.93,43.63	73.76,45.37
path	74.05,51.53	73.38,54.75	69.93,51.24	66.39,52.87	64.98,56.77
path	64.45,60.71	68.39,61.09	70.61,64.28	70.90,68.25	69.27,73.00
path	65.86,73.67	62.75,72.98	59.24,71.17	58.69,79.02	54.99,78.66
path	51.52,81.65	47.16,83.39	43.01,85.25	38.48,89.45	36.04,89.63
path	40.44,84.48	43.09,80.03	42.76,72.41	44.24,68.24	43.01,62.36
path	45.67,60.07	50.43,56.10	54.23,55.83	56.18,53.40	59.22,53.80
path	62.31,52.22
Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
Reach Skill 315 in Herbalism |skill Herbalism,315
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	67.10,38.81	62.46,38.67	59.97,41.63	58.98,45.23	61.74,46.95
path	65.25,47.54	65.35,50.75	62.28,54.16	58.85,53.68	57.61,58.56
path	60.54,63.88	56.40,62.65	53.45,59.34	50.15,56.01	47.12,49.88
path	51.65,45.59	50.05,35.03	52.31,30.84	53.64,25.93	56.98,21.62
path	53.38,21.33	49.37,22.38	45.75,23.81	45.80,29.52	36.92,38.06
path	35.56,36.51	35.74,31.03	33.32,25.86	29.99,21.30	26.84,20.95
path	25.22,24.74	24.17,28.55	26.15,31.67	27.99,35.03	25.80,38.54
path	26.11,40.98	28.93,43.10	30.66,47.71	25.77,48.26	21.24,47.19
path	20.69,52.52	25.56,54.53	27.29,58.31	29.14,63.57	30.45,60.45
path	33.13,57.55	35.33,58.21	34.14,66.09	31.36,70.02	28.68,73.00
path	30.96,77.10	34.57,78.41	40.33,78.38	44.84,77.07	50.46,79.56
path	55.70,80.41	58.17,79.10	58.93,75.16	61.38,73.78	64.22,73.59
path	68.08,79.78	71.62,79.24	73.84,72.52	73.47,63.32	74.36,56.18
path	72.64,45.66
Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
Reach Skill 325 in Herbalism |skill Herbalism,325
step
map Terokkar Forest/0
path follow smart; loop on; ants curved; dist 30
path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
path	35.72,43.53	33.66,44.98
Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
Reach Skill 350 in Herbalism |skill Herbalism,350
step
map Netherstorm/0
path follow smart; loop on; ants curved
path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
path	45.54,79.03	43.73,76.27
Click herbs as you follow the path around this area.
|tip Track them on your minimap with "Find Herbs".
Reach Skill 375 in Herbalism |skill Herbalism,375
step
_Congratulations!_
You Reached 375 Herbalism Skill.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Jewelcrafting (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Jewelcrafting') > 0 end,
description="This guide will walk you through leveling your Jewelcrafting skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Jewelcrafting |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Jewelcrafting") >= 375 |next "Begin_Profession_Leveling" |only if default |or
'|complete skill("Jewelcrafting") >= 380 |next "Begin_Profession_Leveling" |only if Draenei |or
stickystart "Collect_Bronze_Bar_Total"
stickystart "Collect_Mithril_Bar_Total"
stickystart "Collect_Truesilver_Bar_Total"
stickystart "Collect_Thorium_Bar_Total"
stickystart "Collect_Adamantite_Bar_Total"
step
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 35 |only if default |or
'|complete skill("Jewelcrafting") >= 40 |only if Draenei |or
step
label "Collect_Bronze_Bar_Total"
collect 120 Bronze Bar##2841 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Mithril_Bar_Total"
collect 142 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 180 |only if default |or
'|complete skill("Jewelcrafting") >= 185 |only if Draenei |or
step
label "Collect_Truesilver_Bar_Total"
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
label "Collect_Thorium_Bar_Total"
collect 56 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 250 |only if default |or
'|complete skill("Jewelcrafting") >= 255 |only if Draenei |or
step
label "Collect_Adamantite_Bar_Total"
collect 10 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 350 |only if default |or
'|complete skill("Jewelcrafting") >= 355 |only if Draenei |or
stickystart "Collect_Shadowgem_Total"
stickystart "Collect_Moss_Agate_Total"
stickystart "Collect_Aquamarine_Total"
stickystart "Collect_Heavy_Stone_Total"
stickystart "Collect_Solid_Stone_Total"
step
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
label "Collect_Shadowgem_Total"
collect 60 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Moss_Agate_Total"
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Tin Ore with Jewelcrafting.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
label "Collect_Aquamarine_Total"
collect 35 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 225 |only if default |or
'|complete skill("Jewelcrafting") >= 230 |only if Draenei |or
step
label "Collect_Heavy_Stone_Total"
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 120 |only if default |or
'|complete skill("Jewelcrafting") >= 125 |only if Draenei |or
step
label "Collect_Solid_Stone_Total"
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 185 |only if default |or
'|complete skill("Jewelcrafting") >= 190 |only if Draenei |or
stickystart "Collect_Large_Opal_Total"
stickystart "Collect_Azerothian_Diamond_Total"
stickystart "Collect_Huge_Emerald_Total"
step
collect 10 Star Ruby##7910 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Jewelcrafting") >= 260 |only if default |or
'|complete skill("Jewelcrafting") >= 265 |only if Draenei |or
step
label "Collect_Large_Opal_Total"
collect 21 Large Opal##12799 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
label "Collect_Azerothian_Diamond_Total"
collect 20 Azerothian Diamond##12800 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
label "Collect_Huge_Emerald_Total"
collect 10 Huge Emerald##12364 |or
|tip Farm them with Mining or purchase them from the auction house. |notinsticky
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
stickystart "Collect_Flame_Spessarite_Total"
stickystart "Collect_Shadow_Draenite_Total"
stickystart "Collect_Primal_Earth_Total"
stickystart "Collect_Adamantite_Powder_Total"
step
collect 30 Golden Draenite##23112 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |only if default |or
'|complete skill("Jewelcrafting") >= 325 |only if Draenei |or
step
label "Collect_Flame_Spessarite_Total"
collect 7 Flame Spessarite##21929 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
'|complete skill("Jewelcrafting") >= 325 |only if default |or
'|complete skill("Jewelcrafting") >= 330 |only if Draenei |or
step
label "Collect_Shadow_Draenite_Total"
collect 7 Shadow Draenite##23107 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
'|complete skill("Jewelcrafting") >= 340 |only if default |or
'|complete skill("Jewelcrafting") >= 345 |only if Draenei |or
step
label "Collect_Primal_Earth_Total"
collect 10 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Collect_Adamantite_Powder_Total"
collect 40 Adamantite Powder##24243 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can also be Prospected from Adamantite Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Begin_Profession_Leveling"
talk Gelanthis##16624
|tip Inside the building.
buy 1 Jeweler's Kit##20815 |goto Silvermoon City/0 90.91,73.35 |or 2
buy 1 Simple Grinder##20824 |goto 90.91,73.35 |or 2
|tip Save these, you will need them later.
'|complete skill("Jewelcrafting") >= 375 |only if default |or
'|complete skill("Jewelcrafting") >= 380 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Apprentice Jewelcrafting |skillmax Jewelcrafting,75 |goto 90.33,73.83
step
collect 110 Copper Bar##2840 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 35 |only if default |or
'|complete skill("Jewelcrafting") >= 40 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 55 Delicate Copper Wires>_
|tip Save these, you will need them later.
collect 55 Delicate Copper Wire##20816 |or
'|complete skill("Jewelcrafting") >= 51 |only if default |or
'|complete skill("Jewelcrafting") >= 56 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create Delicate Copper Wires>_
|tip Save these, you will need them later.
|tip You may need to make a few more of these.
|tip Each additional Delicate Copper Wire requires 2 Copper Bars.
Reach Skill 35 in Jewelcrafting |skill Jewelcrafting,35 |only if default |or
Reach Skill 40 in Jewelcrafting |skill Jewelcrafting,40 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Tigerseye Band |learn Tigerseye Band##32179 |goto 90.33,73.83
stickystart "Collect_Delicate_Copper_Wire_50"
step
collect 15 Tigerseye##818 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
label "Collect_Delicate_Copper_Wire_50"
collect 15 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 50 |only if default |or
'|complete skill("Jewelcrafting") >= 55 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 15 Tigerseye Bands>_
Reach Skill 50 in Jewelcrafting |skill Jewelcrafting,50 |only if default |or
Reach Skill 55 in Jewelcrafting |skill Jewelcrafting,55 |only if Draenei |or
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Journeyman Jewelcrafting |skillmax Jewelcrafting,150 |goto 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Bronze Setting |learn Bronze Setting##25278 |goto 90.33,73.83
step
collect 100 Bronze Bar##2841 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 80 |only if default |or
'|complete skill("Jewelcrafting") >= 85 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 50 Bronze Settings>_
|tip Save these, you will need them later.
collect 50 Bronze Setting##20817 |or
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create Bronze Settings>_
|tip Save these, you will need them later.
Reach Skill 80 in Jewelcrafting |skill Jewelcrafting,80 |only if default |or
Reach Skill 85 in Jewelcrafting |skill Jewelcrafting,85 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Gloom Band |learn Gloom Band##25287 |goto 90.33,73.83
stickystart "Collect_Bronze_Setting_100"
stickystart "Collect_Delicate_Copper_Wire_100"
step
collect 40 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 100 |or |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
label "Collect_Bronze_Setting_100"
collect 20 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
label "Collect_Delicate_Copper_Wire_100"
collect 40 Delicate Copper Wire##20816 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 100 |only if default |or
'|complete skill("Jewelcrafting") >= 105 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Gloom Bands>_
|tip You may need to create a few more or less of these.
|tip Each additional Gloom Band requires 2 Shadowgems and 1 Delicate Copper Wire.
Reach Skill 100 in Jewelcrafting |skill Jewelcrafting,100 |only if default |or
Reach Skill 105 in Jewelcrafting |skill Jewelcrafting,105 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Ring of Twilight Shadows |learn Ring of Twilight Shadows##25318 |goto 90.33,73.83
stickystart "Collect_Shadowgem_110"
step
collect 20 Bronze Bar##2841 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
label "Collect_Shadowgem_110"
collect 20 Shadowgem##1210 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Copper Ore and Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 110 |only if default |or
'|complete skill("Jewelcrafting") >= 115 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Rings of Twilight Shadows>_
Reach Skill 110 in Jewelcrafting |skill Jewelcrafting,110 |only if default |or
Reach Skill 115 in Jewelcrafting |skill Jewelcrafting,115 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Heavy Stone Statue |learn Heavy Stone Statue##32807 |goto 90.33,73.83
step
collect 80 Heavy Stone##2838 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 120 |only if default |or
'|complete skill("Jewelcrafting") >= 125 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Heavy Stone Statues>_
Reach Skill 120 in Jewelcrafting |skill Jewelcrafting,120 |only if default |or
Reach Skill 125 in Jewelcrafting |skill Jewelcrafting,125 |only if Draenei |or
step
talk Jandia##4877
|tip Inside the building.
buy 1 Design: Pendant of the Agate Shield##20970 |goto Thousand Needles/0 46.0,51.6 |or
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
stickystart "Collect_Bronze_Setting_150"
step
collect 30 Moss Agate##1206 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Tin Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
label "Collect_Bronze_Setting_150"
collect 30 Bronze Setting##20817 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 150 |only if default |or
'|complete skill("Jewelcrafting") >= 155 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Pendants of the Agate Shield>_
Reach Skill 150 in Jewelcrafting |skill Jewelcrafting,150 |only if default |or
Reach Skill 155 in Jewelcrafting |skill Jewelcrafting,155 |only if Draenei |or
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Expert Jewelcrafting |skillmax Jewelcrafting,225 |goto 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Mithril Filigree |learn Mithril Filigree##25615 |goto 90.33,73.83
step
collect 142 Mithril Bar##3860 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 180 |only if default |or
'|complete skill("Jewelcrafting") >= 185 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 71 Mithril Filigrees>_
|tip Save these, you will need them later.
collect 71 Mithril Filigree##20963 |or
'|complete skill("Jewelcrafting") >= 180 |only if default |or
'|complete skill("Jewelcrafting") >= 185 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create Mithril Filigrees>_
|tip Save 71 of these, you will need them later.
|tip You may need to create a few more of these.
|tip Each additional Mithril Filigree requires 2 Mithril Bars.
Reach Skill 180 in Jewelcrafting |skill Jewelcrafting,180 |only if default |or
Reach Skill 185 in Jewelcrafting |skill Jewelcrafting,185 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Solid Stone Statue |learn Solid Stone Statue##32808 |goto 90.33,73.83
step
collect 90 Solid Stone##7912 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 185 |only if default |or
'|complete skill("Jewelcrafting") >= 190 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 9 Solid Stone Statues>_
|tip You may need to create a few more or less of these.
|tip Each additional Solid Stone Statue requires 10 Solid Stone.
Reach Skill 185 in Jewelcrafting |skill Jewelcrafting,185 |only if default |or
Reach Skill 190 in Jewelcrafting |skill Jewelcrafting,190 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Engraved Truesilver Ring |learn Engraved Truesilver Ring##25620 |goto 90.33,73.83
stickystart "Collect_Mithril_Filigree_210"
step
collect 28 Truesilver Bar##6037 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
label "Collect_Mithril_Filigree_210"
collect 56 Mithril Filigree##20963 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 210 |only if default |or
'|complete skill("Jewelcrafting") >= 215 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 28 Engraved Truesilver Rings>_
|tip You may need to create a few more or less of these.
|tip Each additional Engraved Truesilver Ring requires 1 Truesilver Bars and 2 Mithril Filigrees.
Reach Skill 210 in Jewelcrafting |skill Jewelcrafting,210 |only if default |or
Reach Skill 215 in Jewelcrafting |skill Jewelcrafting,215 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Aquamarine Signet |learn Aquamarine Signet##26874 |goto 90.33,73.83
stickystart "Collect_Flask_of_Mojo_220"
step
collect 30 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 220 |only if default |or
'|complete skill("Jewelcrafting") >= 225 |only if Draenei |or
step
label "Collect_Flask_of_Mojo_220"
collect 40 Flask of Mojo##8151 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 220 |only if default |or
'|complete skill("Jewelcrafting") >= 225 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Aquamarine Signet>_
Reach Skill 220 in Jewelcrafting |skill Jewelcrafting,220 |only if default |or
Reach Skill 225 in Jewelcrafting |skill Jewelcrafting,225 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Aquamarine Pendant of the Warrior |learn Aquamarine Pendant of the Warrior##26876 |goto 90.33,73.83
stickystart "Collect_Mithril_Filigree_225"
step
collect 5 Aquamarine##7909 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Tin Ore, Iron Ore, and Mithril Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 225 |only if default |or
'|complete skill("Jewelcrafting") >= 230 |only if Draenei |or
step
label "Collect_Mithril_Filigree_225"
collect 15 Mithril Filigree##20963 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 225 |only if default |or
'|complete skill("Jewelcrafting") >= 230 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Aquamarine Pendants of the Warrior>_
Reach Skill 225 in Jewelcrafting |skill Jewelcrafting,225 |only if default |or
Reach Skill 230 in Jewelcrafting |skill Jewelcrafting,230 |only if Draenei |or
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Kalinda##19775
|tip Inside the building.
Train Artisan Jewelcrafting |skillmax Jewelcrafting,300 |goto 90.33,73.83
step
talk Kalinda##19775
|tip Inside the building.
Train Thorium Setting |learn Thorium Setting##26880 |goto 90.33,73.83
step
collect 56 Thorium Bar##12359 |or
|tip Create them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 250 |only if default |or
'|complete skill("Jewelcrafting") >= 255 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 56 Thorium Settings>_
|tip Save these, you will need them later.
collect 56 Thorium Setting##21752 |or
'|complete skill("Jewelcrafting") >= 250 |only if default |or
'|complete skill("Jewelcrafting") >= 255 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create Thorium Settings>_
|tip Save these, you will need them later.
|tip You may need to create a few more of these.
|tip Each additional Thorium Setting requires 1 Thorium Bar.
Reach Skill 250 in Jewelcrafting |skill Jewelcrafting,250 |only if default |or
Reach Skill 255 in Jewelcrafting |skill Jewelcrafting,255 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Ruby Pendant of Fire |learn Ruby Pendant of Fire##26883 |goto 90.33,73.83
stickystart "Collect_Thorium_Setting_260"
step
collect 10 Star Ruby##7910 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Iron Ore, Mithril Ore, and Thorium Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 260 |only if default |or
'|complete skill("Jewelcrafting") >= 265 |only if Draenei |or
step
label "Collect_Thorium_Setting_260"
collect 10 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 260 |only if default |or
'|complete skill("Jewelcrafting") >= 265 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Ruby Pendants of Fire>_
Reach Skill 260 in Jewelcrafting |skill Jewelcrafting,260 |only if default |or
Reach Skill 265 in Jewelcrafting |skill Jewelcrafting,265 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Simple Opal Ring |learn Simple Opal Ring##26902 |goto 90.33,73.83
stickystart "Collect_Thorium_Setting_281"
step
collect 21 Large Opal##12799 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
label "Collect_Thorium_Setting_281"
collect 21 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 281 |only if default |or
'|complete skill("Jewelcrafting") >= 286 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 21 Simple Opal Rings>_
|tip You may need to create a few more or less of these.
|tip Each additional Simple Opal Ring requires 1 Large Opal and 1 Thorium Setting.
Reach Skill 281 in Jewelcrafting |skill Jewelcrafting,281 |only if default |or
Reach Skill 286 in Jewelcrafting |skill Jewelcrafting,286 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Diamond Focus Ring |learn Diamond Focus Ring##36526 |goto 90.33,73.83
stickystart "Collect_Thorium_Setting_295"
step
collect 20 Azerothian Diamond##12800 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
label "Collect_Thorium_Setting_295"
collect 20 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 295 |only if default |or
'|complete skill("Jewelcrafting") >= 300 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 20 Diamond Focus Rings>_
|tip You may need to create a few more or less of these.
|tip Each additional Diamond Focus Ring requires 1 Azerothian Diamond and 1 Thorium Setting.
Reach Skill 295 in Jewelcrafting |skill Jewelcrafting,295 |only if default |or
Reach Skill 300 in Jewelcrafting |skill Jewelcrafting,300 |only if Draenei |or
step
talk Kalinda##19775
|tip Inside the building.
Train Emerald Lion Ring |learn Emerald Lion Ring##34961 |goto 90.33,73.83
stickystart "Collect_Thorium_Setting_300"
step
collect 10 Huge Emerald##12364 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Mithril Ore, and Thorium Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
step
label "Collect_Thorium_Setting_300"
collect 5 Thorium Setting##21752 |or
|tip You created these in a previous step.
'|complete skill("Jewelcrafting") >= 300 |only if default |or
'|complete skill("Jewelcrafting") >= 305 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 5 Emerald Lion Rings>_
Reach Skill 300 in Jewelcrafting |skill Jewelcrafting,300 |only if default |or
Reach Skill 305 in Jewelcrafting |skill Jewelcrafting,305 |only if Draenei |or
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Hellfire Peninsula/0 56.41,37.79 < 7 |walk
talk Kalaen##18751
|tip Inside the building.
Learn Master Jewelcrafting |skillmax Jewelcrafting,375 |goto 56.78,37.79
step
talk Kalaen##18751
|tip Inside the building.
buy 1 Design: Brilliant Golden Draenite##23148 |goto 56.78,37.79 |or
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |only if default |or
'|complete skill("Jewelcrafting") >= 325 |only if Draenei |or
step
use the Design: Brilliant Golden Draenite##23148
Train Brilliant Golden Draenite |learn Brilliant Golden Draenite##28938
step
collect 30 Golden Draenite##23112 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut any low level gem for points.
'|complete skill("Jewelcrafting") >= 320 |only if default |or
'|complete skill("Jewelcrafting") >= 325 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 30 Brilliant Golden Draenite>_
|tip You can cut any low level gem for points.
Reach Skill 320 in Jewelcrafting |skill Jewelcrafting,320 |only if default |or
Reach Skill 325 in Jewelcrafting |skill Jewelcrafting,325 |only if Draenei |or
step
talk Kalaen##18751
|tip Inside the building.
buy 1 Design: Glinting Flame Spessarite##23137 |goto 56.78,37.79 |or
'|complete skill("Jewelcrafting") >= 325 |only if default |or
'|complete skill("Jewelcrafting") >= 330 |only if Draenei |or
step
use the Design: Glinting Flame Spessarite##23137
Train Glinting Flame Spessarite |learn Glinting Flame Spessarite##28914
step
collect 7 Flame Spessarite##21929 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
'|complete skill("Jewelcrafting") >= 325 |only if default |or
'|complete skill("Jewelcrafting") >= 330 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 7 Glinting Flame Spessarite>_
|tip You can cut Flame Spessarite, Blood Garnet, Deep Peridot, and Azure Moonstone for points.
Reach Skill 325 in Jewelcrafting |skill Jewelcrafting,325 |only if default |or
Reach Skill 330 in Jewelcrafting |skill Jewelcrafting,330 |only if Draenei |or
step
talk Kalaen##18751
|tip Inside the building.
Train Mercurial Adamantite |learn Mercurial Adamantite##38068 |goto 56.78,37.79
stickystart "Collect_Adamantite_Powder_335"
step
collect 10 Primal Earth##22452 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
label "Collect_Adamantite_Powder_335"
collect 40 Adamantite Powder##24243 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can also be Prospected from Adamantite Ore with Jewelcrafting.
'|complete skill("Jewelcrafting") >= 335 |only if default |or
'|complete skill("Jewelcrafting") >= 340 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Mercurial Adamantite>_
|tip Save these, you will need them later.
Reach Skill 335 in Jewelcrafting |skill Jewelcrafting,335 |only if default |or
Reach Skill 340 in Jewelcrafting |skill Jewelcrafting,340 |only if Draenei |or
step
talk Kalaen##18751
|tip Inside the building.
buy 1 Design: Sovereign Shadow Draenite##23147 |goto 56.78,37.79 |or
'|complete skill("Jewelcrafting") >= 340 |only if default |or
'|complete skill("Jewelcrafting") >= 345 |only if Draenei |or
step
use the Design: Sovereign Shadow Draenite##23147
Train Sovereign Shadow Draenite |learn Sovereign Shadow Draenite##28936
step
collect 7 Shadow Draenite##23107 |or
|tip Farm them with Mining or purchase them from the auction house.
|tip They can be Prospected from Thorium Ore, Fel Iron Ore, and Adamantite Ore with Jewelcrafting.
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
'|complete skill("Jewelcrafting") >= 340 |only if default |or
'|complete skill("Jewelcrafting") >= 345 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 7 Sovereign Shadow Draenite>_
|tip You can cut Flame Spessarite, Shadow Draenite, and Golden Draenite for points.
Reach Skill 340 in Jewelcrafting |skill Jewelcrafting,340 |only if default |or
Reach Skill 345 in Jewelcrafting |skill Jewelcrafting,345 |only if Draenei |or
step
talk Kalaen##18751
|tip Inside the building.
Train Heavy Adamantite Ring |learn Heavy Adamantite Ring##31052 |goto 56.78,37.79
step
collect 10 Adamantite Bar##23446 |or
|tip Farm them with Mining or purchase them from the auction house.
'|complete skill("Jewelcrafting") >= 350 |only if default |or
'|complete skill("Jewelcrafting") >= 355 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create 10 Heavy Adamantite Ring>_
Reach Skill 350 in Jewelcrafting |skill Jewelcrafting,350 |only if default |or
Reach Skill 355 in Jewelcrafting |skill Jewelcrafting,355 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create Rare Gems>_
|tip From this point, you will have to make what you can find from Designs.
|tip Check the auction house for Designs and cut gems for skill points.
Reach Skill 365 in Jewelcrafting |skill Jewelcrafting,365 |only if default |or
Reach Skill 370 in Jewelcrafting |skill Jewelcrafting,370 |only if Draenei |or
step
Open Your Jewelcrafting Crafting Panel:
_<Create Meta Gems>_
|tip From this point, it's best to cut Earthstorm and Skyfire Diamonds.
|tip Purchase a design based upon your reputation status and what you can use or sell.
|tip Insightful Earthstorm Diamond can be purchased from Almaador in Shattrath City if Friendly with The Sha'tar.
|tip Bracing Earthstorm Diamond can be purchased from Ythyar in Karazhan if Revered with the Consortium.
|tip Powerful Earthstorm Diamond can be purchased from Ythyar in Karazhan if Honored with the Consortium.
|tip Swift Skyfire Diamond can be purchased from Paulsta'ats in Nagrand if Honored with the Consortium.
|tip Enigmatic Skyfire Diamond can be purchased from Alurmi in the Caverns of Time if Honored with the Keepers of Time.
Reach Skill 375 in Jewelcrafting |skill Jewelcrafting,375 |only if default |or
Reach Skill 380 in Jewelcrafting |skill Jewelcrafting,380 |only if Draenei |or
step
_Congratulations!_
You Reached Skill 375 in Jewelcrafting. |only if default
You Reached Skill 380 in Jewelcrafting. |only if Draenei
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Leatherworking (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Leatherworking') > 0 end,
description="This guide will walk you through leveling your Leatherworking skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train Apprentice professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 62.22,45.65 < 5 |walk
talk Karolek##3365
|tip Inside the building.
Train Apprentice Leatherworking |skillmax Leatherworking,75 |goto Orgrimmar/0 62.80,44.15
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Leatherworking |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Leatherworking") >= 375 |or |next "Begin_Profession_Leveling"
stickystart "Collect_Light_Leather_Total"
stickystart "Collect_Medium_Leather_Total"
stickystart "Collect_Heavy_Hide_Total"
stickystart "Collect_Heavy_Leather_Total"
stickystart "Collect_Thick_Leather_Total"
stickystart "Collect_Rugged_Leather_Total"
step
collect 57 Ruined Leather Scraps##2934 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Leatherworking") >= 20 |or
step
label "Collect_Light_Leather_Total"
collect 375 Light Leather##2318 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 125 |or
step
label "Collect_Medium_Leather_Total"
collect 352 Medium Leather##2319 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 155 |or
step
label "Collect_Heavy_Hide_Total"
collect 20 Heavy Hide##4235 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 171 |or
step
label "Collect_Heavy_Leather_Total"
collect 215 Heavy Leather##4234 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 200 |or
step
label "Collect_Thick_Leather_Total"
collect 643 Thick Leather##4304 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 260 |or
step
label "Collect_Rugged_Leather_Total"
collect 384 Rugged Leather##8170 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 300 |or
stickystart "Collect_Thick_Clefthoof_Leather_Total"
stickystart "Collect_Fel_Hide_Total"
step
collect 1250 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Leatherworking") >= 336 |or
step
label "Collect_Thick_Clefthoof_Leather_Total"
collect 24 Thick Clefthoof Leather##25708 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 370 |or
step
label "Collect_Fel_Hide_Total"
collect 24 Fel Hide##25707 |or
|tip Farm them with Skinning or purchase them from the auction house. |notinsticky
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Leatherworking") >= 375 |or
step
label "Begin_Profession_Leveling"
collect 57 Ruined Leather Scraps##2934 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
'|complete skill("Leatherworking") >= 20 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 19 Light Leather>_
|tip Save these, you will need them later.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
collect 19 Light Leather##2318 |or
'|complete skill("Leatherworking") >= 20 |or
step
Open Your Leatherworking Crafting Panel:
_<Create Light Leather>_
|tip Save 19 of these, you will need them later.
|tip You can also use 20 Light Leather to make 20 Light Armor Kits.
Reach Skill 20 in Leatherworking |skill Leatherworking,20
step
collect 40 Light Leather##2318 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 45 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 40 Light Leather Kits>_
|tip You may need to create a few more or less of these.
|tip Each additional Light Leather Kit requires 1 Light Leather.
Reach Skill 45 in Leatherworking |skill Leatherworking,45
step
collect 42 Light Leather##2318 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 55 |or
step
talk Tamar##3366
|tip Inside the building.
buy 21 Coarse Thread##2320 |goto Orgrimmar/0 63.05,45.53 |or
'|complete skill("Leatherworking") >= 55 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 21 Handstitched Leather Cloaks>_
|tip You may need to create a few more or less of these.
|tip Each additional Handstitched Leather Cloak requires 2 Light Leather and 1 Coarse Thread.
Reach Skill 55 in Leatherworking |skill Leatherworking,55
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Journeyman Leatherworking |skillmax Leatherworking,150 |goto Orgrimmar/0 62.80,44.15
step
talk Karolek##3365
|tip Inside the building.
Train Embossed Leather Gloves |learn Embossed Leather Gloves##3756 |goto Orgrimmar/0 62.80,44.15
step
collect 165 Light Leather##2318 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 100 |or
step
talk Tamar##3366
|tip Inside the building.
buy 180 Coarse Thread##2320 |goto Orgrimmar/0 63.05,45.53 |or
|tip Save these, you will need them later.
'|complete skill("Leatherworking") >= 100 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 55 Embossed Leather Gloves>_
|tip You may need to create a few more or less of these.
|tip Each additional Embossed Leather Glove requires 3 Light Leather and 2 Coarse Thread.
Reach Skill 100 in Leatherworking |skill Leatherworking,100
step
talk Karolek##3365
|tip Inside the building.
Train Fine Leather Belt |learn Fine Leather Belt##3763 |goto Orgrimmar/0 62.80,44.15
step
collect 210 Light Leather##2318 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 125 |or
step
talk Tamar##3366
|tip Inside the building.
buy 70 Coarse Thread##2320 |goto Orgrimmar/0 63.05,45.53 |or
|tip You bought these in a previous step.
'|complete skill("Leatherworking") >= 125 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 35 Fine Leather Belts>_
|tip You may need to create a few more or less of these.
|tip Each additional Fine Leather Belt requires 6 Light Leather and 2 Coarse Thread.
Reach Skill 125 in Leatherworking |skill Leatherworking,125
step
talk Karolek##3365
|tip Inside the building.
Train Dark Leather Boots |learn Dark Leather Boots##2167 |goto Orgrimmar/0 62.80,44.15
step
collect 72 Medium Leather##2319 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 137 |or
step
talk Tamar##3366
|tip Inside the building.
buy 36 Fine Thread##2321 |goto Orgrimmar/0 63.05,45.53 |or 2
buy 18 Gray Dye##4340 |goto Orgrimmar/0 63.05,45.53 |or 2
'|complete skill("Leatherworking") >= 137 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 18 Dark Leather Boots>_
|tip You may need to create a few more or less of these.
|tip Each additional Dark Leather Boot requires 4 Medium Leather, 2 Fine Thread, and 1 Gray Dye.
Reach Skill 137 in Leatherworking |skill Leatherworking,137
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Expert Leatherworking |skillmax Leatherworking,225 |goto Orgrimmar/0 62.80,44.15
step
talk Karolek##3365
|tip Inside the building.
Train Dark Leather Pants |learn Dark Leather Pants##7135 |goto Orgrimmar/0 62.80,44.15
step
collect 240 Medium Leather##2319 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 150 |or
step
talk Tamar##3366
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Orgrimmar/0 63.05,45.53 |or 2
buy 20 Gray Dye##4340 |goto Orgrimmar/0 63.05,45.53 |or 2
'|complete skill("Leatherworking") >= 150 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Dark Leather Pants>_
|tip You may need to create a few more or less of these.
|tip Each additional Dark Leather Pant requires 12 Medium Leather, 1 Fine Thread, and 1 Gray Dye.
Reach Skill 150 in Leatherworking |skill Leatherworking,150
step
talk Karolek##3365
|tip Inside the building.
Train Heavy Leather |learn Heavy Leather##20649 |goto Orgrimmar/0 62.80,44.15
step
collect 40 Medium Leather##2319 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 155 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 8 Heavy Leather>_
|tip You may need to create a few more or less of these.
|tip Each additional Heavy Leather requires 5 Medium Leather.
Reach Skill 155 in Leatherworking |skill Leatherworking,155
step
talk Karolek##3365
|tip Inside the building.
Train Cured Heavy Hide |learn Cured Heavy Hide##3818 |goto Orgrimmar/0 62.80,44.15
step
collect 20 Heavy Hide##4235 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 171 |or
step
talk Tamar##3366
|tip Inside the building.
buy 60 Salt##4289 |goto Orgrimmar/0 63.05,45.53 |or
'|complete skill("Leatherworking") >= 171 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Cured Heavy Hides>_
|tip Save these, you will need them later.
collect 20 Cured Heavy Hide##4236 |or
'|complete skill("Leatherworking") >= 171 |or
step
Open Your Leatherworking Crafting Panel:
_<Create Cured Heavy Hides>_
|tip Save 20 of these, you will need them later.
|tip You may need to create a few more of these.
|tip Each additional Cured Heavy Hide requires 1 Heavy Hide and 3 Salt.
Reach Skill 165 in Leatherworking |skill Leatherworking,165
step
talk Karolek##3365
|tip Inside the building.
Train Heavy Armor Kit |learn Heavy Armor Kit##3780 |goto Orgrimmar/0 62.80,44.15
step
collect 95 Heavy Leather##4234 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 180 |or
step
talk Tamar##3366
|tip Inside the building.
buy 39 Fine Thread##2321 |goto Orgrimmar/0 63.05,45.53 |or
|tip Save these, you will need them later.
'|complete skill("Leatherworking") >= 180 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 19 Heavy Armor Kits>_
|tip You may need to create a few more of these.
|tip Each additional Heavy Armor Kit requires 5 Heavy Leather and 1 Fine Thread.
Reach Skill 180 in Leatherworking |skill Leatherworking,180
step
talk Karolek##3365
|tip Inside the building.
Train Barbaric Shoulders |learn Barbaric Shoulders##7151 |goto Orgrimmar/0 62.80,44.15
stickystart "Collect_Cured_Heavy_Hide_190"
step
collect 80 Heavy Leather##4234 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 190 |or
step
label "Collect_Cured_Heavy_Hide_190"
collect 10 Cured Heavy Hide##4236 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 190 |or
step
talk Tamar##3366
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Orgrimmar/0 63.05,45.53 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 190 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Barbaric Shoulders>_
Reach Skill 190 in Leatherworking |skill Leatherworking,190
step
talk Karolek##3365
|tip Inside the building.
Train Guardian Gloves |learn Guardian Gloves##7156 |goto Orgrimmar/0 62.80,44.15
stickystart "Collect_Cured_Heavy_Hide_200"
step
collect 40 Heavy Leather##4234 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 200 |or
step
label "Collect_Cured_Heavy_Hide_200"
collect 10 Cured Heavy Hide##4236 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 200 |or
step
talk Tamar##3366
|tip Inside the building.
buy 15 Silken Thread##4291 |goto Orgrimmar/0 63.05,45.53 |or
|tip Save these, you will need them later.
'|complete skill("Leatherworking") >= 200 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Guardian Gloves>_
Reach Skill 200 in Leatherworking |skill Leatherworking,200
step
talk Karolek##3365
|tip Inside the building.
Train Thick Armor Kit |learn Thick Armor Kit##10487 |goto Orgrimmar/0 62.80,44.15
step
collect 25 Thick Leather##4304 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 205 |or
step
talk Tamar##3366
|tip Inside the building.
buy 5 Silken Thread##4291 |goto Orgrimmar/0 63.05,45.53 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 205 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 5 Thick Armor Kits>_
Reach Skill 205 in Leatherworking |skill Leatherworking,205
step
Reach Level 35 |ding 35
|tip You must be at least this level before you can learn the next rank of this profession.
|tip Use the leveling guides to accomplish this.
step
talk Karolek##3365
|tip Inside the building.
Train Artisan Leatherworking |skillmax Leatherworking,300 |goto Orgrimmar/0 62.80,44.15
step
talk Karolek##3365
|tip Inside the building.
Train Nightscape Headband |learn Nightscape Headband##10507 |goto Orgrimmar/0 62.80,44.15
step
collect 200 Thick Leather##4304 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 235 |or
step
talk Tamar##3366
|tip Inside the building.
buy 166 Silken Thread##4291 |goto Orgrimmar/0 63.05,45.53 |or
|tip Save these, you will need them later.
'|complete skill("Leatherworking") >= 235 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 40 Nightscape Headbands>_
|tip You may need to make a few more or less of these.
|tip Each additional Nightscape Headband requires 5 Thick Leather and 2 Silken Thread.
Reach Skill 235 in Leatherworking |skill Leatherworking,235
step
talk Karolek##3365
|tip Inside the building.
Train Nightscape Pants |learn Nightscape Pants##10548 |goto Orgrimmar/0 62.80,44.15
step
collect 210 Thick Leather##4304 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 250 |or
step
talk Tamar##3366
|tip Inside the building.
buy 60 Silken Thread##4291 |goto Orgrimmar/0 63.05,45.53 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 250 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 15 Nightscape Pants>_
Reach Skill 250 in Leatherworking |skill Leatherworking,250
step
talk Karolek##3365
|tip Inside the building.
Train Nightscape Boots |learn Nightscape Boots##10558 |goto Orgrimmar/0 62.80,44.15
step
collect 208 Thick Leather##4304 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 260 |or
step
talk Tamar##3366
|tip Inside the building.
buy 26 Silken Thread##4291 |goto Orgrimmar/0 63.05,45.53 |or
|tip You purchased these in a previous step.
'|complete skill("Leatherworking") >= 260 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 13 Nightscape Boots>_
|tip You may need to make a few more or less of these.
|tip Each additional Nightscape Boot requires 16 Thick Leather and 2 Silken Thread.
Reach Skill 260 in Leatherworking |skill Leatherworking,260
step
talk Werg Thickblade##12943
buy Pattern: Wicked Leather Gauntlets##15725 |goto Tirisfal Glades 83.2,69.6 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Leatherworking") >= 290 |or
step
talk Werg Thickblade##12943
buy 33 Black Dye##2325 |goto Tirisfal Glades 83.2,69.6 |or 2
buy 33 Rune Thread##14341 |goto Tirisfal Glades 83.2,69.6 |or 2
'|complete skill("Leatherworking") >= 290 |or
step
use the Pattern: Wicked Leather Gauntlets##15725
Learn Wicked Leather Gauntlets |learn Wicked Leather Gauntlets##19049
step
collect 264 Rugged Leather##8170 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 290 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 33 Wicked Leather Gauntlets>_
|tip You may need to make a few more or less of these.
|tip Each additional Wicked Leather Gauntlet requires 8 Rugged Leather, 1 Black Dye, and 1 Rune Thread.
Reach Skill 290 in Leatherworking |skill Leatherworking,290
step
Follow the path up |goto Felwood 43.08,21.31 < 20 |only if walking
kill Jadefire Trickster##7107+
collect Pattern: Wicked Leather Headband##15744 |goto Felwood 42.00,18.87 |or
|tip This pattern might take a while to farm.
|tip It can also be purchased from the auction house.
You can find more Jadefire Tricksters around:
[Felwood 42.87,15.20]
[Felwood 39.53,20.61]
'|complete skill("Leatherworking") >= 300 or knowsrecipe(19071) |or
step
use the Pattern: Wicked Leather Headband##15744
Train Wicked Leather Headband |learn Wicked Leather Headband##19071
step
collect 120 Rugged Leather##8170 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 300 |or
step
talk Tamar##3366
|tip Inside the building.
buy 10 Black Dye##2325 |goto Orgrimmar/0 63.05,45.53 |or 2
buy 10 Rune Thread##14341 |goto Orgrimmar/0 63.05,45.53 |or 2
'|complete skill("Leatherworking") >= 300 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 10 Wicked Leather Headbands>_
Reach Skill 300 in Leatherworking |skill Leatherworking,300
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Barim Spilthoof##18754
Learn Master Leatherworking |skillmax Leatherworking,375 |goto Hellfire Peninsula/0 56.22,38.70
step
talk Barim Spilthoof##18754
Train Knothide Armor Kit |learn Knothide Armor Kit##32456 |goto 56.22,38.70
step
collect 140 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip You can also make Wicked Leather Belts to 325.
|tip Each Wicked Leather Belt requires 14 Rugged Leather, 2 Black Dye, and 2 Rune Thread.
'|complete skill("Leatherworking") >= 325 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 35 Knothide Armor Kits>_
|tip You may need to create a few more or less of these.
|tip Each additional Knothide Armor Kit requires 4 Knothide Leather.
|tip You can also make Wicked Leather Belts to 325.
|tip Each Wicked Leather Belt requires 14 Rugged Leather, 2 Black Dye, and 2 Rune Thread.
Reach Skill 325 in Leatherworking |skill Leatherworking,325
step
talk Cro Threadstrong##19196
buy 1 Pattern: Heavy Knothide Leather##25720 |goto Shattrath City/0 67.31,67.85 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Leatherworking") >= 335 |or
step
use the Pattern: Heavy Knothide Leather##25720
Train Heavy Knothide Leather |learn Heavy Knothide Leather##32455
step
collect 1110 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 335 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 222 Heavy Knothide Leather>_
|tip Save these, you will need them later.
collect 222 Heavy Knothide Leather##23793 |or
'|complete skill("Leatherworking") >= 336 |or
step
Open Your Leatherworking Crafting Panel:
_<Create Heavy Knothide Leather>_
|tip Save 222 of these, you will need them later.
|tip You may need to create a few more or less of these.
|tip Each additional Heavy Knothide Leather requires 5 Knothide Leather.
Reach Skill 335 in Leatherworking |skill Leatherworking,335
step
talk Barim Spilthoof##18754
Train Thick Draenic Vest |learn Thick Draenic Vest##32473 |goto Hellfire Peninsula/0 56.22,38.70
step
collect 60 Heavy Knothide Leather##23793 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 350 |or
step
talk Barim Spilthoof##18754
buy 60 Rune Thread##14341 |goto 56.22,38.70 |or
'|complete skill("Leatherworking") >= 350 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 20 Thick Draenic Vests>_
|tip You may need to create a few more or less of these.
|tip Each additional Thick Draenic Vest requires 3 Heavy Knothide Leather and 3 Rune Thread.
Reach Skill 350 in Leatherworking |skill Leatherworking,350
step
talk Barim Spilthoof##18754
Train Heavy Knothide Armor Kit |learn Heavy Knothide Armor Kit##44970 |goto 56.22,38.70
step
collect 90 Heavy Knothide Leather##23793 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 365 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 40 Heavy Knothide Armor Kits>_
|tip You may need to create a few more or less of these.
|tip Each additional Heavy Knothide Armor Kit requires 3 Heavy Knothide Leather.
Reach Skill 365 in Leatherworking |skill Leatherworking,365
step
Reach Honored Reputation with The Sha'tar |complete rep("The Sha'tar") >= Honored or skill("Leatherworking") >= 370
step
talk Almaador##21432
buy 1 Pattern: Drums of Battle##29717 |goto Shattrath City/0 50.99,41.71 |or
'|complete skill("Leatherworking") >= 370 |or
step
use the Pattern: Drums of Battle##29717
Learn Drums of Battle |learn Drums of Battle##35543
stickystart "Collect_Thick_Clefthoof_Leather_370"
step
collect 36 Heavy Knothide Leather##23793 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 370 |or
step
label "Collect_Thick_Clefthoof_Leather_370"
collect 24 Thick Clefthoof Leather##25708 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 370 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Drums of Battle>_
|tip You may need to create a few more or less of these.
|tip Each additional Drums of Battle requires 6 Heavy Knothide Leather and 4 Thick Clefthoof Leather.
Reach Skill 370 in Leatherworking |skill Leatherworking,370
step
Reach Honored Reputation with the Keepers of Time |complete rep("Keepers of Time") >= Honored or skill("Leatherworking") >= 375
step
Enter the Caverns of Time |goto Tanaris/0 65.51,49.97 < 15 |walk
talk Alurmi##21643
|tip Inside the Caverns of Time.
buy 1 Pattern: Drums of Panic##29713 |goto 63.58,57.64 |or
'|complete skill("Leatherworking") >= 375 |or
step
use the Pattern: Drums of Panic##29713
Learn Drums of Panic |learn Drums of Panic##35538
stickystart "Collect_Fel_Hide_375"
step
collect 36 Heavy Knothide Leather##23793 |or
|tip You created these in a previous step.
'|complete skill("Leatherworking") >= 375 |or
step
label "Collect_Fel_Hide_375"
collect 24 Fel Hide##25707 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Leatherworking") >= 375 |or
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Drums of Panic>_
|tip You may need to create a few more or less of these.
|tip Each additional Drums of Panic requires 6 Heavy Knothide Leather and 4 Fel Hide.
Reach Skill 375 in Leatherworking |skill Leatherworking,375
step
_Congratulations!_
You Reached Skill 375 in Leatherworking.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Lockpicking\\Lockpicking (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Lockpicking') > 0 end,
description="This guide will walk you through leveling your Lockpicking skill from 1-300.",
},[[
step
Reach Level 20 |ding 20
|tip You must be at least level 16 before you can learn Lockpicking.
|tip You are able to gain 5 levels of Lockpicking for each level your character gains.
|tip You need to be at least level 20 to reach level 100 Lockpicking in a few steps.
|tip Use the leveling guides to accomplish this.
step
talk Ormok##3328
|tip Inside the Cleft of Shadow.
Train Pick Lock |learn Pick Lock##1804 |goto Orgrimmar 43.90,54.63
step
talk Shenthul##3401
|tip Inside the hut, inside the Cleft of Shadow.
accept Zando'zan##2379 |goto 43.05,53.74
step
talk Zando'zan##3402
|tip Inside the hut, inside the Cleft of Shadow.
turnin Zando'zan##2379 |goto 42.73,52.95
accept Wrenix of Ratchet##2382 |goto 42.73,52.95
step
talk Wrenix the Wretched##7161
turnin Wrenix of Ratchet##2382 |goto The Barrens 63.07,36.32
accept Plundering the Plunderers##2381 |goto The Barrens 63.07,36.32
step
talk Wrenix's Gizmotronic Apparatus##7166
Tell it _"Give me what I need stupid machine!"_
collect Thieves' Tools##5060 |goto 63.12,36.32 |q 2381 |or
|tip Save the Thieves' Tools you get.
|tip You must keep Thieves' Tools in your bags to be able to pick locks.
collect E.C.A.C.##7970 |goto 63.12,36.32 |q 2381 |or
step
Follow the path |goto 62.08,38.81 < 10 |only if walking
Continue following the path |goto 62.75,39.86 < 15 |only if walking
Jump onto the front of the ship |goto 64.18,45.49 < 7 |only if walking
click Buccaneer's Strongbox##123330+
|tip They look like small grey metal chests on the ground around this area.
|tip Downstairs inside the ship, on the middle level.
Reach Skill 100 in Lockpicking |skill Lockpicking,100 |goto 65.06,45.43
step
click The Jewel of the Southsea##123462
|tip Downstairs inside the ship, on the bottom level.
|tip Polly, a high level parrot will appear and attack you.
use E.C.A.C.##7970
|tip Use it on Polly.
|tip It will become weaker.
kill Polly##7167
collect Southsea Treasure##7968 |q 2381/1 |goto 64.95,45.44 |or
step
Follow the path |goto 63.21,42.64 < 20 |only if walking
talk Wrenix the Wretched##7161
turnin Plundering the Plunderers##2381 |goto 63.07,36.32
step
Reach Level 30 |ding 30
|tip You are able to gain 5 levels of Lockpicking for each level your character gains.
|tip You need to be at least level 30 to reach level 150 Lockpicking in a few steps.
|tip Use the leveling guides to accomplish this.
step
map Ashenvale
path	follow smart;	loop on;	ants curved;	dist 30
path	11.90,30.15	12.87,31.05	13.79,30.52	15.42,28.31	15.15,25.13
path	15.82,19.58	15.51,16.55	13.56,14.91	11.15,13.42	12.00,15.83
path	13.22,16.26	14.17,16.22	15.09,17.10	14.04,19.81	14.75,21.67
path	14.41,23.32	13.04,24.29	12.29,25.73	11.68,25.84	11.48,26.97
path	11.75,28.81
click Waterlogged Footlocker##179487+
|tip They look like small yellow and brown wooden chests on the ground around this area.
Reach Skill 150 in Lockpicking |skill Lockpicking,150
step
Reach Level 40 |ding 40
|tip You are able to gain 5 levels of Lockpicking for each level your character gains.
|tip You need to be at least level 40 to reach level 200 Lockpicking in a few steps.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Badlands 43.03,30.08 < 20 |walk
Run up the stairs |goto Badlands 39.62,27.22 < 5 |c
'|complete skill("Lockpicking") >= 200 |or
step
click Battered Footlocker##179490+
|tip They look like small wooden chests upstairs inside the building.
Reach Skill 175 in Lockpicking |skill Lockpicking,175 |goto 40.49,28.01
You can find more at: |notinsticky
[41.29,29.31]
[41.44,29.95]
[41.37,26.17]
step
Jump down and follow the path |goto 42.29,27.96 < 5 |walk
Run down the stairs |goto 42.17,26.73 < 5 |c |walk
'|complete skill("Lockpicking") >= 200 |or
step
click Dented Footlocker##179492+
|tip They look like small wooden chests downstairs inside the building.
Reach Skill 200 in Lockpicking |skill Lockpicking,200 |goto 41.08,27.42
You can find more at: |notinsticky
[40.73,28.07]
[40.81,28.68]
[42.30,28.40]
step
Reach Level 50 |ding 50
|tip You are able to gain 5 levels of Lockpicking for each level your character gains.
|tip You need to be at least level 50 to reach level 250 Lockpicking in a few steps.
|tip Use the leveling guides to accomplish this.
step
Follow the path down |goto Searing Gorge 63.41,38.52 < 10 |only if walking
Run up the ramp |goto Searing Gorge 46.75,53.52 < 15 |only if walking
Enter the cave |goto Searing Gorge 41.38,53.89 < 7 |c
'|complete skill("Lockpicking") >= 250 |or
step
click Dented Footlocker##179492+
|tip They look like small wooden chests on the ground around this area inside the cave, in the lower section.
|tip You can also try to pickpocket enemies around this area to get Sturdy Junkboxes to unlock.
Reach Skill 225 in Lockpicking |skill Lockpicking,225 |goto Searing Gorge 38.44,50.83
You can find more at: |notinsticky
[Searing Gorge 38.00,45.87]
Through the Quarry Gate at [Searing Gorge 37.82,44.31]
[Searing Gorge 40.40,38.18]
[Searing Gorge 40.73,31.16]
[Searing Gorge 42.28,29.47]
[Searing Gorge 39.07,24.44]
step
Run up the ramp |goto 44.22,24.36 < 7 |walk
Follow the path |goto 42.47,30.78 < 7 |c
'|complete skill("Lockpicking") >= 250 |or
step
click Dented Footlocker##179492+
|tip They look like small wooden chests on the ground around this area inside the cave, in the upper section.
|tip You can also try to pickpocket enemies around this area to get Sturdy Junkboxes to unlock.
Reach Skill 250 in Lockpicking |skill Lockpicking,250 |goto 42.90,31.18
You can find more around: |notinsticky
[43.93,30.88]
[45.77,28.35]
[46.88,25.68]
step
Reach Level 60 |ding 60
|tip You are able to gain 5 levels of Lockpicking for each level your character gains.
|tip You need to be at least level 60 to reach level 300 Lockpicking in a few steps.
|tip Use the leveling guides to accomplish this.
step
Follow the path up |goto Searing Gorge 33.53,75.22 < 20 |only if walking
Enter Blackrock Mountain |goto Searing Gorge 34.76,83.98
|tip The waypoint arrow will stop working after you enter the doors.
|tip Once you enter through the huge doors, take the first left you come to.
|tip Walk up onto the large chain and follow it to the island in the middle of the lava.
|tip Run down the stairs and follow the path to another large chain.
|tip Walk across the large chain and follow the path into the Grinding Quarry.
|tip Once in the Grinding Quarry, follow the path northwest through the tunnel to find the dungeon portal entrance.
Click Here After Entering the Blackrock Depths Dungeon |confirm
'|complete skill("Lockpicking") >= 300 |or
step
_Inside the Blackrock Depths Dungeon:_
|tip Pick the following locks inside the dungon.
|tip You can also pickpocket enemies inside the dungeon to get Strong Junkboxes and Heavy Junkboxes to unlock.
|tip
|tip Lock #1: Once inside the dungeon, immediately turn left, pick the locked door and walk through it.
|tip Lock #2: Up ahead, on the right, pick the locked door and walk through it.
|tip Lock #3: Up ahead, on the left, pick the locked door and walk through it.
|tip Lock #4: Straight ahead, under the huge gear, pick the Shadowforge Lock.
|tip
|tip After you pick these 4 locks, leave the dungeon the way you came.
|tip Outside the dungeon portal, right-click your player portrait.
|tip Select "Reset all instances" and re-enter the dungeon to repeat this process.
Reach Skill 300 in Lockpicking |skill Lockpicking,300
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Mining') > 0 end,
description="This guide will walk you through leveling your Mining skill from 1-300.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 72.94,27.48 < 7 |walk
talk Makaru##3357
|tip Inside the building.
Train Apprentice Miner |skillmax Mining,75 |goto Orgrimmar 73.12,26.08
step
talk Gorina##3358
|tip Inside the building.
buy Mining Pick##2901 |goto 73.31,26.60
|tip You must have a Mining Pick in your bags to be able to gather ore.
step
map Durotar
path	follow smart;	loop on;	ants curved;	dist 30
path	50.96,17.00	52.99,18.09	54.60,19.05	55.40,21.06	55.71,23.38
path	56.28,25.33	55.89,27.78	54.64,27.62	55.10,30.09	58.12,29.94
path	55.62,32.75	55.97,36.63	55.71,40.53	57.32,42.00	59.26,41.50
path	57.59,43.98	55.27,48.14	50.81,48.20	48.51,43.33	47.83,39.78
path	46.87,34.69	45.55,32.24	45.61,27.19	46.52,23.35	48.07,21.59
path	49.70,21.37	49.54,18.59
Reach Skill 65 in Mining |skill Mining,65
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Copper Ore from skill level 1-47 for additional points.
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 72.94,27.48 < 7 |walk
talk Makaru##3357
|tip Inside the building.
Train Journeyman Miner |skillmax Mining,150 |goto Orgrimmar 73.12,26.08
step
map The Barrens
path	follow smart;	loop on;	ants curved;	dist 30
path	59.10,40.30	60.19,40.99	61.84,40.54	62.14,43.04	62.65,46.75
path	61.30,50.02	60.46,50.11	58.76,50.43	56.82,51.16	55.42,52.22
path	53.50,52.61	53.16,56.18	51.94,57.54	50.38,58.57	49.34,61.86
path	47.74,65.34	49.23,69.53	48.13,71.47	48.25,74.69	49.98,75.97
path	49.97,78.84	48.59,80.24	48.26,82.33	46.66,83.76	46.10,86.08
path	44.27,84.64	42.70,82.63	41.20,79.51	44.09,78.36	43.80,75.03
path	43.88,73.08	42.35,72.24	41.90,68.97	43.39,69.35	45.54,68.99
path	45.03,65.70	43.83,62.98	43.15,60.77	43.09,56.64	43.61,52.80
path	41.37,48.89	42.58,47.61	41.37,44.96	43.42,44.79	43.15,42.53
path	43.28,39.61	42.28,38.89	41.58,37.21	42.55,35.50	42.04,33.21
path	45.13,32.85	46.58,30.52	46.71,28.37	48.20,28.72	49.48,31.40
path	50.44,34.37	52.43,34.60	56.90,37.50	58.56,39.33
Reach Skill 125 in Mining |skill Mining,125
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Bronze Bars with leftover Tin and Copper Bars from skill level 65-90 for additional points.
|tip You can smelt Silver Ore from skill level 75-112 for additional points.
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 72.94,27.48 < 7 |walk
talk Makaru##3357
|tip Inside the building.
Train Expert Miner |skillmax Mining,225 |goto Orgrimmar 73.12,26.08
step
map Arathi Highlands
path	follow smart;	loop on;	ants curved;	dist 30
path	78.66,36.13	77.36,41.29	75.00,44.93	72.65,48.07	70.58,55.05
path	69.99,58.40	72.92,59.03	72.28,63.63	72.78,66.86	71.75,66.15
path	69.15,72.54	67.17,70.90	63.52,73.55	59.48,74.71	59.32,70.74
path	56.16,71.89	50.82,78.41	47.96,82.44	42.53,80.75	43.02,77.16
path	40.39,71.86	37.95,67.63	38.52,68.50	33.94,66.02	34.59,61.64
path	33.70,56.77	33.45,53.94	33.65,50.19	35.00,47.28	32.96,46.68
path	31.68,45.41	32.34,42.64	31.42,41.24	25.23,43.10	20.94,39.12
path	20.02,35.80	19.12,33.36	22.43,31.28	23.48,24.90	26.93,20.65
path	28.65,14.18	28.96,16.96	31.62,18.63	30.96,20.36	33.19,21.23
path	36.35,24.61	39.97,25.62	40.21,28.79	43.97,30.51	45.70,33.02
path	48.08,33.60	49.78,36.76	52.14,36.11	52.75,31.99	54.80,33.13
path	58.19,32.50	58.02,34.22	59.94,35.97	62.25,32.06	64.69,35.58
path	64.49,26.56	66.77,27.64	70.39,27.07	70.47,30.74	72.89,30.09
path	76.73,29.48	76.70,33.68	79.56,35.45
Reach Skill 175 in Mining |skill Mining,175
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Iron Ore from skill level 125-135 for additional points.
|tip You can smelt Gold Ore from skill level 155-184 for additional points.
step
map Badlands
path	follow smart;	loop on;	ants curved;	dist 30
path	26.84,74.76	25.28,78.53	19.71,81.32	14.75,83.82	12.50,85.54
path	7.98,80.56	6.30,74.40	8.68,67.97	17.19,68.54	15.13,72.43
path	17.19,77.39	21.25,75.06	25.11,72.08
Reach Skill 200 in Mining |skill Mining,200
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
|tip You can smelt Gold Ore from skill level 155-184 for additional points.
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 72.94,27.48 < 7 |walk
talk Makaru##3357
|tip Inside the building.
Train Artisan Miner |skillmax Mining,300 |goto Orgrimmar 73.12,26.08
step
map Badlands
path	follow smart;	loop on;	ants curved;	dist 30
path	26.84,74.76	25.28,78.53	19.71,81.32	14.75,83.82	12.50,85.54
path	7.98,80.56	6.30,74.40	8.68,67.97	17.19,68.54	15.13,72.43
path	17.19,77.39	21.25,75.06	25.11,72.08
Reach Skill 250 in Mining |skill Mining,250
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
step
map Un'Goro Crater
path	follow smart;	loop on;	ants curved;	dist 30
path	66.46,78.95	64.56,79.71	61.79,84.21	59.34,84.18	57.63,86.04
path	54.50,86.69	51.13,86.82	48.27,87.30	45.98,86.58	42.89,85.00
path	40.79,83.52	37.91,83.14	36.77,80.17	33.58,79.05	30.40,79.61
path	28.89,76.98	28.97,71.52	26.00,67.67	25.93,63.53	24.59,58.51
path	23.95,53.04	24.40,48.21	23.89,44.76	24.71,41.12	26.26,36.59
path	26.62,31.21	28.29,29.47	29.59,25.66	29.89,20.92	33.32,20.67
path	36.29,20.47	38.67,16.00	41.73,15.77	43.32,14.12	46.94,13.03
path	49.79,13.83	52.84,12.88	56.31,14.04	59.61,16.58	62.25,16.02
path	64.19,19.90	65.99,21.01	68.51,20.26	71.19,20.89	71.21,23.75
path	71.75,28.19	74.76,32.46	75.06,37.15	76.32,43.15	76.67,48.32
path	77.05,53.09	76.56,57.02	75.35,61.97	74.66,68.05	72.92,70.46
path	71.39,73.80	71.00,79.21	68.32,79.90
Reach Skill 300 in Mining |skill Mining,300
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Mining\\Mining (300-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Mining') > 300 end,
description="This guide will walk you through leveling your Mining skill from 300-375.",
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 72.94,27.48 < 7 |walk
talk Gorina##3358
|tip Inside the building.
buy Mining Pick##2901 |goto 73.31,26.60
|tip You must have a Mining Pick in your bags to be able to gather ore.
step
talk Krugosh##18747
Learn Master Mining |skillmax Mining,375 |goto Hellfire Peninsula/0 55.44,37.59
step
map Hellfire Peninsula/0
path	65.97,48.02	69.02,46.87	70.80,50.94	70.25,54.41	70.27,59.32
path	72.23,60.13	74.08,63.37	76.97,62.92	78.97,66.32	78.85,70.21
path	79.70,74.48	80.75,77.99	77.91,75.80	77.13,73.33	76.82,69.54
path	75.53,67.17	71.66,67.33	69.41,67.29	68.38,60.74	65.36,60.83
path	65.69,64.45	63.25,69.06	62.72,72.99	62.49,79.96	58.89,76.64
path	57.05,73.97	57.06,81.30	56.40,82.14	55.54,83.79	52.24,83.83
path	49.82,83.52	46.85,84.82	42.98,79.36	42.26,76.62	44.54,73.42
path	47.44,71.34	50.85,69.85	47.41,66.63	44.75,68.48	45.62,61.55
path	47.89,59.49	49.89,56.45	49.95,61.42	51.38,61.68	52.93,58.38
path	55.41,56.25	56.22,53.50	58.62,52.98	62.69,50.44
Reach Skill 325 in Mining |skill Mining,325
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
step
map Terokkar Forest/0
path	35.40,32.74	33.58,34.03	29.99,37.04	30.47,39.42	32.84,42.87
path	30.44,45.85	29.70,48.78	28.72,50.90	26.87,53.21	25.26,54.90
path	22.49,56.46	19.34,61.21	18.69,64.00	16.44,70.63	17.61,76.00
path	18.15,78.38	22.26,77.14	25.28,77.55	26.12,74.18	26.50,71.57
path	25.34,67.90	26.92,64.72	29.12,65.04	30.87,68.34	29.75,76.55
path	31.88,79.19	34.91,78.98	39.83,81.85	44.04,81.54	46.83,80.38
path	49.20,79.14	53.35,76.87	54.01,72.24	54.28,68.65	55.01,65.28
path	55.48,59.55	53.36,55.57	50.80,57.73	45.51,49.16	42.88,47.33
path	40.15,46.05	38.17,43.37	36.85,41.76	36.79,39.20	38.01,36.66
path	41.76,36.07	44.39,34.92	46.83,35.38	49.86,36.73	53.65,33.89
path	57.14,33.39	55.14,40.09	56.82,44.38	58.56,48.62	59.64,51.65
path	61.28,51.80	62.93,51.53	68.24,52.26	70.55,50.49	72.12,46.95
path	71.97,42.17	73.79,38.31	74.41,36.29	74.10,34.91	73.22,32.72
path	70.82,30.89	67.47,30.75	65.28,30.03	62.62,26.46	60.72,23.08
path	57.70,22.89	55.83,24.97	53.00,24.89	51.03,23.50	50.19,20.50
path	51.97,16.80	50.62,15.37	47.54,12.14	45.79,11.52	42.95,8.83
path	42.59,15.18	43.28,17.66	41.87,20.90	42.92,23.48	37.45,31.00
Reach Skill 350 in Mining |skill Mining,350
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 30
path	23.03,54.38	25.66,56.17	27.78,59.66	28.97,63.86	29.39,68.96
path	28.60,72.26	28.38,76.04	29.37,79.52	31.84,80.64	35.76,81.91
path	38.66,82.53	41.39,82.08	42.32,78.93	44.21,77.72	46.77,77.25
path	48.80,77.89	50.60,79.08	52.79,80.43	55.35,80.45	57.66,79.43
path	59.67,79.87	61.78,80.22	63.10,78.04	61.50,74.24	60.07,71.40
path	58.21,67.30	56.38,66.12	55.81,62.92	55.80,59.35	55.91,56.41
path	53.97,55.67	51.60,54.83	49.35,54.70	48.34,56.31	46.31,52.84
path	44.76,48.93	44.93,44.85	44.17,41.32	42.03,37.80	40.94,34.11
path	40.52,29.96	38.57,27.00	35.52,23.03	31.65,21.23	28.90,20.10
path	26.95,20.42	25.43,24.53	24.85,26.68	23.88,30.30	21.46,32.74
path	18.92,33.25	16.50,34.01	14.02,35.11	11.60,37.40	9.18,39.21
path	7.43,41.55	7.97,45.14	9.64,44.27	12.78,42.19	13.85,43.23
Reach Skill 375 in Mining |skill Mining,375
|tip Click ore as you follow the path around this area.
|tip Track them on your minimap with "Find Minerals".
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning (1-300)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Skinning') > 0 end,
description="This guide will walk you through leveling your Skinning skill from 1-300.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 before you can learn professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 62.23,45.64 < 7 |walk
talk Thuwd##7088
|tip Inside the building.
Train Apprentice Skinning |skillmax Skinning,75 |goto Orgrimmar 63.36,45.41
step
talk Tamar##3366
|tip Inside the building.
buy Skinning Knife##7005 |goto 63.04,45.53
|tip You must have a Skinning Knife in your bags to be able to skin enemies.
step
Kill enemies around this area
|tip Only beast enemies, or certain humanoid enemies such as yetis or worgen, will be skinnable.
|tip Skin their corpses.
Reach Skill 75 in Skinning |skill Skinning,75 |goto Durotar 44.13,18.79
You can find more around: |notinsticky
[Durotar 39.38,18.92]
[Durotar 36.57,24.98]
[Durotar 38.33,35.20]
[Durotar 53.64,14.77]
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to become a Journeyman in a profession.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 62.23,45.64 < 7 |walk
talk Thuwd##7088
|tip Inside the building.
Train Journeyman Skinning |skillmax Skinning,150 |goto Orgrimmar 63.36,45.41
step
Kill enemies around this area
|tip Only beast enemies will be skinnable.
|tip Skin their corpses.
Reach Skill 90 in Skinning |skill Skinning,90 |goto The Barrens 53.93,30.27
You can find more around: |notinsticky
[The Barrens 53.44,33.96]
[The Barrens 50.98,33.32]
[The Barrens 49.67,29.89]
step
Kill enemies around this area
|tip Skin their corpses.
Reach Skill 130 in Skinning |skill Skinning,130 |goto 45.77,56.23
You can find more around: |notinsticky
[46.67,50.16]
[49.90,53.28]
[48.92,58.67]
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Dranh##6387
Train Expert Skinning |skillmax Skinning,225 |goto 45.07,59.09
step
Kill enemies around this area
|tip Skin their corpses.
Reach Skill 165 in Skinning |skill Skinning,165 |goto 44.89,75.35
You can find more around: |notinsticky
[48.02,75.51]
[49.18,79.05]
[47.17,78.38]
[47.02,81.85]
step
Kill enemies around this area
|tip All around in the Shimmering Flats.
|tip Skin their corpses.
Reach Skill 220 in Skinning |skill Skinning,220 |goto Thousand Needles 78.97,69.34
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Feralas 74.69,42.99 < 7 |walk
talk Kulleg Stonehorn##8144
|tip Inside the building.
Train Artisan Skinning |skillmax Skinning,300 |goto Feralas 74.47,43.04
step
Kill Feral Scar enemies around this area
|tip They look like yetis.
|tip Skin their corpses.
|tip You can find more through the tunnel.
Reach Skill 270 in Skinning |skill Skinning,270 |goto 55.24,56.36
step
Kill enemies around this area
|tip Skin their corpses.
Reach Skill 300 in Skinning |skill Skinning,300 |goto 48.69,37.24
You can find more around: |notinsticky
[49.97,33.40]
[49.69,28.62]
[46.69,24.68]
[44.94,22.35]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Skinning\\Skinning (300-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Skinning') > 300 end,
description="This guide will walk you through leveling your Skinning skill from 300-375.",
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar 62.23,45.64 < 7 |walk
talk Tamar##3366
|tip Inside the building.
buy Skinning Knife##7005 |goto 63.04,45.53
|tip You must have a Skinning Knife in your bags to be able to skin enemies.
step
talk Moorutu##18755
Learn Master Skinning |skillmax Skinning,375 |goto Hellfire Peninsula/0 56.27,38.61
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 50
path	63.89,60.78	67.80,62.83	66.95,65.60	63.75,70.51	61.99,78.54
path	60.09,74.93
kill Starving Helboar##16879+
|tip Skin their corpses.
Reach Skill 305 in Skinning |skill Skinning,305
step
map Hellfire Peninsula/0
path follow smart; loop on; ants curved; dist 50
path	55.72,74.52	51.36,74.35	50.76,78.01	48.49,78.57	48.25,75.04
path	50.82,72.62	49.69,69.88	49.97,65.38	53.06,69.81
kill Deranged Helboar##16863+
|tip Skin their corpses.
Reach Skill 310 in Skinning |skill Skinning,310
step
Kill Razorfang enemies around this area
|tip Skin their corpses.
Reach Skill 330 in Skinning |skill Skinning,330 |goto 41.77,84.92
You can find more around: |notinsticky
[40.38,84.56]
[38.76,88.89]
[38.30,86.75]
[37.28,88.74]
step
map Nagrand/0
path follow smart; loop on; ants curved; dist 50
path	60.75,43.71	59.25,44.53	56.92,44.58	54.45,45.44	51.82,46.79
path	50.71,48.26	49.12,44.34	47.50,42.69	47.51,39.86	47.01,32.36
path	45.31,29.62	42.57,26.46	39.19,24.94	37.43,24.89	36.56,22.78
path	38.29,20.50	40.08,23.20	44.14,24.17	45.65,26.29	47.47,27.03
path	51.00,27.02	52.61,28.30	52.01,30.18	50.33,36.50	51.84,40.10
path	53.29,42.34	55.18,43.70	58.05,43.78	59.76,42.02
Kill Talbuk and Clefthoof enemies around this area
|tip Skin their corpses.
Reach Skill 375 in Skinning |skill Skinning,375
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Tailoring\\Tailoring (1-375)",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Tailoring') > 0 end,
description="This guide will walk you through leveling your Tailoring skill from 1-375.",
},[[
step
Reach Level 5 |ding 5
|tip You must be at least level 5 to train professions.
|tip Use the leveling guides to accomplish this.
step
Enter the building |goto Orgrimmar/0 61.38,50.37 < 7 |walk
talk Magar##3363
|tip Inside the building.
Train Apprentice Tailoring |skillmax Tailoring,75 |goto Orgrimmar/0 63.65,49.93
step
Click Here if You Would Like to Collect All Materials First |confirm |next |or
_Or_
Click Here to Collect Materials as You Level or Resume Leveling Tailoring |confirm |next "Begin_Profession_Leveling" |or
'|complete skill("Tailoring") >= 375 |or |next "Begin_Profession_Leveling"
stickystart "Collect_Wool_Cloth_Total"
stickystart "Collect_Silk_Cloth_Total"
stickystart "Collect_Mageweave_Cloth_Total"
stickystart "Collect_Runecloth_Total"
stickystart "Collect_Rugged_Leather_Total"
step
collect 204 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate.
|tip You may need slightly more or less than the indicated amount.
'|complete skill("Tailoring") >= 50 |or
step
label "Collect_Wool_Cloth_Total"
collect 135 Wool Cloth##2592 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 100 |or
step
label "Collect_Silk_Cloth_Total"
collect 804 Silk Cloth##4306 |or
|tip Farm them from level 28-40 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 146 |or
step
label "Collect_Mageweave_Cloth_Total"
collect 500 Mageweave Cloth##4338 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 185 |or
step
label "Collect_Runecloth_Total"
collect 1235 Runecloth##14047 |or
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 260 |or
step
label "Collect_Rugged_Leather_Total"
collect 110 Rugged Leather##8170 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 300 |or
stickystart "Collect_Arcane_Dust_Total"
stickystart "Collect_Knothide_Leather_Total"
stickystart "Collect_Netherweb_Spider_Silk_Total"
step
collect 2760 Netherweave Cloth##21877 |or
|tip Farm them from Outland humanoid mobs or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 326 |or
step
label "Collect_Arcane_Dust_Total"
collect 180 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 341 |or
step
label "Collect_Knothide_Leather_Total"
collect 10 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 345 |or
step
label "Collect_Netherweb_Spider_Silk_Total"
collect 30 Netherweb Spider Silk##21881 |or
|tip Farm them from Dreadfang Spiders in Terokkar Forest or purchase them from the auction house.
|tip These totals are approximate. |notinsticky
|tip You may need slightly more or less than the indicated amount. |notinsticky
'|complete skill("Tailoring") >= 375 |or
step
label "Begin_Profession_Leveling"
collect 204 Linen Cloth##2589 |or
|tip Farm them from level 5-20 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 50 |or
step
Open Your Tailoring Crafting Panel:
_<Create 102 Bolts of Linen Cloth>_
|tip Save these, you will need them later.
collect 102 Bolt of Linen Cloth##2996 |or
'|complete skill("Tailoring") >= 51 |or
step
Open Your Tailoring Crafting Panel:
_<Create Bolts of Linen Cloth>_
|tip Save 102 of these, you will need them later.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Linen Cloth requires 2 Linen Cloth.
Reach Skill 45 in Tailoring |skill Tailoring,45
step
talk Magar##3363
|tip Inside the building.
Train Linen Belt |learn Linen Belt##8776 |goto Orgrimmar/0 63.65,49.93
step
collect 40 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 70 |or
step
talk Borya##3364
|tip Inside the building.
buy 55 Coarse Thread##2320 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them later.
'|complete skill("Tailoring") >= 70 |or
step
Open Your Tailoring Crafting Panel:
_<Create 40 Linen Belts>_
|tip You may need to make a few more of these.
|tip Each additional Linen Belt requires 1 Bolt of Linen Cloth and 1 Coarse Thread.
Reach Skill 70 in Tailoring |skill Tailoring,70
step
talk Magar##3363
|tip Inside the building.
Train Reinforced Linen Cape |learn Reinforced Linen Cape##2397 |goto Orgrimmar/0 63.65,49.93
step
collect 10 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
talk Borya##3364
|tip Inside the building.
buy 15 Coarse Thread##2320 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 75 |or
step
Open Your Tailoring Crafting Panel:
_<Create 5 Reinforced Linen Capes>_
Reach Skill 75 in Tailoring |skill Tailoring,75
step
Reach Level 10 |ding 10
|tip You must be at least level 10 to train Journeyman professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Journeyman Tailoring |skillmax Tailoring,150 |goto Orgrimmar/0 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Woolen Cloth |learn Bolt of Woolen Cloth##2964 |goto Orgrimmar/0 63.65,49.93
step
collect 135 Wool Cloth##2592 |or
|tip Farm them from level 16-30 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 100 |or
step
Open Your Tailoring Crafting Panel:
_<Create 45 Bolts of Woolen Cloth>_
|tip Save these, you will need them later.
collect 45 Bolt of Woolen Cloth##2997 |or
'|complete skill("Tailoring") >= 106 |or
step
Open Your Tailoring Crafting Panel:
_<Create 45 Bolts of Woolen Cloth>_
|tip Save 45 of these, you will need them later.
|tip You may need to make a few more of these.
|tip Each additional Bolt of Woolen Cloth requires 3 Wool Cloth.
Reach Skill 100 in Tailoring |skill Tailoring,100
step
talk Magar##3363
|tip Inside the building.
Train Simple Kilt |learn Simple Kilt##12046 |goto Orgrimmar/0 63.65,49.93
step
collect 52 Bolt of Linen Cloth##2996 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 110 |or
step
talk Borya##3364
|tip Inside the building.
buy 43 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them later.
'|complete skill("Tailoring") >= 110 |or
step
Open Your Tailoring Crafting Panel:
_<Create 13 Simple Kilts>_
|tip You may need to make a few more of these.
|tip Each additional Simple Kilt requires 4 Bolts of Linen Cloth and 1 Fine Thread.
Reach Skill 110 in Tailoring |skill Tailoring,110
step
talk Magar##3363
|tip Inside the building.
Train Double-stitched Woolen Shoulders |learn Double-stitched Woolen Shoulders##3848 |goto Orgrimmar/0 63.65,49.93
step
collect 45 Bolt of Woolen Cloth##2997 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
talk Borya##3364
|tip Inside the building.
buy 30 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 125 |or
step
Open Your Tailoring Crafting Panel:
_<Create 15 Double-stitched Woolen Shoulders>_
Reach Skill 125 in Tailoring |skill Tailoring,125
step
Reach Level 20 |ding 20
|tip You must be at least level 20 to train Expert professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Expert Tailoring |skillmax Tailoring,225 |goto Orgrimmar/0 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Silk Cloth |learn Bolt of Silk Cloth##3839 |goto Orgrimmar/0 63.65,49.93
step
collect 804 Silk Cloth##4306 |or
|tip Farm them from level 28-40 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 146 |or
step
Open Your Tailoring Crafting Panel:
_<Create 201 Bolts of Silk Cloth>_
|tip Save these, you will need them later.
collect 201 Bolt of Silk Cloth##4305 |or
'|complete skill("Tailoring") >= 146 |or
step
Open Your Tailoring Crafting Panel:
_<Create Bolts of Silk Cloth>_
|tip Save 201 of these, you will need them later.
Reach Skill 145 in Tailoring |skill Tailoring,145
step
talk Magar##3363
|tip Inside the building.
Train Azure Silk Hood |learn Azure Silk Hood##8760 |goto Orgrimmar/0 63.65,49.93
step
collect 36 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 160 |or
step
talk Borya##3364
|tip Inside the building.
buy 18 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or 2
buy 36 Blue Dye##6260 |goto Orgrimmar/0 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 160 |or
step
Open Your Tailoring Crafting Panel:
_<Create 18 Azure Silk Hoods>_
|tip You may need to create a few mor or less of these.
|tip Each additional Azure Silk Hood requires 2 Bolts of Silk Cloth, 2 Blue Dye, and 1 Fine Thread.
Reach Skill 160 in Tailoring |skill Tailoring,160
step
talk Magar##3363
|tip Inside the building.
Train Silk Headband |learn Silk Headband##8762 |goto Orgrimmar/0 63.65,49.93
step
collect 30 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 170 |or
step
talk Borya##3364
|tip Inside the building.
buy 20 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or
'|complete skill("Tailoring") >= 170 |or
step
Open Your Tailoring Crafting Panel:
_<Create 10 Silk Headbands>_
Reach Skill 170 in Tailoring |skill Tailoring,170
step
talk Magar##3363
|tip Inside the building.
Train Formal White Shirt |learn Formal White Shirt##3871 |goto Orgrimmar/0 63.65,49.93
step
collect 15 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 175 |or
step
talk Borya##3364
|tip Inside the building.
buy 10 Bleach##2324 |goto Orgrimmar/0 63.08,51.45 |or 2
buy 5 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 175 |or
step
Open Your Tailoring Crafting Panel:
_<Create 5 Formal White Shirts>_
Reach Skill 175 in Tailoring |skill Tailoring,175
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Mageweave |learn Bolt of Mageweave##3865 |goto Orgrimmar/0 63.65,49.93
step
collect 500 Mageweave Cloth##4338 |or
|tip Farm them from level 38-50 humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 185 |or
step
Open Your Tailoring Crafting Panel:
_<Create 100 Bolts of Mageweave>_
|tip Save these, you will need them later.
collect 100 Bolt of Mageweave##4339 |or
'|complete skill("Tailoring") >= 186 |or
step
Open Your Tailoring Crafting Panel:
_<Create Bolts of Mageweave>_
|tip Save 100 of these, you will need them later.
Reach Skill 185 in Tailoring |skill Tailoring,185
step
talk Magar##3363
|tip Inside the building.
Train Crimson Silk Vest |learn Crimson Silk Vest##8791 |goto Orgrimmar/0 63.65,49.93
step
collect 80 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 205 |or
step
talk Borya##3364
|tip Inside the building.
buy 40 Fine Thread##2321 |goto Orgrimmar/0 63.08,51.45 |or 2
buy 40 Red Dye##2604 |goto Orgrimmar/0 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 205 |or
step
Open Your Tailoring Crafting Panel:
_<Create 20 Crimson Silk Vests>_
Reach Skill 205 in Tailoring |skill Tailoring,205
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to train Artisan professions.
|tip Use the leveling guides to accomplish this.
step
talk Magar##3363
|tip Inside the building.
Train Artisan Tailoring |skillmax Tailoring,300 |goto Orgrimmar/0 63.65,49.93
step
talk Magar##3363
|tip Inside the building.
Train Crimson Silk Pantaloons |learn Crimson Silk Pantaloons##8799 |goto Orgrimmar/0 63.65,49.93
step
collect 40 Bolt of Silk Cloth##4305 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 215 |or
step
talk Borya##3364
|tip Inside the building.
buy 20 Red Dye##2604 |goto Orgrimmar/0 63.08,51.45 |or 2
buy 20 Silken Thread##4291 |goto Orgrimmar/0 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 215 |or
step
Open Your Tailoring Crafting Panel:
_<Create 10 Crimson Silk Pantaloons>_
Reach Skill 215 in Tailoring |skill Tailoring,215
step
talk Magar##3363
|tip Inside the building.
Train Orange Mageweave Shirt |learn Orange Mageweave Shirt##12061 |goto Orgrimmar/0 63.65,49.93
step
collect 5 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 220 |or
step
talk Borya##3364
|tip Inside the building.
buy 5 Orange Dye##6261 |goto Orgrimmar/0 63.08,51.45 |or 2
buy 5 Heavy Silken Thread##8343 |goto Orgrimmar/0 63.08,51.45 |or 2
'|complete skill("Tailoring") >= 220 |or
step
Open Your Tailoring Crafting Panel:
_<Create 5 Orange Mageweave Shirts>_
Reach Skill 220 in Tailoring |skill Tailoring,220
step
talk Magar##3363
|tip Inside the building.
Train Black Mageweave Gloves |learn Black Mageweave Gloves##12053 |goto Orgrimmar/0 63.65,49.93
step
collect 20 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 230 |or
step
talk Borya##3364
|tip Inside the building.
buy 20 Heavy Silken Thread##8343 |goto Orgrimmar/0 63.08,51.45 |or
'|complete skill("Tailoring") >= 230 |or
step
Open Your Tailoring Crafting Panel:
_<Create 10 Black Mageweave Gloves>_
Reach Skill 230 in Tailoring |skill Tailoring,230
step
talk Magar##3363
|tip Inside the building.
Train Black Mageweave Headband |learn Black Mageweave Headband##12072 |goto Orgrimmar/0 63.65,49.93
step
collect 75 Bolt of Mageweave##4339 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 250 |or
step
talk Borya##3364
|tip Inside the building.
buy 50 Heavy Silken Thread##8343 |goto Orgrimmar/0 63.08,51.45 |or
'|complete skill("Tailoring") >= 250 |or
step
Open Your Tailoring Crafting Panel:
_<Create 25 Black Mageweave Headbands>_
|tip You may need to create a few more or less of these.
|tip Each additional Black Mageweave Headband requires 3 Bolts of Mageweave and 2 Heavy Silken Thread.
Reach Skill 250 in Tailoring |skill Tailoring,250
step
talk Magar##3363
|tip Inside the building.
Train Bolt of Runecloth |learn Bolt of Runecloth##18401 |goto Orgrimmar/0 63.65,49.93
step
collect 1235 Runecloth##14047 |or
|tip Farm them from level 50+ humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 260 |or
step
Open Your Tailoring Crafting Panel:
_<Create 247 Bolts of Runecloth>_
|tip Save these, you will need them later.
collect 247 Bolt of Runecloth##14048 |or
'|complete skill("Tailoring") >= 261 |or
step
Open Your Tailoring Crafting Panel:
_<Create Bolts of Runecloth>_
|tip Save 247 of these, you will need them later.
Reach Skill 260 in Tailoring |skill Tailoring,260
step
talk Magar##3363
|tip Inside the building.
Train Runecloth Belt |learn Runecloth Belt##18402 |goto Orgrimmar/0 63.65,49.93
step
collect 75 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 280 |or
step
talk Borya##3364
|tip Inside the building.
buy 63 Rune Thread##14341 |goto Orgrimmar/0 63.08,51.45 |or
|tip Save these, you will need them later.
'|complete skill("Tailoring") >= 280 |or
step
Open Your Tailoring Crafting Panel:
_<Create 25 Runecloth Belts>_
|tip You may need to create a few more or less of these.
|tip Each additional Runecloth Belt requires 3 Bolts of Runecloth and 1 Rune Thread.
Reach Skill 280 in Tailoring |skill Tailoring,280
step
Enter the building |goto Winterspring 61.33,37.35 < 5 |walk
talk Qia##11189
|tip Inside the building.
buy Pattern: Runecloth Bag##14468 |goto 61.20,37.21 |or 2
buy Pattern: Runecloth Gloves##14481 |goto 61.20,37.21 |or 2
|tip These are limited supply items that can also be purchased from the auction house.
Click Here After Purchasing Pattern: Runecloth Bag |confirm |or 2
|tip Click if the Pattern: Runecloth Gloves is not available.
'|complete skill("Tailoring") >= 300 or knowsrecipe(18405) |or
step
use the Pattern: Runecloth Bag##14468
Learn Runecloth Bag |learn Runecloth Bag##18405
stickystart "Collect_Rugged_Leather_290"
step
collect 90 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 290 |or
step
label "Collect_Rugged_Leather_290"
collect 36 Rugged Leather##8170 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Tailoring") >= 290 |or
step
talk Borya##3364
|tip Inside the building.
buy 18 Rune Thread##14341 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 290 |or
step
Open Your Tailoring Crafting Panel:
_<Create 18 Runecloth Bags>_
|tip You may need to create a few more or less of these.
|tip Each additional Runecloth Bag requires 5 Bolts of Runecloth, 2 Rugged Leather, and 1 Rune Thread.
Reach Skill 290 in Tailoring |skill Tailoring,290
step
Enter the building |goto Winterspring 61.33,37.35 < 5 |walk
talk Qia##11189
|tip Inside the building.
buy Pattern: Runecloth Gloves##14481 |goto 61.20,37.21 |or
|tip This is a limited supply item that can also be purchased from the auction house.
'|complete skill("Tailoring") >= 300 or knowsrecipe(18417) |or
step
use the Pattern: Runecloth Gloves##14481
Learn Runecloth Gloves |learn Runecloth Gloves##18417
stickystart "Collect_Rugged_Leather_300"
step
collect 80 Bolt of Runecloth##14048 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 300 |or
step
label "Collect_Rugged_Leather_300"
collect 74 Rugged Leather##8170 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Tailoring") >= 300 |or
step
talk Borya##3364
|tip Inside the building.
buy 18 Rune Thread##14341 |goto Orgrimmar/0 63.08,51.45 |or
|tip You purchased these in a previous step.
'|complete skill("Tailoring") >= 300 |or
step
Open Your Tailoring Crafting Panel:
_<Create 20 Runecloth Gloves>_
|tip You may need to create a few more or less of these.
|tip Each additional Runecloth Glove requires 4 Bolts of Runecloth, 4 Rugged Leather, and 1 Rune Thread.
Reach Skill 300 in Tailoring |skill Tailoring,300
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to train Master professions.
|tip Use the leveling guides to accomplish this.
step
talk Dalinna##18749
|tip Inside the building.
Train Master Tailoring |skillmax Tailoring,375 |goto Hellfire Peninsula/0 56.6,37.2
step
talk Dalinna##18749
|tip Inside the building.
Train Bolt of Netherweave |learn Bolt of Netherweave##26745 |goto Hellfire Peninsula/0 56.6,37.2
step
collect 2760 Netherweave Cloth##21877 |or
|tip Farm them from Outland humanoid mobs or purchase them from the auction house.
'|complete skill("Tailoring") >= 326 |or
step
Open Your Tailoring Crafting Panel:
_<Create 460 Bolts of Netherweave>_
|tip Save these, you will need them later.
collect 460 Bolt of Netherweave##21840
'|complete skill("Tailoring") >= 326 |or
step
Open Your Tailoring Crafting Panel:
_<Create Bolt of Netherweave>_
|tip Save 460 of these, you will need them later.
Reach Skill 325 in Tailoring |skill Tailoring,325
step
talk Eiin##19213
buy Pattern: Bolt of Imbued Netherweave##21892 |goto Shattrath City/0 66.2,68.6 |or
'|complete skill("Tailoring") >= 340 or knowsrecipe(26747) |or
step
use the Pattern: Bolt of Imbued Netherweave##21892
Train Bolt of Imbued Netherweave |learn Bolt of Imbued Netherweave##26747
stickystart "Collect_Arcane_Dust_341"
step
collect 270 Bolt of Netherweave##21840
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 341 |or
step
label "Collect_Arcane_Dust_341"
collect 180 Arcane Dust##22445 |or
|tip Disenchant them from Outland uncommon (green) items with Enchanting or purchase them from the auction house.
'|complete skill("Tailoring") >= 341 |or
step
Open Your Tailoring Crafting Panel:
_<Create 90 Bolts of Imbued Netherweave>_
|tip Save these, you will need them later.
collect 90 Bolt of Imbued Netherweave##21842 |or
'|complete skill("Tailoring") >= 341 |or
step
Open Your Tailoring Crafting Panel:
_<Create Bolts of Imbued Netherweave>_
|tip Save 90 of these, you will need them later.
Reach Skill 340 in Tailoring |skill Tailoring,340
step
talk Dalinna##18749
|tip Inside the building.
Train Netherweave Boots |learn Netherweave Boots##26772 |goto Hellfire Peninsula/0 56.6,37.2
stickystart "Collect_Knothide_Leather_345"
step
collect 30 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 345 |or
step
label "Collect_Knothide_Leather_345"
collect 10 Knothide Leather##21887 |or
|tip Farm them with Skinning or purchase them from the auction house.
'|complete skill("Tailoring") >= 345 |or
step
talk Dalinna##18749
|tip Inside the building.
buy 5 Rune Thread##14341 |goto Hellfire Peninsula/0 56.6,37.2 |or
'|complete skill("Tailoring") >= 345 |or
step
Open Your Tailoring Crafting Panel:
_<Create 5 Netherweave Boots>_
Reach Skill 345 in Tailoring |skill Tailoring,345
step
talk Dalinna##18749
|tip Inside the building.
Train Netherweave Robes |learn Netherweave Robes##26773 |goto Hellfire Peninsula/0 56.6,37.2
step
collect 160 Bolt of Netherweave##21840 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 360 |or
step
talk Dalinna##18749
|tip Inside the building.
buy 40 Rune Thread##14341 |goto Hellfire Peninsula/0 56.6,37.2 |or
'|complete skill("Tailoring") >= 360 |or
step
Open Your Tailoring Crafting Panel:
_<Create 20 Netherweave Robes>_
|tip You may need to create a few more or less of these.
|tip Each additional Netherweave Robe requires 8 Bolts of Runecloth and 2 Rune Thread.
Reach Skill 360 in Tailoring |skill Tailoring,360
step
talk Arrond##19521
buy Pattern: Imbued Netherweave Tunic##21901 |goto Shadowmoon Valley/0 55.8,58.2 |or
|tip This pattern requires neutral reputation with the Scryers to purchase.
|tip You can complete the "City of Light" quest in Shattrath City and choose Allegiance to the Scryers to join them.
|tip You can also have another player with this reputation purchase the pattern for you, or you can purchase it from the auction house.
'|complete skill("Tailoring") >= 375 or knowsrecipe(26778) |or
step
use Pattern: Imbued Netherweave Tunic##21901
Train Imbued Netherweave Tunic |learn Imbued Netherweave Tunic##26778
stickystart "Collect_Netherweb_Spider_Silk_375"
step
collect 90 Bolt of Imbued Netherweave##21842 |or
|tip You created these in a previous step.
'|complete skill("Tailoring") >= 375 |or
step
label "Collect_Netherweb_Spider_Silk_375"
collect 30 Netherweb Spider Silk##21881 |or
|tip Farm them from Dreadfang Spiders in Terokkar Forest or purchase them from the auction house.
'|complete skill("Tailoring") >= 375 |or
step
talk Dalinna##18749
|tip Inside the building.
buy 15 Rune Thread##14341 |goto Hellfire Peninsula/0 56.6,37.2 |or
'|complete skill("Tailoring") >= 375 |or
step
Open Your Tailoring Crafting Panel:
_<Create 15 Imbued Netherweave Tunics>_
|tip You may need to create a few more or less of these.
|tip Each additional Imbued Netherweave Tunic requires 6 Bolts of Imbued Netherweave, 2 Netherweb Spider Silk, and 1 Rune Thread.
Reach Skill 375 in Tailoring |skill Tailoring,375
step
_Congratulations!_
You Reached Skill 375 in Tailoring.
]])
ZGV.BETAEND()
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Specialization\\Armorsmith\\Armorsmith Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Blacksmithing') >= 200 end,
description="This guide will walk you through completing the Armorsmith questline for the Blacksmithing profession.",
},[[
step
_NOTE ABOUT BLACKSMITHING SPECIALIZATION:_
|tip You can only have one Blacksmithing specialization.
|tip Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.
|tip We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.
|tip If you change specializations, you will still be able to use the items you create.
Click Here to Continue |confirm
step
Reach Level 40 |ding 40
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 245 Blacksmithing |skill Blacksmithing,245
|tip You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
talk Okothos Ironrager##11177
accept The Art of the Armorsmith##5301 |goto Orgrimmar 79.81,24.05
step
Enter the building |goto 81.61,22.77 < 5 |walk
talk Saru Steelfury##3355
|tip Inside the building.
learn Heavy Grinding Stone##3337 |goto 82.34,22.97
learn Solid Grinding Stone##9920 |goto 82.34,22.97
learn Steel Breastplate##9916 |goto 82.34,22.97
learn Steel Plate Helm##9935 |goto 82.34,22.97
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 120 Steel Bar##3859 |q 2756 |future
collect 36 Heavy Stone##2838 |q 2756 |future
collect 16 Solid Stone##7912 |q 2756 |future
step
Open Your Blacksmithing Crafting Panel:
_<Create 12 Heavy Grinding Stones>_
collect 12 Heavy Grinding Stone##3486 |q 2756 |future
step
Open Your Blacksmithing Crafting Panel:
_<Create 4 Solid Grinding Stones>_
collect 4 Solid Grinding Stone##7966 |q 2756 |future
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 4 Steel Breastplates>_
collect 4 Steel Breastplate##7963 |goto Orgrimmar 79.76,22.99 |q 2756 |future
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 4 Steel Plate Helms>_
collect 4 Steel Plate Helm##7922 |goto 79.76,22.99 |q 2756 |future
step
talk Aturk the Anvil##7792
accept The Old Ways##2756 |goto 80.94,23.32
step
talk Aturk the Anvil##7792
turnin The Old Ways##2756 |goto 80.94,23.32
learn Orcish War Leggings##9957 |goto 80.94,23.32
|tip You will learn this automatically.
step
talk Ox##7793
accept Booty Bay or Bust!##2757 |goto 80.45,23.50
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.75 < 7 |only if walking
Follow the path |goto Stranglethorn Vale 28.40,75.77 < 7 |only if walking
talk McGavan##7794
turnin Booty Bay or Bust!##2757 |goto Stranglethorn Vale 28.87,75.42
accept The Mithril Order##2760 |goto Stranglethorn Vale 28.87,75.42
step
Enter the building |goto 28.95,75.34 < 5 |walk
talk Brikk Keencraft##2836
|tip Inside the building.
learn Heavy Mithril Breastplate##9959 |goto 28.99,75.55
learn Mithril Coif##9961 |goto 28.99,75.55
learn Heavy Mithril Boots##9968 |goto 28.99,75.55
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 40 Iron Bar##3575 |q 2761 |future
collect 120 Mithril Bar##3860 |q 2763 |future
collect 5 Truesilver Bar##6037 |q 2762 |future
collect 4 Citrine##3864 |q 2763 |future
step
Enter the tunnel |goto 27.95,73.61 < 10 |only if walking
Leave the tunnel |goto 29.59,72.46 < 10 |only if walking
Follow the road |goto 30.96,71.70 < 30 |only if walking
Continue following the road |goto 33.46,55.53 < 30 |only if walking
Continue following the road |goto 36.15,48.91 < 30 |only if walking
Follow the path |goto 44.00,26.14 < 30 |only if walking
Follow the path up |goto 47.03,22.84 < 15 |only if walking
talk Galvan the Ancient##7802
turnin The Mithril Order##2760 |goto 50.62,20.48
accept Smelt On, Smelt Off##2761 |goto 50.62,20.48
accept The Great Silver Deceiver##2762 |goto 50.62,20.48
accept The Art of the Imbue##2763 |goto 50.62,20.48
step
talk Galvan the Ancient##7802
turnin Smelt On, Smelt Off##2761 |goto 50.62,20.48
turnin The Great Silver Deceiver##2762 |goto 50.62,20.48
turnin The Art of the Imbue##2763 |goto 50.62,20.48
accept Expert Blacksmith!##2765 |goto 50.62,20.48
step
Watch the dialogue
Watch Galvan Work |q 2765/1 |goto 50.57,20.37
step
talk Galvan the Ancient##7802
turnin Expert Blacksmith!##2765 |goto 50.57,20.37
accept Galvan's Finest Pupil##2764 |goto 50.57,20.37
step
use the Plans: Ornate Mithril Pants##7983
learn Ornate Mithril Pants##9945
step
use the Plans: Ornate Mithril Gloves##7984
learn Ornate Mithril Gloves##9950
step
use the Plans: Ornate Mithril Shoulder##7985
learn Ornate Mithril Shoulders##9952
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 114 Mithril Bar##3860 |q 2773 |future
collect 3 Truesilver Bar##6037 |q 2773 |future
collect Aquamarine##7909 |q 2772 |future
collect 8 Solid Stone##7912 |q 2773 |future
collect 14 Thick Leather##4304 |q 2772 |future
|tip If you have the Skinning profession, you can gather this.
collect 18 Mageweave Cloth##4338 |q 2773 |future
step
talk Trenton Lighthammer##7804
turnin Galvan's Finest Pupil##2764 |goto Tanaris 51.42,28.75
accept A Good Head On Your Shoulders##2771 |goto Tanaris 51.42,28.75
accept The World At Your Feet##2772 |goto Tanaris 51.42,28.75
accept The Mithril Kid##2773 |goto Tanaris 51.42,28.75
step
Open Your Blacksmithing Crafting Panel:
_<Create 2 Solid Grinding Stones>_
collect 2 Solid Grinding Stone##7966 |q 2773
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 2 Mithril Coifs>_
collect 2 Mithril Coif##7931 |q 2771/1 |goto 51.42,28.75
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 1 Ornate Mithril Shoulders>_
collect Mithril Coif##7931 |q 2771/2 |goto 51.42,28.75
step
talk Trenton Lighthammer##7804
turnin A Good Head On Your Shoulders##2771 |goto 51.42,28.75
learn Ornate Mithril Helm##9980 |goto 51.42,28.75
|tip You will learn this automatically.
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 2 Heavy Mithril Boots>_
collect 2 Heavy Mithril Boots##7933 |q 2772/1 |goto 51.42,28.75
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 1 Ornate Mithril Pants>_
collect Ornate Mithril Pants##7926 |q 2771/2 |goto 51.42,28.75
step
talk Trenton Lighthammer##7804
turnin The World At Your Feet##2772 |goto 51.42,28.75
learn Ornate Mithril Boots##9979 |goto 51.42,28.75
|tip You will learn this automatically.
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 2 Heavy Mithril Breastplate>_
collect 2 Heavy Mithril Breastplate##7930 |q 2773/1 |goto 51.42,28.75
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 1 Ornate Mithril Gloves>_
collect Ornate Mithril Gloves##7927 |q 2773/2 |goto 51.42,28.75
step
talk Trenton Lighthammer##7804
turnin The Mithril Kid##2773 |goto 51.42,28.75
learn Ornate Mithril Breastplate##9972 |goto 51.42,28.75
|tip You will learn this automatically.
step
talk Trenton Lighthammer##7804
accept Did You Lose This?##3321 |goto 51.42,28.75
step
Watch the dialogue
Watch Trenton Work |q 3321/1 |goto 51.42,28.76
step
talk Trenton Lighthammer##7804
turnin Did You Lose This?##3321 |goto 51.42,28.76
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather most these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 108 Mithril Bar##3860 |q 5301
collect 18 Truesilver Bar##6037 |q 5301
collect 2 Aquamarine##7909 |q 5301
collect 28 Solid Stone##7912 |q 5301
collect 4 Black Pearl##7971 |q 5301
collect Heart of Fire##7077 |q 5301
collect 8 Thick Leather##4304 |q 5301
|tip If you have the Skinning profession, you can gather this.
step
Open Your Blacksmithing Crafting Panel:
_<Create 7 Solid Grinding Stones>_
collect 7 Solid Grinding Stone##7966 |q 5301
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 4 Ornate Mithril Helms>_
collect 4 Ornate Mithril Helm##7937 |q 5301/1 |goto Orgrimmar 79.76,22.99
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 2 Ornate Mithril Boots>_
collect 2 Ornate Mithril Boots##7936 |q 5301/2 |goto 79.76,22.99
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 1 Ornate Mithril Breastplate>_
collect Ornate Mithril Breastplate##7935 |q 5301/3 |goto 79.76,22.99
step
talk Okothos Ironrager##11177
turnin The Art of the Armorsmith##5283 |goto 79.81,24.05
learn Armorsmith##9788 |goto 79.81,24.05
|tip You will learn this automatically.
step
_Congratulations!_
|tip You have become an Blacksmithing Armorsmith.
Learn Plans From Okothos Ironrager at [Orgrimmar 79.81,24.05]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Weaponsmith Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Blacksmithing') >= 200 end,
description="This guide will walk you through completing the Weaponsmith questline for the Blacksmithing profession.",
},[[
step
_NOTE ABOUT BLACKSMITHING SPECIALIZATION:_
|tip You can only have one Blacksmithing specialization.
|tip Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.
|tip We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.
|tip If you change specializations, you will still be able to use the items you create.
Click Here to Continue |confirm
step
Reach Level 40 |ding 40
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 230 Blacksmithing |skill Blacksmithing,230
|tip You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
talk Borgosh Corebender##11178
accept The Way of the Weaponsmith##5302 |goto Orgrimmar 79.42,23.73
step
Run up the ramp |goto Stranglethorn Vale 27.85,76.75 < 7 |only if walking
Follow the path |goto Stranglethorn Vale 28.40,75.77 < 7 |only if walking
Enter the building |goto Stranglethorn Vale 28.95,75.34 < 5 |walk
talk Brikk Keencraft##2836
|tip Inside the building.
learn Heavy Grinding Stone##3337 |goto Stranglethorn Vale 28.99,75.55
learn Solid Grinding Stone##9920 |goto Stranglethorn Vale 28.99,75.55
learn Heavy Mithril Axe##9993 |goto Stranglethorn Vale 28.99,75.55
learn Big Black Mace##10001 |goto Stranglethorn Vale 28.99,75.55
step
Leave the building |goto 44.39,93.07 < 5 |walk
Jump down and enter the building |goto 44.31,93.11 < 5 |walk
talk Zarena Cromwind##2482
|tip Inside the building.
buy Plans: Moonsteel Broadsword##12163 |n
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
use the Plans: Moonsteel Broadsword##12163
learn Moonsteel Broadsword##3496 |goto 44.28,93.09
step
talk Vharr##1146
buy Plans: Massive Iron Axe##12164 |n
|tip This is a limited supply item.
|tip If she doesn't have it for sale, check the Auction House.
use the Plans: Massive Iron Axe##12164
learn Massive Iron Axe##3498 |goto 32.36,27.95
Also check Jaquilina Dramet located at [Stranglethorn Vale 35.75,10.66]
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 32 Steel Bar##3859 |q 5302
collect 56 Mithril Bar##3860 |q 5302
collect 56 Iron Bar##3575 |q 5302
collect 16 Gold Bar##3577 |q 5302
collect 48 Heavy Stone##2838 |q 5302
collect 16 Solid Stone##7912 |q 5302
collect 4 Citrine##3864 |q 5302
collect 2 Black Pearl##7971 |q 5302
collect 8 Shadowgem##1210 |q 5302
collect 12 Lesser Moonstone##1705 |q 5302
collect 28 Heavy Leather##4234 |q 5302
|tip If you have the Skinning profession, you can gather this.
collect 4 Thick Leather##4304 |q 5302
|tip If you have the Skinning profession, you can gather this.
step
Enter the building |goto Orgrimmar 81.60,22.77 < 5 |walk
talk Sumi##3356
|tip Inside the building.
buy 16 Strong Flux##3466 |goto Orgrimmar 82.60,23.96 |q 5302
step
Open Your Blacksmithing Crafting Panel:
_<Create 4 Solid Grinding Stones>_
collect 4 Solid Grinding Stone##7966 |q 5302
step
Open Your Blacksmithing Crafting Panel:
_<Create 16 Heavy Grinding Stones>_
collect 16 Heavy Grinding Stone##3486 |q 5302
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 4 Moonsteel Broadswords>_
collect 4 Moonsteel Broadsword##3853 |q 5302/1 |goto 79.76,22.99
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 4 Massive Iron Axes>_
collect 4 Massive Iron Axe##3855 |q 5302/2 |goto 79.76,22.99
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 2 Heavy Mithril Axes>_
collect 2 Heavy Mithril Axe##7941 |q 5302/3 |goto 79.76,22.99
step
Open Your Blacksmithing Crafting Panel:
|tip Stand next to the anvil.
_<Create 2 Big Black Maces>_
collect 2 Big Black Mace##7945 |q 5302/4 |goto 79.76,22.99
step
talk Borgosh Corebender##11178
turnin The Way of the Weaponsmith##5302 |goto 79.42,23.73
learn Weaponsmith##9787 |goto 79.42,23.73
|tip You will learn this automatically.
step
_Congratulations!_
|tip You have become an Blacksmithing Weaponsmith.
Learn Plans From Borgosh Corebender at [Orgrimmar 79.42,23.73]
|tip You can continue your specialization by choosing from 3 paths:
|tip Master Axesmith
|tip Master Hammersmith
|tip Master Swordsmith
|tip Search the guide menu for the title above to find the questline guide associated with it.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Master Axesmith Questline",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Master Axesmith questline to continue Weaponsmith specialization for the Blacksmithing profession.",
},[[
step
_NOTE ABOUT BLACKSMITHING SPECIALIZATION:_
|tip You can only have one Blacksmithing specialization.
|tip Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.
|tip We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.
|tip If you change specializations, you will still be able to use the items you create.
Click Here to Continue |confirm
step
learn Weaponsmith##9787
|tip You must become a Weaponsmith before you can begin this questline.
|tip Use the "Weaponsmith Questline" guide to accomplish this.
step
Reach Level 50 |ding 50
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 250 Blacksmithing |skill Blacksmithing,250
|tip You must be at least this level with your Blacksmithing profession before you can begin this questline.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 61.33,37.36 < 7 |walk
talk Kilram##11192
|tip Inside the building.
accept Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.30,37.07
step
kill Shadow Hunter Vosh'gajin##9236
|tip She is a boss inside the Lower Blackrock Spire dungeon.
|tip Use the "Lower Blackrock Spire" dungeon guide to accomplish this.
collect Vosh'gajin's Snakestone##13352 |q 5306/1
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 61.33,37.36 < 7 |walk
talk Kilram##11192
|tip Inside the building.
turnin Snakestone of the Shadow Huntress##5306 |goto Winterspring 61.30,37.07
step
talk Kilram##11192
|tip Inside the building.
Tell him _"Please teach me how to become an axesmith, Kilram."_
learn Master Axesmith##17041 |goto 61.30,37.07
step
Reach Level 275 Blacksmithing |skill Blacksmithing,275
|tip You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
use the Plans: Dawn's Edge##12821
learn Dawn's Edge##16970
step
_Congratulations!_
|tip You have become a Master Axesmith.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Master Hammersmith Questline",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Master Hammersmith questline to continue Weaponsmith specialization for the Blacksmithing profession.",
},[[
step
_NOTE ABOUT BLACKSMITHING SPECIALIZATION:_
|tip You can only have one Blacksmithing specialization.
|tip Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.
|tip We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.
|tip If you change specializations, you will still be able to use the items you create.
Click Here to Continue |confirm
step
learn Weaponsmith##9787
|tip You must become a Weaponsmith before you can begin this questline.
|tip Use the "Weaponsmith Questline" guide to accomplish this.
step
Reach Level 50 |ding 50
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 250 Blacksmithing |skill Blacksmithing,250
|tip You must be at least this level with your Blacksmithing profession before you can begin this questline.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 61.33,37.36 < 7 |walk
talk Lilith the Lithe##11191
|tip Inside the building.
accept Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
kill Crimson Hammersmith##11120
|tip He is a boss inside the Main Gate section of the Stratholme dungeon.
|tip Use the "Stratholme" dungeon guide to accomplish this.
collect Crimson Hammersmith's Apron##13351 |q 5305/1
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 61.33,37.36 < 7 |walk
talk Lilith the Lithe##11191
|tip Inside the building.
turnin Sweet Serenity##5305 |goto Winterspring 61.33,37.13
step
talk Lilith the Lithe##11191
|tip Inside the building.
Tell him _"Please teach me how to become a hammersmith, Lilith."_
learn Master Hammersmith##17040 |goto 61.33,37.13
step
Reach Level 280 Blacksmithing |skill Blacksmithing,280
|tip You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
use the Plans: Enchanted Battlehammer##12824
learn Enchanted Battlehammer##16973
step
_Congratulations!_
|tip You have become a Master Hammersmith.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Specialization\\Weaponsmith\\Master Swordsmith Questline",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Master Swordsmith questline to continue Weaponsmith specialization for the Blacksmithing profession.",
},[[
step
_NOTE ABOUT BLACKSMITHING SPECIALIZATION:_
|tip You can only have one Blacksmithing specialization.
|tip Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.
|tip We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.
|tip If you change specializations, you will still be able to use the items you create.
Click Here to Continue |confirm
step
learn Weaponsmith##9787
|tip You must become a Weaponsmith before you can begin this questline.
|tip Use the "Weaponsmith Questline" guide to accomplish this.
step
Reach Level 50 |ding 50
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 250 Blacksmithing |skill Blacksmithing,250
|tip You must be at least this level with your Blacksmithing profession before you can begin this questline.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 61.33,37.36 < 7 |walk
talk Seril Scourgebane##11193
|tip Inside the building.
accept Corruption##5307 |goto Winterspring 61.33,37.19
step
kill Black Guard Swordsmith##11121
|tip He is a boss inside the Service Gate section of the Stratholme dungeon.
|tip Use the "Stratholme" dungeon guide to accomplish this.
collect Insignia of the Black Guard##13350 |q 5307/1
step
Follow the path |goto Winterspring 60.56,38.20 < 7 |only if walking
Enter the building |goto Winterspring 61.33,37.36 < 7 |walk
talk Seril Scourgebane##11193
|tip Inside the building.
turnin Corruption##5307 |goto Winterspring 61.33,37.19
step
talk Seril Scourgebane##11193
|tip Inside the building.
Tell him _"Please teach me how to become a swordsmith, Seril."_
learn Master Swordsmith##17039 |goto 61.33,37.19
step
Reach Level 280 Blacksmithing |skill Blacksmithing,280
|tip You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step.
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
step
use the Plans: Blazing Rapier##12825
learn Blazing Rapier##16978
step
_Congratulations!_
|tip You have become a Master Swordsmith.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Specialization\\How to Change Blacksmithing Specialization",{
author="support@zygorguides.com",
description="This guide will walk you through changing your Blacksmithing profession specialization.",
},[[
step
_NOTE:_
|tip You MUST fully complete the questline for either Armorsmith or Weaponsmith before you can switch specializations.
Click Here to Continue |confirm
step
Unlearn Blacksmithing |condition skill("Blacksmithing") == 0
|tip Press "K" to open your Skills tab.
|tip You must completely unlearn the Blacksmithing profession to be able to switch your specialization.
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
|tip You must be at least level 30 to be able to start the questlines to choose an Blacksmithing specialization.
step
Reach Level 200 Blacksmithing |condition skill("Blacksmithing") >= 200
|tip Use the "Blacksmithing (1-300)" guide to accomplish this.
|tip You must be at least level 200 Blacksmithing to be able to start the questlines to choose an Blacksmithing specialization.
step
Follow the path |goto Tanaris 64.90,22.54 < 30 |only if walking
Enter the building |goto Tanaris 65.41,18.56 < 7 |walk
click Book "Soothsaying for Dummies"
|tip Inside the building.
|tip Choose the dialogue option that matches what you want to do.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Specialization\\Gnomish Engineering\\Gnomish Engineering Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Engineering') >= 200 end,
description="This guide will walk you through completing the Gnomish Engineering questline for the Engineering profession.",
},[[
step
_NOTE ABOUT GNOMISH ENGINEERING:_
|tip You cannot specialize in both Gnomish and Goblin Engineering.
|tip Additionally, you cannot change your specialization without unlearning the Engineering profession, and leveling it up again.
|tip We recommend looking into the differences between Gnomish and Goblin Engineering before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip You can create some of the most desirable Bind On Pickup trinkets for a specialization, unlearn Engineering to level it up again to learn the other specialization.
|tip If you change specializations, you will still be able to use the items you create, unless they specifically require Gnomish Engineering to use it.
Click Here to Continue |confirm
step
Reach Level 30 |ding 30
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 200 Engineering |skill Engineering,200
|tip You must be at least level 200 with your Engineering profession before you can begin this questline.
|tip Use the "Engineering (1-300)" guide to accomplish this.
step
Enter the building |goto The Barrens 62.89,36.52 < 7 |walk
talk Tinkerwiz##3494
|tip Inside the building.
accept Gnome Engineering##3637 |goto The Barrens 62.67,36.31
step
Leave the building |goto 62.89,36.52 < 7 |walk
Run up the ramp |goto Stranglethorn Vale 26.92,73.62 < 7 |only if walking
Follow the path |goto Stranglethorn Vale 28.10,73.96 < 7 |only if walking
Enter the building |goto Stranglethorn Vale 28.29,76.16 < 5 |walk
talk Oglethorpe Obnoticus##7406
|tip Inside the building.
turnin Gnome Engineering##3637 |goto Stranglethorn Vale 28.36,76.35
accept The Pledge of Secrecy##3642 |goto Stranglethorn Vale 28.36,76.35
step
use Oglethorpe's Pledge of Secrecy##10794
collect Oglethorpe's Signed Pledge##11282 |q 3642/1
step
talk Oglethorpe Obnoticus##7406
|tip Inside the building.
turnin The Pledge of Secrecy##3642 |goto 28.36,76.35
accept Show Your Work##3643 |goto 28.36,76.35
step
Enter the building |goto 28.11,74.99 < 7 |walk
talk Mazk Snipeshot##2685
|tip Inside the building.
buy Schematic: Accurate Scope##13310
|tip This is a limited supply item.
|tip If he doesn't have it for sale, check the Auction House.
use the Schematic: Accurate Scope##13310
learn Accurate Scope##3979 |goto 28.50,75.12
step
Enter the building |goto Orgrimmar 75.23,24.61 < 5 |walk
talk Roxxik##11017
|tip Inside the building.
learn Bronze Framework##3953 |goto Orgrimmar 76.17,25.17
learn Gold Power Core##12584 |goto Orgrimmar 76.17,25.17
learn Iron Strut##3958 |goto Orgrimmar 76.17,25.17
learn Gyrochronatom##3961 |goto Orgrimmar 76.17,25.17
learn Advanced Target Dummy##3965 |goto Orgrimmar 76.17,25.17
step
talk Sovik##3413
|tip Inside the building.
buy Weak Flux##2880 |goto 75.48,25.36
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 18 Mithril Bar##3860 |q 3643
collect 6 Bronze Bar##2841 |q 3643
collect Jade##1529 |q 3643
collect Citrine##3864 |q 3643
collect 6 Iron Bar##3575 |q 3643
collect Gold Bar##3577 |q 3643
collect 2 Medium Leather##2319 |q 3643
|tip If you have the Skinning profession, you can gather this.
collect 8 Heavy Leather##4234 |q 3643
|tip If you have the Skinning profession, you can gather this.
collect 2 Wool Cloth##2592 |q 3643
step
Run up the ramp |goto Stranglethorn Vale 26.92,73.62 < 7 |only if walking
Follow the path |goto Stranglethorn Vale 28.10,73.96 < 7 |only if walking
Enter the building |goto Stranglethorn Vale 28.95,75.33 < 5 |walk
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
|tip Inside the building.
_<Create 6 Mithril Tubes>_
collect 6 Mithril Tube##10559 |q 3643/1 |goto Stranglethorn Vale 28.95,75.48
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
|tip Inside the building.
_<Create 1 Bronze Tube>_
collect Bronze Tube##4371 |goto 28.95,75.48 |q 3643
step
Open Your Engineering Crafting Panel:
_<Create 1 Accurate Scope>_
collect Accurate Scope##4407 |q 3643/2
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
|tip Inside the building.
_<Create 2 Iron Struts>_
collect 2 Iron Strut##4387 |goto 28.95,75.48 |q 3643
step
Open Your Engineering Crafting Panel:
_<Create 2 Bronze Frameworks>_
collect 2 Bronze Framework##4382 |q 3643
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
|tip Inside the building.
_<Create 1 Gold Power Core>_
|tip This schematic will give you 3 of these.
collect 2 Gold Power Core##10558 |goto 28.95,75.48 |q 3643
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
|tip Inside the building.
_<Create 2 Gyrochronatoms>_
collect 2 Gyrochronatom##4389 |goto 28.95,75.48 |q 3643
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
|tip Inside the building.
_<Create 2 Advanced Target Dummies>_
collect 2 Advanced Target Dummy##4392 |q 3643/3 |goto 28.95,75.48
step
Leave the building |goto 28.95,75.33 < 5 |walk
Enter the building |goto 28.29,76.16 < 5 |walk
talk Oglethorpe Obnoticus##7406
|tip Inside the building.
turnin Show Your Work##3643 |goto 28.36,76.35
step
_Congratulations!_
|tip You have earned your Gnome Engineer Membership Card.
|tip This card allows you to learn Gnomish Engineering schematics from Oglethorpe Obnoticus.
|tip This item will last for 14 days of in-game play time.
|tip The time will not count down when you are logged out, so it will last a long time.
|tip You can only learn Gnomish Engineering schematics while you have this item in your bags.
|tip When the time runs out, you can renew the card, if you need to.
|tip Use the "Gnomish Engineering Card Renewal" guide to renew the card.
Learn Schematics From Oglethorpe Obnoticus at [Stranglethorn Vale 28.36,76.35]
|tip On the upper dock, inside the building.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Specialization\\Gnomish Engineering\\Gnome Engineer Membership Card Renewal",{
author="support@zygorguides.com",
description="This guide will walk you through renewing your Gnome Engineer Membership Card, as well as using the Gnome Engineer's Renewal Gifts to collect rare schematics.",
},[[
step
Enter the building |goto Stranglethorn Vale 28.29,76.16 < 5 |walk
talk Oglethorpe Obnoticus##7406
|tip Inside the building.
accept Membership Card Renewal##3645 |goto Stranglethorn Vale 28.36,76.35
|tip You must have the Gnomish Engineering specialization to be able to complete this quest.
|tip This quest requires 2 gold to complete.
|tip This will keep your Gnome Engineer Membership Card active for another 14 days of played time.
step
collect Gnome Engineer's Renewal Gift##11423 |n
|tip You will receive one of these in your mailbo 24 hours after renewing your membership card.
|tip You can destroy and renew your membership card repeatedly, if you want more of them to open.
|tip You don't need to wait for the card to expire on its own.
use the Gnome Engineer's Renewal Gift##11423
|tip These will contain some Engineer crafting supplies.
|tip The rare schematic for the "Lil' Smoky" pet also has a chance to be inside.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Specialization\\Goblin Engineering\\Goblin Engineering Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Engineering') >= 200 end,
description="This guide will walk you through completing the Goblin Engineering questline for the Engineering profession.",
},[[
step
_NOTE ABOUT GOBLIN ENGINEERING:_
|tip You cannot specialize in both Gnomish and Goblin Engineering.
|tip Additionally, you cannot change your specialization without unlearning the Engineering profession, and leveling it up again.
|tip We recommend looking into the differences between Gnomish and Goblin Engineering before you choose which to pursue, depending on your personal play style and the specific items you want to create.
|tip You can create some of the most desirable Bind On Pickup trinkets for a specialization, unlearn Engineering to level it up again to learn the other specialization.
|tip If you change specializations, you will still be able to use the items you create, unless they specifically require Goblin Engineering to use it.
Click Here to Continue |confirm
step
Reach Level 30 |ding 30
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 200 Engineering |skill Engineering,200
|tip You must be at least level 200 with your Engineering profession before you can begin this questline.
|tip Use the "Engineering (1-300)" guide to accomplish this.
step
Enter the building |goto The Barrens 62.89,36.52 < 7 |walk
talk Tinkerwiz##3494
|tip Inside the building.
accept Goblin Engineering##3633 |goto The Barrens 62.67,36.31
step
Leave the building |goto 62.89,36.52 < 7 |walk
Enter the building |goto Tanaris 52.39,27.30 < 5 |walk
talk Nixx Sprocketspring##8126
|tip Inside the building.
turnin Goblin Engineering##3633 |goto Tanaris 52.48,27.33
accept The Pledge of Secrecy##3638 |goto Tanaris 52.48,27.33
step
use Nixx's Pledge of Secrecy##10792
collect Nixx's Signed Pledge##11270 |q 3638/1
step
talk Nixx Sprocketspring##8126
|tip Inside the building.
turnin The Pledge of Secrecy##3638 |goto 52.48,27.33
accept Show Your Work##3639 |goto 52.48,27.33
step
_Collect These Items:_
|tip If you have the Mining profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 30 Iron Bar##3575 |q 3639
collect 40 Heavy Stone##2838 |q 3639
collect 2 Silver Bar##2842 |q 3639
collect 20 Solid Stone##7912 |q 3639
collect 10 Silk Cloth##4306 |q 3639
collect 20 Bronze Bar##2841 |q 3639
collect 5 Medium Leather##2319 |q 3639
|tip If you have the Skinning profession, you can gather this.
collect 20 Wool Cloth##2592 |q 3639
step
talk Buzzek Bracketswing##8736
learn Big Iron Bomb##3967 |goto Tanaris 52.34,27.72
learn Solid Dynamite##12586 |goto 52.34,27.72
learn Explosive Sheep##3955 |goto 52.34,27.72
learn Solid Blasting Powder##12585 |goto 52.34,27.72
learn Bronze Framework##3953 |goto 52.34,27.72
learn Heavy Blasting Powder##3945 |goto 52.34,27.72
learn Whirring Bronze Gizmo##3942 |goto 52.34,27.72
learn Silver Contact##3973 |goto 52.34,27.72
step
Open Your Engineering Crafting Panel:
_<Create 40 Heavy Blasting Powder>_
collect 40 Heavy Blasting Powder##4377 |q 3639
step
Open Your Engineering Crafting Panel:
_<Create 2 Silver Contacts>_
|tip This schematic will give you 5 of these.
collect 10 Silver Contact##4404 |q 3639
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
_<Create 10 Big Iron Bombs>_
|tip This schematic will give you 2 of these.
collect 20 Big Iron Bomb##4394 |q 3639/1 |goto 51.40,28.72
step
Open Your Engineering Crafting Panel:
_<Create 10 Solid Blasting Powder>_
collect 10 Solid Blasting Powder##10505 |q 3639
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
_<Create 10 Solid Dynamite>_
|tip This schematic will give you 2 of these.
collect 20 Solid Dynamite##10507 |q 3639/2 |goto 51.40,28.72
step
Open Your Engineering Crafting Panel:
_<Create 5 Bronze Frameworks>_
collect 5 Bronze Framework##4382 |q 3639
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
_<Create 5 Whirring Bronze Gizmos>_
collect 5 Whirring Bronze Gizmo##4375 |goto 51.40,28.72 |q 3639
step
Open Your Engineering Crafting Panel:
|tip Stand next to the anvil.
_<Create 5 Explosive Sheep>_
collect 5 Explosive Sheep##4384 |q 3639/3 |goto 51.40,28.72
step
Enter the building |goto Tanaris 52.39,27.30 < 5 |walk
talk Nixx Sprocketspring##8126
|tip Inside the building.
turnin Show Your Work##3639 |goto Tanaris 52.48,27.33
step
_Congratulations!_
|tip You have earned your Goblin Engineer Membership Card.
|tip This card allows you to learn Goblin Engineering schematics from Nixx Sprocketspring.
|tip This item will last for 14 days of in-game play time.
|tip The time will not count down when you are logged out, so it will last a long time.
|tip You can only learn Goblin Engineering schematics while you have this item in your bags.
|tip When the time runs out, you can renew the card, if you need to.
|tip Use the "Goblin Engineering Card Renewal" guide to renew the card.
Learn Schematics From Nixx Sprocketspring at [Tanaris 52.48,27.33]
|tip Inside the building.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Specialization\\Goblin Engineering\\Goblin Engineer Membership Card Renewal",{
author="support@zygorguides.com",
description="This guide will walk you through renewing your Goblin Engineer Membership Card, as well as using the Goblin Engineer's Renewal Gifts to collect rare schematics.",
},[[
step
Enter the building |goto Tanaris 52.39,27.30 < 5 |walk
talk Nixx Sprocketspring##8126
|tip Inside the building.
accept Membership Card Renewal##3644 |goto Tanaris 52.48,27.33
|tip You must have the Goblin Engineering specialization to be able to complete this quest.
|tip This quest requires 2 gold to complete.
|tip This will keep your Goblin Engineer Membership Card active for another 14 days of played time.
step
collect Goblin Engineer's Renewal Gift##11422 |n
|tip You will receive one of these in your mailbo 24 hours after renewing your membership card.
|tip You can destroy and renew your membership card repeatedly, if you want more of them to open.
|tip You don't need to wait for the card to expire on its own.
use the Goblin Engineer's Renewal Gift##11422
|tip These will contain some Engineer crafting supplies.
|tip The rare schematic for the "Pet Bombling" pet also has a chance to be inside.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Specialization\\How to Change Engineering Specialization",{
author="support@zygorguides.com",
description="This guide will walk you through changing your Engineering profession specialization.",
},[[
step
_NOTE:_
|tip You MUST fully complete the questline for either Gnomish Engineering or Goblin engineering before you can switch specializations.
|tip You must have obtained either the Gnome Engineer Membership Card or Goblin Engineer Membership Card, or it won't let you switch.
Click Here to Continue |confirm
step
Unlearn Engineering |condition skill("Engineering") == 0
|tip Press "K" to open your Skills tab.
|tip You must completely unlearn the Engineering profession to be able to switch your specialization.
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
|tip You must be at least level 30 to be able to start the questlines to choose an Engineering specialization.
step
Reach Level 200 Engineering |condition skill("Engineering") >= 200
|tip Use the "Engineering (1-300)" guide to accomplish this.
|tip You must be at least level 200 Engineering to be able to start the questlines to choose an Engineering specialization.
step
Follow the path |goto Tanaris 64.90,22.54 < 30 |only if walking
Enter the building |goto Tanaris 65.41,18.56 < 7 |walk
click Book "Soothsaying for Dummies"
|tip Inside the building.
|tip Choose the dialogue option that matches what you want to do.
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Specialization\\Dragonscale Leatherworking\\Dragonscale Leatherworking Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Leatherworking') >= 225 end,
description="This guide will walk you through completing the Dragonscale Leatherworking questline for the Leatherworking profession.",
},[[
step
_NOTE ABOUT LEATHERWORKING SPECIALIZATION:_
|tip You can only have one Leatherworking specialization.
|tip Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.
|tip We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.
Click Here to Continue |confirm
step
Reach Level 40 |ding 40
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 225 Leatherworking |skill Leatherworking,225
|tip You must be at least this level with your Leatherworking profession before you can begin this questline.
|tip Use the "Leatherworking (1-300)" guide to accomplish this.
stickystart "Learn_Tough_Scorpid_Gloves"
step
kill Wastewander Bandit##5618+
collect Pattern: Tough Scorpid Breastplate##8395 |n
|tip You can also purchase this from the Auction House, if you don't want to grind for it.
use the Pattern: Tough Scorpid Breastplate##8395
learn Tough Scorpid Breastplate##10525 |goto Tanaris 60.30,24.02
You can find more Wastewander Bandits around:
[Tanaris 63.62,31.49]
step
label "Learn_Tough_Scorpid_Gloves"
kill Wastewander Thief##5616+
collect Pattern: Tough Scorpid Gloves##8398 |n
|tip You can also purchase this from the Auction House, if you don't want to grind for it.
use the Pattern: Tough Scorpid Gloves##8398
learn Tough Scorpid Gloves##10542 |goto Tanaris 60.30,24.02
You can find more Wastewander Thieves around:
[Tanaris 63.62,31.49]
step
_Collect These Items:_
|tip If you have the Skinning profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 36 Thick Leather##4304 |q 5145 |future
collect 40 Scorpid Scale##8154 |q 5145 |future
collect 10 Worn Dragonscale##8165 |q 5145 |future
|tip These are skinned from Dragonkin enemies and bosses inside the Temple of Atal'Hakkar (Sunken Temple) dungeon.
step
talk Nerrist##1148
buy 12 Silken Thread##4291 |goto Stranglethorn Vale 32.70,29.23 |q 5145 |future
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Tough Scorpid Gloves>_
collect 2 Tough Scorpid Gloves##8204 |q 5145 |future
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Tough Scorpid Breastplates>_
collect 2 Tough Scorpid Breastplate##8203 |q 5145 |future
step
talk Thorkaf Dragoneye##7867
accept Dragonscale Leatherworking##5145 |goto Badlands 62.70,57.40
step
talk Thorkaf Dragoneye##7867
turnin Dragonscale Leatherworking##5145 |goto 62.70,57.40
learn Dragonscale Leatherworking##10656 |goto 62.70,57.40
|tip You will learn this automatically.
step
_Congratulations!_
|tip You have become a Dragonscale Leatherworker.
Learn Patterns From Thorkaf Dragoneye at [Badlands 62.70,57.40]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Specialization\\Elemental Leatherworking\\Elemental Leatherworking Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Leatherworking') >= 225 end,
description="This guide will walk you through completing the Elemental Leatherworking questline for the Leatherworking profession.",
},[[
step
_NOTE ABOUT LEATHERWORKING SPECIALIZATION:_
|tip You can only have one Leatherworking specialization.
|tip Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.
|tip We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.
Click Here to Continue |confirm
step
Reach Level 40 |ding 40
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 225 Leatherworking |skill Leatherworking,225
|tip You must be at least this level with your Leatherworking profession before you can begin this questline.
|tip Use the "Leatherworking (1-300)" guide to accomplish this.
step
_Collect These Items:_
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 2 Heart of Fire##7077 |q 5146 |future
collect 2 Globe of Water##7079 |q 5146 |future
collect 2 Core of Earth##7075 |q 5146 |future
collect 2 Breath of Wind##7081 |q 5146 |future
step
talk Brumn Winterhoof##7869
accept Elemental Leatherworking##5146 |goto Arathi Highlands 28.27,45.09
step
talk Brumn Winterhoof##7869
turnin Elemental Leatherworking##5146 |goto 28.27,45.09
step
_Congratulations!_
|tip You have become an Elemental Leatherworker.
Learn Patterns From Brumn Winterhoof at [Arathi Highlands 28.27,45.09]
]])
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Specialization\\Tribal Leatherworking\\Tribal Leatherworking Questline",{
author="support@zygorguides.com",
condition_suggested=function() return skill('Leatherworking') >= 225 end,
description="This guide will walk you through completing the Tribal Leatherworking questline for the Leatherworking profession.",
},[[
step
_NOTE ABOUT LEATHERWORKING SPECIALIZATION:_
|tip You can only have one Leatherworking specialization.
|tip Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.
|tip We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.
Click Here to Continue |confirm
step
Reach Level 40 |ding 40
|tip You must be at least this level before you can begin this questline.
|tip Use the leveling guides to accomplish this.
step
Reach Level 235 Leatherworking |skill Leatherworking,235
|tip You must be at least this level with your Leatherworking profession before you can creature some of the patterns needed for this questline.
|tip Use the "Leatherworking (1-300)" guide to accomplish this.
step
_Collect These Items:_
|tip If you have the Skinning profession, you can gather these.
|tip Search the guide menu for the item(s) to use the farming guides.
|tip You can also purchase them from the Auction House.
collect 214 Thick Leather##4304 |q 2858 |future
collect 112 Turtle Scale##8167 |q 2859 |future
collect 11 Wildvine##8153 |q 5148 |future
|tip If you have the Herbalism profession, you can gather these.
collect 2 Cured Thick Hide##8172 |q 5148 |future
step
Enter the building |goto Feralas 74.68,42.99 < 5 |walk
talk Hahrana Ironhide##11098
|tip Inside the building.
learn Cured Thick Hide##10482 |goto Feralas 74.36,43.12
learn Thick Armor Kit##10487 |goto Feralas 74.36,43.12
learn Nightscape Headband##10507 |goto Feralas 74.36,43.12
learn Nightscape Tunic##10499 |goto Feralas 74.36,43.12
learn Turtle Scale Bracers##10518 |goto Feralas 74.36,43.12
learn Turtle Scale Breastplate##10511 |goto Feralas 74.36,43.12
learn Turtle Scale Helm##10552 |goto Feralas 74.36,43.12
learn Nightscape Boots##10558 |goto Feralas 74.36,43.12
learn Nightscape Pants##10548 |goto Feralas 74.36,43.12
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
buy Pattern: Turtle Scale Gloves##8385 |n
|tip This is a limited supply item.
|tip If he doesn't have it for sale, check the Auction House.
use the Pattern: Turtle Scale Gloves##8385
learn Turtle Scale Gloves##10509 |goto 74.43,42.91
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
accept Wild Leather Armor##2854 |goto 74.43,42.91
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Wild Leather Armor##2854 |goto 74.43,42.91
accept Wild Leather Shoulders##2855 |goto 74.43,42.91
accept Wild Leather Vest##2856 |goto 74.43,42.91
accept Wild Leather Helmet##2857 |goto 74.43,42.91
accept Wild Leather Boots##2858 |goto 74.43,42.91
accept Wild Leather Leggings##2859 |goto 74.43,42.91
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
buy 22 Silken Thread##4291 |goto 74.43,42.91 |q 2859
buy 12 Heavy Silken Thread##8343 |goto 74.43,42.91 |q 2859
step
Open Your Leatherworking Crafting Panel:
_<Create 6 Thick Armor Kits>_
collect 6 Thick Armor Kit##8173 |q 2855/1
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Wild Leather Shoulders##2855 |goto 74.43,42.91
step
use the Pattern: Wild Leather Shoulders##8403
learn Wild Leather Shoulders##10529
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Turtle Scale Breastplates>_
collect 2 Turtle Scale Breastplate##8189 |q 2856/1
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Turtle Scale Gloves>_
collect 2 Turtle Scale Gloves##8187 |q 2856/2
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Wild Leather Vest##2856 |goto 74.43,42.91
step
use the Pattern: Wild Leather Vest##8404
learn Wild Leather Vest##10544
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Nightscape Tunics>_
collect 2 Nightscape Tunic##8175 |q 2857/1
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Nightscape Headbands>_
collect 2 Nightscape Headband##8176 |q 2857/2
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Wild Leather Helmet##2857 |goto 74.43,42.91
step
use the Pattern: Wild Leather Helmet##8405
learn Wild Leather Helmet##10546
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Nightscape Pants>_
collect 2 Nightscape Pants##8193 |q 2858/1
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Nightscape Boots>_
collect 2 Nightscape Boots##8197 |q 2858/2
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Wild Leather Boots##2858 |goto 74.43,42.91
step
use the Pattern: Wild Leather Boots##8406
learn Wild Leather Boots##10566
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Turtle Scale Helms>_
collect 2 Turtle Scale Helm##8191 |q 2859/1
step
Open Your Leatherworking Crafting Panel:
_<Create 2 Turtle Scale Bracers>_
collect 2 Turtle Scale Bracers##8198 |q 2859/2
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Wild Leather Leggings##2859 |goto 74.43,42.91
step
use the Pattern: Wild Leather Leggings##8407
learn Wild Leather Leggings##10572
step
talk Jangdor Swiftstrider##7854
|tip Inside the building.
accept Master of the Wild Leather##2860 |goto 74.43,42.91
step
Enter the building |goto Thunder Bluff 43.76,42.44 < 5 |walk
talk Una##3007
|tip Inside the building.
turnin Master of the Wild Leather##2860 |goto Thunder Bluff 41.51,42.57
step
use the Pattern: Wild Leather Cloak##8408
learn Wild Leather Cloak##10574
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Wild Leather Vest>_
collect Wild Leather Vest##8211 |q 5148 |future
step
Open Your Leatherworking Crafting Panel:
_<Create 1 Wild Leather Helmet>_
collect Wild Leather Helmet##8214 |q 5148 |future
step
Follow the path |goto Stranglethorn Vale 32.79,28.75 < 10 |only if walking
Continue following the path |goto Stranglethorn Vale 35.28,35.56 < 20 |only if walking
talk Se'Jib##7871
|tip Inside the hut.
accept Tribal Leatherworking##5143 |goto Stranglethorn Vale 36.55,34.09
step
talk Se'Jib##7871
|tip Inside the hut.
turnin Tribal Leatherworking##5143 |goto 36.55,34.09
step
_Congratulations!_
|tip You have become a Tribal Leatherworker.
Learn Patterns From Se'Jib at [Stranglethorn Vale 36.55,34.09]
]])
