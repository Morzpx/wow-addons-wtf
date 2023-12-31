local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCLASSIC") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Tirisfal Glades (1-12) [Undead Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tirisfal Glades",
condition_suggested=function() return raceclass('Scourge') and level <= 12 end,
condition_suggested_race=function() return raceclass('Scourge') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\The Barrens (12-15)",
},[[
defaultfor Scourge
step
Run up the stairs |goto Tirisfal Glades 29.99,72.48 < 5 |walk
Leave the crypt |goto Tirisfal Glades 30.32,72.10 < 7 |walk
talk Undertaker Mordo##1568
accept Rude Awakening##363 |goto Tirisfal Glades 30.22,71.65
step
Enter the building |goto 31.39,66.20 < 7 |walk
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Rude Awakening##363 |goto 30.84,66.20
accept The Mindless Ones##364 |goto 30.84,66.20
step
talk Venya Marthand##5667
|tip Inside the building.
accept Piercing the Veil##1470 |goto 30.98,66.41
|only if Scourge Warlock
stickystart "Kill_Wretched_Zombies"
step
Leave the building |goto 31.41,66.20 < 7 |walk
kill 8 Mindless Zombie##1501 |q 364/1 |goto 31.96,63.30
step
label "Kill_Wretched_Zombies"
kill 8 Wretched Zombie##1502 |q 364/2 |goto 31.96,63.30
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 31.96,63.30
step
kill Rattlecage Skeleton##1890+
collect 3 Rattlecage Skull##6281 |q 1470/1 |goto 32.73,60.10
|only if Scourge Warlock
step
Enter the building |goto 31.39,66.20 < 7 |walk
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin The Mindless Ones##364 |goto 30.84,66.20
accept Simple Scroll##3095 |goto 30.84,66.20 |only if Scourge Warrior
accept Tainted Scroll##3099 |goto 30.84,66.20 |only if Scourge Warlock
accept Encrypted Scroll##3096 |goto 30.84,66.20 |only if Scourge Rogue
accept Hallowed Scroll##3097 |goto 30.84,66.20 |only if Scourge Priest
accept Glyphic Scroll##3098 |goto 30.84,66.20 |only if Scourge Mage
accept Rattling the Rattlecages##3901 |goto 30.84,66.20
step
talk Novice Elreth##1661
|tip Inside the building.
accept The Damned##376 |goto 30.86,66.05
step
Leave the building |goto 31.39,66.20 < 7 |walk
Enter the building |goto 32.22,65.62 < 7 |walk
talk Dannal Stern##2119
|tip Inside the building.
turnin Simple Scroll##3095 |goto 32.69,65.56
|only if Scourge Warrior
step
Leave the building |goto 32.22,65.62 < 7 |c |q 376
|only if Scourge Warrior
step
talk Maximillion##2126
|tip Inside the building.
turnin Tainted Scroll##3099 |goto 30.91,66.34
|only if Scourge Warlock
step
talk Venya Marthand##5667
|tip Inside the building.
turnin Piercing the Veil##1470 |goto 30.98,66.41
|only if Scourge Warlock
step
Leave the building |goto 31.39,66.20 < 7 |c |q 376
|only if Scourge Warlock
step
Leave the building |goto 31.39,66.20 < 7 |walk
Enter the building |goto 32.22,65.62 < 7 |walk
talk David Trias##2122
|tip Inside the building.
turnin Encrypted Scroll##3096 |goto 32.53,65.65
|only if Scourge Rogue
step
Leave the building |goto 32.22,65.62 < 7 |c |q 376
|only if Scourge Rogue
step
talk Dark Cleric Duesten##2123
|tip Inside the building.
turnin Hallowed Scroll##3097 |goto 31.11,66.03
|only if Scourge Priest
step
Leave the building |goto 31.39,66.20 < 7 |c |q 376
|only if Scourge Priest
step
talk Isabella##2124
|tip Inside the building.
turnin Glyphic Scroll##3098 |goto 30.94,66.06
|only if Scourge Mage
step
Leave the building |goto 31.39,66.20 < 7 |c |q 376
|only if Scourge Mage
stickystart "Collect_Scavenger_Paws"
stickystart "Collect_Duskbat_Wings"
step
kill 12 Rattlecage Skeleton##1890 |q 3901/1 |goto 32.93,60.75
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 32.93,60.75
step
label "Collect_Scavenger_Paws"
kill Young Scavenger##1508+
collect 6 Scavenger Paw##3265 |q 376/1 |goto 32.35,57.69
You can find more around: |notinsticky
[35.07,58.45]
[30.07,62.32]
step
label "Collect_Duskbat_Wings"
kill Duskbat##1512+
collect 6 Duskbat Wing##3264 |q 376/2 |goto 32.35,57.69
You can find more around: |notinsticky
[35.07,58.45]
[30.07,62.32]
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 32.35,57.69
You can find more around: |notinsticky
[35.07,58.45]
[30.07,62.32]
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Novice Elreth##1661
|tip Inside the building.
turnin The Damned##376 |goto 30.86,66.05
accept Marla's Last Wish##6395 |goto 30.86,66.05
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Rattling the Rattlecages##3901 |goto 30.83,66.20
step
Leave the building |goto 31.38,66.20 < 7 |walk
talk Executor Arren##1570
accept Night Web's Hollow##380 |goto 32.15,66.01
step
talk Deathguard Saltain##1740
accept Scavenging Deathknell##3902 |goto 31.61,65.60
step
click Equipment Boxes+
|tip They look like piles of brown boxes on the ground outside near buildings, and inside the buildings around this area.
|tip Kill enemies as you walk, to gain experience along the way.
collect 6 Scavenged Goods##11127 |q 3902/1 |goto 32.60,63.50
step
talk Deathguard Saltain##1740
turnin Scavenging Deathknell##3902 |goto 31.61,65.60
step
kill 10 Young Night Web Spider##1504 |q 380/1 |goto 28.55,58.19
|tip Outside the mine.
step
Enter the mine |goto 26.84,59.40 < 10 |walk
kill 8 Night Web Spider##1505 |q 380/2 |goto 26.84,59.41
|tip Inside the mine.
step
Leave the mine |goto 26.84,59.41 < 10 |c |q 6395
step
Kill enemies around this area
Reach Level 5 |ding 5 |goto 28.55,58.19
You can find more around [28.10,55.58]
step
kill Samuel Fipps##1919
collect Samuel's Remains##16333 |goto 36.68,61.57 |q 6395
step
click Marla's Grave
Bury Samuel's Remains |q 6395/1 |goto 31.17,65.08
step
talk Executor Arren##1570
turnin Night Web's Hollow##380 |goto 32.15,66.01
accept The Scarlet Crusade##381 |goto 32.15,66.01
step
Enter the building |goto 31.38,66.20 < 7 |walk
talk Novice Elreth##1661
|tip Inside the building.
turnin Marla's Last Wish##6395 |goto 30.86,66.05
step
Leave the building |goto 31.38,66.20 < 7 |walk
Kill Scarlet enemies around this area
collect 12 Scarlet Armband##3266 |q 381/1 |goto 36.89,67.95
step
talk Executor Arren##1570
turnin The Scarlet Crusade##381 |goto 32.15,66.01
accept The Red Messenger##382 |goto 32.15,66.01
step
kill Meven Korgal##1667
collect Scarlet Crusade Documents##2885 |q 382/1 |goto 36.56,68.53
step
Kill enemies around this area
Reach Level 6 |ding 6 |goto 37.00,68.20
step
talk Executor Arren##1570
turnin The Red Messenger##382 |goto 32.15,66.01
accept Vital Intelligence##383 |goto 32.15,66.01
step
talk Calvin Montague##6784
accept A Rogue's Deal##8 |goto 38.23,56.79
step
Follow the road |goto 38.41,55.57 < 15 |only if walking
talk Deathguard Simmer##1519
accept Fields of Grief##365 |goto 40.91,54.17
step
talk Gordo##10666
|tip He looks like an abomination that walks along this road to the east.
|tip Kill enemies as you walk to find him, to gain experience along the way.
accept Gordo's Task##5481 |goto 43.72,54.34
He walks along the road between here and [55.15,52.32]
step
click Gloom Weed+
|tip They look like small scraggly purple plants on the ground around this area.
|tip They can be pretty far spread out, so you may have to search around.
collect 3 Gloom Weed##12737 |q 5481/1 |goto 51.42,55.05
You can find more around: |notinsticky
[51.52,51.98]
[50.62,55.23]
[49.97,56.40]
[48.82,58.67]
[43.78,56.19]
[44.92,52.98]
step
Cross the bridge |goto 52.51,54.45 < 20 |only if walking
talk Deathguard Dillinger##1496
accept A Putrid Task##404 |goto 58.20,51.45
step
talk Junior Apothecary Holland##10665
|tip He walks around this area.
turnin Gordo's Task##5481 |goto 58.25,49.76
accept Doom Weed##5482 |goto 58.25,49.76
step
Enter the building |goto 59.58,52.12 < 7 |walk
talk Apothecary Johaan##1518
|tip Inside the building.
accept A New Plague##367 |goto 59.45,52.40
step
Leave the building |goto 59.58,52.12 < 7 |walk
talk Executor Zygand##1515
turnin Vital Intelligence##383 |goto 60.59,51.76
accept At War With The Scarlet Crusade##427 |goto 60.59,51.76
step
click Wanted!
accept Wanted: Maggot Eye##398 |goto 60.73,51.52
step
Enter the building |goto 60.90,51.51 < 7 |walk
talk Magistrate Sevren##1499
|tip Inside the building.
accept Graverobbers##358 |goto 61.26,50.84
step
Leave the building |goto 60.89,51.53 < 7 |walk
Enter the building |goto 61.56,53.06 < 7 |walk
talk Innkeeper Renee##5688
|tip Inside the building.
turnin A Rogue's Deal##8 |goto 61.71,52.05
step
talk Innkeeper Renee##5688
|tip Inside the building.
home Gallows' End Tavern |goto 61.71,52.05
step
Leave the building |goto 61.56,53.05 < 7 |walk
kill Decrepit Darkhound##1547+
collect 5 Darkhound Blood##2858 |q 367/1 |goto 63.45,47.18
You can find more around [58.94,56.45]
step
Kill enemies around this area
Reach Level 7 |ding 7 |goto 63.45,47.18
You can find more around [58.94,56.45]
step
Enter the building |goto 59.58,52.12 < 7 |walk
talk Apothecary Johaan##1518
|tip Inside the building.
turnin A New Plague##367 |goto 59.45,52.40
accept A New Plague##368 |goto 59.45,52.40
step
Leave the building |goto 59.58,52.12 < 7 |walk
Kill enemies around this area
|tip Only enemies that look like zombies will drop the quest item.
collect 7 Putrid Claw##2855 |q 404/1 |goto 53.25,57.00
You can find more around [52.04,52.14]
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##404 |goto 58.20,51.45
accept The Mills Overrun##426 |goto 58.20,51.45
step
Enter the building |goto 61.55,53.05 < 7 |walk
talk Coleman Farthing##1500
|tip Inside the building.
accept Deaths in the Family##354 |goto 61.72,52.29
accept The Haunted Mills##362 |goto 61.72,52.29
step
talk Gretchen Dedmar##1521
|tip Upstairs inside the building.
accept The Chill of Death##375 |goto 61.89,52.73
step
Leave the building |goto 61.56,53.06 < 7 |c |q 590 |future
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 53.25,57.00
You can find more around [52.04,52.14]
step
Follow the path |goto 38.81,55.70 < 15 |only if walking
talk Calvin Montague##6784
accept A Rogue's Deal##590 |goto 38.23,56.79
|tip He will attack you.
step
kill Calvin Montague##6784
|tip He will eventually surrender.
Watch the dialogue
Defeat Calvin Montague |q 590/1 |goto 38.23,56.79
step
Watch the dialogue
talk Calvin Montague##6784
turnin A Rogue's Deal##590 |goto 38.23,56.79
step
Follow the path |goto 38.38,55.57 < 15 |only if walking
click Tirisfal Pumpkin+
|tip They look like large orange pumpkins on the ground around this area.
collect 10 Tirisfal Pumpkin##2846 |q 365/1 |goto 35.82,50.82
step
kill 10 Scarlet Warrior##1535 |q 427/1 |goto 32.19,48.70
step
Follow the road |goto 34.31,48.15 < 30 |only if walking
kill Greater Duskbat##1553+
collect 5 Duskbat Pelt##2876 |q 375/1 |goto 45.53,53.17
You can find more around [39.37,42.28]
stickystart "Collect_Notched_Ribs"
stickystart "Collect_Blackened_Skulls"
stickystart "Collect_A_Letter_To_Yvette"
step
kill Devlin Agamand##1657
|tip He looks like an armored skeleton mage.
collect Devlin's Remains##2831 |q 362/1 |goto 47.34,40.77
step
Enter the building |goto 49.37,36.03 < 7 |walk
kill Nissa Agamand##1655
|tip She looks like the ghost of a woman that walks around inside the building.
|tip She can be upstairs or downstairs.
collect Nissa's Remains##2828 |q 354/2 |goto 49.54,36.02
step
Leave the building |goto 49.37,36.03 < 7 |c |q 354
step
kill Gregor Agamand##1654
|tip He looks like a ghoul that walks around this area.
collect Gregor's Remains##2829 |q 354/1 |goto 45.74,29.38
step
kill Thurman Agamand##1656
|tip He looks like a zombie that walks around this area.
collect Thurman's Remains##2830 |q 354/3 |goto 43.64,35.41
step
label "Collect_Notched_Ribs"
Kill Soldier enemies around this area
|tip They look like armored skeletons around this area.
|tip All around this whole area.
collect 5 Notched Rib##3162 |q 426/1 |goto 47.73,35.28
step
label "Collect_Blackened_Skulls"
kill Darkeye Bonecaster##1522+
|tip All around this whole area.
collect 3 Blackened Skull##3163 |q 426/2 |goto 47.73,35.28
step
label "Collect_A_Letter_To_Yvette"
Kill enemies around this area
|tip Only enemies that look like skeletons will drop the quest item.
|tip All around this whole area.
collect A Letter to Yvette##2839 |goto 47.73,35.28 |q 361 |future
step
use A Letter to Yvette##2839
accept A Letter Undelivered##361
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 47.73,35.28
step
talk Coleman Farthing##1500
|tip Inside the building.
turnin Deaths in the Family##354 |goto 61.72,52.29
turnin The Haunted Mills##362 |goto 61.72,52.29
accept Speak with Sevren##355 |goto 61.72,52.29
step
talk Yvette Farthing##1560
|tip Inside the building.
turnin A Letter Undelivered##361 |goto 61.58,52.60
step
Leave the building |goto 61.56,53.05 < 7 |walk
talk Abigail Shiel##2118
buy Coarse Thread##2320 |q 375/2 |goto 61.03,52.37
step
Enter the building |goto 61.56,53.05 < 7 |walk
talk Gretchen Dedmar##1521
|tip Upstairs inside the building.
turnin The Chill of Death##375 |goto 61.89,52.73
step
Leave the building |goto 61.56,53.05 < 7 |walk
Enter the building |goto 60.90,51.52 < 10 |walk
talk Magistrate Sevren##1499
|tip Inside the building.
turnin Speak with Sevren##355 |goto 61.26,50.84
step
Leave the building |goto 60.90,51.53 < 10 |walk
talk Executor Zygand##1515
turnin At War With The Scarlet Crusade##427 |goto 60.59,51.77
accept At War With The Scarlet Crusade##370 |goto 60.59,51.77
step
talk Deathguard Burgess##1652
accept Proof of Demise##374 |goto 60.92,52.01
step
Enter the building |goto 59.58,52.13 < 7 |walk
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Fields of Grief##365 |goto 59.45,52.40
accept Fields of Grief##407 |goto 59.45,52.40
step
Leave the building |goto 59.58,52.13 < 7 |walk
talk Deathguard Dillinger##1496
turnin The Mills Overrun##426 |goto 58.20,51.45
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 53.62,57.23
You can find more around [52.03,49.95]
step
talk Father Lankester##4607
accept Touch of Weakness##5658 |goto Undercity 49.14,14.61
|only if Scourge Priest
step
talk Aelthalyste##4606
turnin Touch of Weakness##5658 |goto Undercity 49.27,17.11
|only if Scourge Priest
step
Enter the building |goto Tirisfal Glades 61.56,53.04 < 7 |walk
talk Ageron Kargal##5724
|tip Upstairs inside the building.
accept Halgar's Summons##1478 |goto Tirisfal Glades 61.62,52.67
|only if Scourge Warlock
step
Leave the building |goto 61.56,53.06 < 7 |walk
Enter Undercity |goto 61.88,65.06 < 10 |only if walking
talk Carendin Halgar##5675
turnin Halgar's Summons##1478 |goto Undercity 85.04,26.01
accept Creature of the Void##1473 |goto Undercity 85.04,26.01
|only if Scourge Warlock
step
Leave Undercity |goto 66.23,0.23 < 10 |walk
Enter the building |goto Tirisfal Glades 51.44,67.70 < 7 |walk
click Perrine's Chest
|tip Inside the building.
collect Egalin's Grimoire##6285 |q 1473/1 |goto Tirisfal Glades 51.06,67.57
|only if Scourge Warlock
step
Leave the building |goto 51.44,67.69 < 7 |walk
Enter Undercity |goto 61.88,65.06 < 10 |only if walking
talk Carendin Halgar##5675
turnin Creature of the Void##1473 |goto Undercity 85.04,26.01
accept The Binding##1471 |goto Undercity 85.04,26.01
|only if Scourge Warlock
step
use the Runes of Summoning##6284
|tip Use them on the pink symbol on the ground.
kill Summoned Voidwalker##5676 |q 1471/1 |goto 86.62,27.10
|only if Scourge Warlock
step
talk Carendin Halgar##5675
turnin The Binding##1471 |goto 85.04,26.01
|only if Scourge Warlock
step
Leave Undercity |goto 66.23,0.23 < 10 |c |q 370
|only if Scourge Warlock
step
Enter the building |goto Tirisfal Glades 61.55,53.05 < 7 |c |q 407
step
talk Austil de Mon##2131
|tip Inside the building.
accept Speak with Dillinger##1818 |goto Tirisfal Glades 61.85,52.54
|only if Scourge Warrior
step
Leave the building |goto 61.56,53.05 < 7 |walk
talk Deathguard Dillinger##1496
turnin Speak with Dillinger##1818 |goto 58.20,51.45
accept Ulag the Cleaver##1819 |goto 58.20,51.45
|only if Scourge Warrior
step
click Doors
kill Ulag the Cleaver##6390 |q 1819/1 |goto 59.64,48.09
|only if Scourge Warrior
step
talk Deathguard Dillinger##1496
turnin Ulag the Cleaver##1819 |goto 58.20,51.45
accept Speak with Coleman##1820 |goto 58.20,51.45
|only if Scourge Warrior
step
Enter the building |goto 61.56,53.04 < 7 |walk
talk Coleman Farthing##1500
|tip Inside the building.
turnin Speak with Coleman##1820 |goto 61.72,52.29
|only if Scourge Warrior
step
talk Captured Scarlet Zealot##1931
|tip Downstairs inside the building.
turnin Fields of Grief##407 |goto 61.97,51.29
stickystart "Collect_Doom_Weed"
stickystart "Collect_Embalming_Ichors"
step
Leave the building |goto 61.57,53.05 < 7 |walk
Follow the path |goto 60.38,46.09 < 20 |only if walking
kill 8 Rot Hide Graverobber##1941 | q 358/1 |goto 55.37,42.34
stickystart "Kill_Rot_Hide_Mongrels"
step
label "Collect_Doom_Weed"
click Doom Weed+
|tip They look like small green and purple scraggly plants on the ground around this area.
|tip They can be pretty spread out, so you may need to search around.
collect 10 Doom Weed##13702 |q 5482/1 |goto 57.17,35.72
You can find a few more around [56.98,40.63]
step
label "Collect_Embalming_Ichors"
Kill Rot Hide enemies around this area
collect 8 Embalming Ichor##2834 | q 358/3 |goto 59.10,36.18
step
label "Kill_Rot_Hide_Mongrels"
kill 5 Rot Hide Mongrel##1675 | q 358/2 |goto 59.10,36.18
step
kill Maggot Eye##1753
|tip Inside the building.
collect Maggot Eye's Paw##3635 |q 398/1 |goto 58.66,30.76
step
Kill Vile Fin enemies around this area
collect 5 Vile Fin Scale##2859 |q 368/1 |goto 59.86,28.31
You can find more around [62.06,29.45]
step
Follow the road |goto 61.17,34.80 < 30 |only if walking
talk Executor Zygand##1515
turnin Wanted: Maggot Eye##398 |goto 60.58,51.77
step
Enter the building |goto 60.90,51.52 < 10 |walk
talk Magistrate Sevren##1499
|tip Inside the building.
turnin Graverobbers##358 |goto 61.26,50.85
accept Forsaken Duties##359 |goto 61.26,50.85
step
Leave the building |goto 60.89,51.53 < 10 |walk
Enter the building |goto 59.58,52.12 < 7 |walk
talk Apothecary Johaan##1518
|tip Inside the building.
turnin A New Plague##368 |goto 59.45,52.40
accept A New Plague##369 |goto 59.45,52.40
step
Leave the building |goto 59.58,52.12 < 7 |walk
talk Junior Apothecary Holland##10665
|tip He walks around this area.
turnin Doom Weed##5482 |goto 57.97,49.71
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 53.62,57.23
You can find more around [52.03,49.95]
stickystart "Collect_Scarlet_Insignia_Rings"
stickystart "Kill_Scarlet_Zealots"
stickystart "Kill_Scarlet_Missionaries"
step
Enter the building |goto 51.44,67.70 < 7 |walk
kill Captain Perrine##1662 |q 370/1 |goto 51.13,67.80
|tip Inside the building.
step
label "Collect_Scarlet_Insignia_Rings"
Kill Scarlet enemies around this area
collect 10 Scarlet Insignia Ring##2875 |q 374/1 |goto 52.04,67.78
You can find more around [48.02,65.73]
step
label "Kill_Scarlet_Zealots"
kill 3 Scarlet Zealot##1537 |q 370/2 |goto 52.04,67.78
You can find more around [48.02,65.73]
step
label "Kill_Scarlet_Missionaries"
kill 3 Scarlet Missionary##1536 |q 370/3 |goto 52.04,67.78
You can find more around [48.02,65.73]
step
Follow the path |goto 55.02,62.44 < 70 |only if walking
Continue following the path |goto 59.46,56.11 < 70 |only if walking
talk Deathguard Burgess##1652
turnin Proof of Demise##374 |goto 60.93,52.00
step
talk Executor Zygand##1515
turnin At War With The Scarlet Crusade##370 |goto 60.58,51.76
accept At War With The Scarlet Crusade##371 |goto 60.58,51.76
step
talk Deathguard Linnea##1495
turnin Forsaken Duties##359 |goto 65.49,60.25
accept Return to the Magistrate##360 |goto 65.49,60.25
accept Rear Guard Patrol##356 |goto 65.49,60.25
stickystart "Kill_Wandering_Spirits"
step
kill 8 Bleeding Horror##1529 |q 356/1 |goto 75.54,60.85
step
label "Kill_Wandering_Spirits"
kill 8 Wandering Spirit##1532 |q 356/2 |goto 75.54,60.85
stickystart "Kill_Scarlet_Friars"
step
Follow the path up |goto 79.31,57.29 < 10 |only if walking
Enter the building |goto 79.18,55.98 < 7 |walk
kill Captain Vachon##1664 |q 371/1 |goto 78.82,56.13
|tip Inside the building.
step
label "Kill_Scarlet_Friars"
kill 5 Scarlet Friar##1538 |q 371/2 |goto 79.79,55.85
You can find more around [76.42,55.60]
step
kill Vicious Night Web Spider##1555+
collect 4 Vicious Night Web Spider Venom##2872 |q 369/1 |goto 84.20,53.16
You can find more around: |notinsticky
[88.35,53.73]
[89.50,51.06]
step
Kill enemies around this area
Reach Level 12 |ding 12 |goto 84.20,53.16
You can find more around: |notinsticky
[88.35,53.73]
[89.50,51.06]
step
Leave the building |goto 61.56,53.05 < 7 |walk
Enter the building |goto 60.90,51.51 < 10 |walk
talk Magistrate Sevren##1499
|tip Inside the building.
turnin Return to the Magistrate##360 |goto 61.26,50.84
step
Leave the building |goto 60.90,51.52 < 10 |walk
talk Executor Zygand##1515
turnin At War With The Scarlet Crusade##371 |goto 60.58,51.77
accept At War With The Scarlet Crusade##372 |goto 60.58,51.77
step
Enter the building |goto 59.58,52.12 < 7 |walk
talk Apothecary Johaan##1518
|tip Inside the building.
turnin A New Plague##369 |goto 59.45,52.40
accept A New Plague##492 |goto 59.45,52.40
step
Leave the building |goto 59.58,52.12 < 7 |walk
Enter the building |goto 61.56,53.06 < 7 |walk
talk Captured Mountaineer##2211
|tip Downstairs inside the building.
turnin A New Plague##492 |goto 61.94,51.40
step
Leave the building |goto 61.56,53.06 < 7 |walk
talk Deathguard Linnea##1495
turnin Rear Guard Patrol##356 |goto 65.49,60.25
stickystart "Kill_Scarlet_Bodyguards"
step
Follow the path |goto 73.21,52.18 < 20 |only if walking
Follow the path up |goto 81.34,44.16 < 30 |only if walking
Follow the path |goto 80.90,39.44 < 30 |only if walking
Continue following the path |goto 78.24,36.01 < 20 |only if walking
Enter the building |goto 79.50,25.76 < 7 |walk
kill Captain Melrache##1665 |q 372/1 |goto 79.52,25.15
|tip Inside the building.
step
label "Kill_Scarlet_Bodyguards"
kill 2 Scarlet Bodyguard##1660 |q 372/2 |goto 79.52,25.15
|tip Inside the building.
step
talk Executor Zygand##1515
turnin At War With The Scarlet Crusade##372 |goto 60.58,51.77
step
Enter Orgrimmar |goto Durotar 45.52,12.07 < 20 |only if walking
Enter the building |goto Orgrimmar 47.53,65.22 < 7 |only if walking
talk Doras##3310
|tip At the top of the tower.
fpath Orgrimmar |goto Orgrimmar 45.12,63.89
step
Follow the path |goto 52.56,85.09 < 20 |only if walking
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
Follow the road |goto Durotar 47.29,23.21 < 30 |only if walking
Continue following the road |goto Durotar 52.38,33.50 < 30 |only if walking
Follow the road |goto Durotar 52.23,42.43 < 30 |only if walking
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.85,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Mulgore (1-12) [Tauren Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Mulgore",
condition_suggested=function() return raceclass('Tauren') and level <= 12 end,
condition_suggested_race=function() return raceclass('Tauren') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\The Barrens (12-15)",
},[[
defaultfor Tauren
step
talk Grull Hawkwind##2980
accept The Hunt Begins##747 |goto Mulgore 44.87,77.08
step
Enter the building |goto 44.32,76.21 < 7 |walk
talk Chief Hawkwind##2981
|tip Inside the building.
accept A Humble Task##752 |goto 44.18,76.06
stickystart "Collect_Plainstrider_Meat"
stickystart "Collect_Plainstrider_Feathers"
step
talk Greatmother Hawkwind##2991
turnin A Humble Task##752 |goto 50.03,81.16
accept A Humble Task##753 |goto 50.03,81.16
step
click Water Pitcher
collect Water Pitcher##4755 |q 753/1 |goto 50.21,81.36
step
label "Collect_Plainstrider_Meat"
kill Plainstrider##2955+
collect 7 Plainstrider Meat##4739 |q 747/1 |goto 45.94,82.61
step
label "Collect_Plainstrider_Feathers"
kill Plainstrider##2955+
collect 7 Plainstrider Feather##4740 |q 747/2 |goto 45.94,82.61
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 45.94,82.61
step
talk Grull Hawkwind##2980
turnin The Hunt Begins##747 |goto 44.87,77.08
accept Simple Note##3091 |goto 44.87,77.08 |only Tauren Warrior
accept Rune-Inscribed Note##3093 |goto 44.87,77.08 |only Tauren Shaman
accept Etched Note##3092 |goto 44.87,77.08 |only Tauren Hunter
accept Verdant Note##3094 |goto 44.87,77.08 |only Tauren Druid
accept The Hunt Continues##750 |goto 44.87,77.08
step
talk Meela Dawnstrider##3062
|tip Inside the building.
turnin Rune-Inscribed Note##3093 |goto 45.01,75.94
|only if Tauren Shaman
step
talk Gart Mistrunner##3060
|tip Inside the building.
turnin Verdant Note##3094 |goto 45.09,75.93
|only if Tauren Druid
step
Enter the building |goto 44.32,76.21 < 7 |walk
talk Chief Hawkwind##2981
|tip Inside the building.
turnin A Humble Task##753 |goto 44.18,76.06
accept Rites of the Earthmother##755 |goto 44.18,76.06
step
talk Grull Hawkwind##2980
|tip Inside the building.
turnin Simple Note##3091 |goto 44.01,76.13
|only if Tauren Warrior
step
talk Lanka Farshot##3061
|tip Inside the building.
turnin Etched Note##3092 |goto 44.26,75.69
|only if Tauren Hunter
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 47.28,84.01
step
kill Mountain Cougar##2961+
collect 10 Mountain Cougar Pelt##4742 |q 750/1 |goto 50.86,90.62
You can find more around [46.34,90.51]
step
talk Seer Graytongue##2982
turnin Rites of the Earthmother##755 |goto 42.58,92.18
accept Rite of Strength##757 |goto 42.58,92.18
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 50.86,90.62
You can find more around [46.34,90.51]
step
talk Grull Hawkwind##2980
turnin The Hunt Continues##750 |goto 44.87,77.08
accept The Battleboars##780 |goto 44.87,77.08
step
talk Brave Windfeather##3209
|tip She walks around this area.
accept Break Sharptusk!##3376 |goto 44.94,77.04
stickystart "Collect_Battleboar_Flanks"
step
kill Battleboar##2966+
collect 8 Battleboar Snout##4848 |q 780/1 |goto 55.97,83.14
You can find more around [56.89,87.89]
step
label "Collect_Battleboar_Flanks"
kill Battleboar##2966+
collect 8 Battleboar Flank##4849 |q 780/2 |goto 55.97,83.14
You can find more around [56.89,87.89]
step
Kill enemies around this area
Reach Level 5 |ding 5 |goto 55.97,83.14
You can find more around [56.89,87.89]
step
talk Seer Ravenfeather##5888
accept Call of Earth##1519 |goto 44.73,76.18
|only if Tauren Shaman
stickystart "Collect_Bristleback_Belts"
stickystart "Collect_Ritual_Salves"
step
Enter the tunnel |goto 58.15,85.02 < 15 |only if walking
Leave the tunnel |goto 59.69,83.29 < 15 |only if walking
Follow the path |goto 62.65,80.87 < 20 |only if walking
Continue following the path |goto 62.60,78.75 < 20 |only if walking
Enter the building |goto 64.28,77.98 < 15 |walk
kill Chief Sharptusk Thornmantle##8554
|tip Inside the building.
collect Chief Sharptusk Thornmantle's Head##10459 |q 3376/1 |goto 64.70,77.66
step
label "Collect_Bristleback_Belts"
Kill Bristleback enemies around this area
collect 12 Bristleback Belt##4770 |q 757/1 |goto 63.58,78.00
step
label "Collect_Ritual_Salves"
kill Bristleback Shaman##2953+
|tip They can be pretty spread out around this area.
collect 2 Ritual Salve##6634 |q 1519/1 |goto 63.87,80.34
You can find more around [59.92,75.65]
|only if Tauren Shaman
step
talk Grull Hawkwind##2980
turnin The Battleboars##780 |goto 44.87,77.08
step
talk Brave Windfeather##3209
|tip She walks around this area.
turnin Break Sharptusk!##3376 |goto 44.94,77.04
step
talk Seer Ravenfeather##5888
turnin Call of Earth##1519 |goto 44.73,76.19
accept Call of Earth##1520 |goto 44.73,76.19
|only if Tauren Shaman
step
Enter the building |goto 44.32,76.21 < 7 |walk
talk Chief Hawkwind##2981
|tip Inside the building.
turnin Rite of Strength##757 |goto 44.18,76.06
accept Rites of the Earthmother##763 |goto 44.18,76.06
step
use the Earth Sapta##6635
talk the Minor Manifestation of Earth
turnin Call of Earth##1520 |goto 53.88,80.56
accept Call of Earth##1521 |goto 53.88,80.56
|only if Tauren Shaman
step
talk Seer Ravenfeather##5888
turnin Call of Earth##1521 |goto 44.73,76.19
|only if Tauren Shaman
step
Kill enemies around this area
Reach Level 6 |ding 6 |goto 48.36,89.72
step
Follow the path |goto 39.45,82.40 < 20 |only if walking
talk Antur Fallow##6775
accept A Task Unfinished##1656 |goto 38.52,81.56
step
Follow the path |goto 36.41,79.59 < 30 |only if walking
talk Ruul Eagletalon##2985
accept Dangers of the Windfury##743 |goto 47.36,62.02
step
talk Baine Bloodhoof##2993
turnin Rites of the Earthmother##763 |goto 47.52,60.17
accept Sharing the Land##745 |goto 47.52,60.17
accept Rite of Vision##767 |goto 47.52,60.17
accept Dwarven Digging##746 |goto 47.52,60.17
step
Enter the building |goto 46.82,60.55 < 7 |walk
talk Innkeeper Kauth##6747
|tip Inside the building.
turnin A Task Unfinished##1656 |goto 46.62,61.09
step
talk Innkeeper Kauth##6747
|tip Inside the building.
home Bloodhoof Village |goto 46.62,61.09 |q 860 |future
step
Leave the building |goto 46.81,60.53 < 7 |walk
talk Zarlman Two-Moons##3054
turnin Rite of Vision##767 |goto 47.76,57.54
accept Rite of Vision##771 |goto 47.76,57.54
step
talk Maur Raincaller##3055
accept Mazzranache##766 |goto 46.99,57.07
step
Enter the building |goto 48.64,58.84 < 10 |walk
talk Harken Windtotem##2947
|tip Inside the building.
accept Swoop Hunting##761 |goto 48.71,59.33
step
talk Mull Thunderhorn##2948
accept Poison Water##748 |goto 48.53,60.40
|only if Tauren
stickystart "Collect_Plainstrider_Scales"
stickystart "Collect_Prairie_Wolf_Paws"
stickystart "Collect_Plainstrider_Talons"
stickystart "Collect_Swoop_Gizzards"
stickystart "Collect_Trophy_Swoop_Quills"
stickystart "Collect_Ambercorns"
step
kill Prairie Wolf##2958+
collect Prairie Wolf Heart##4804 |q 766/1 |goto 39.77,60.43
You can find more around [39.61,54.74]
step
label "Collect_Plainstrider_Scales"
kill Adult Plainstrider##2956+
collect Plainstrider Scale##4806 |q 766/3 |goto 39.77,60.43
You can find more around [39.61,54.74]
step
label "Collect_Prairie_Wolf_Paws"
kill Prairie Wolf##2958+
collect 6 Prairie Wolf Paw##4758 |q 748/1 |goto 39.77,60.43
You can find more around [39.61,54.74]
|only if Tauren
step
label "Collect_Plainstrider_Talons"
kill Adult Plainstrider##2956+
collect 4 Plainstrider Talon##4759 |q 748/2 |goto 39.77,60.43
You can find more around [39.61,54.74]
|only if Tauren
step
label "Collect_Swoop_Gizzards"
kill Wiry Swoop##2969+
|tip They are pretty spread out around this area.
|tip You can find more to the north and south.
collect Swoop Gizzard##4807 |q 766/4 |goto 39.77,60.43
You can find more around [39.61,54.74]
step
label "Collect_Trophy_Swoop_Quills"
kill Wiry Swoop##2969+
|tip They are pretty spread out around this area.
|tip You can find more to the north and south.
collect 8 Trophy Swoop Quill##4769 |q 761/1 |goto 39.77,60.43
You can find more around [39.61,54.74]
step
label "Collect_Ambercorns"
click Ambercorn+
|tip They look like small brown pine cones on the ground near trees around this area.
collect 2 Ambercorn##4809 |q 771/2 |goto 38.83,59.75
You can find another one at [38.83,59.75]
step
Kill enemies around this area
Reach Level 7 |ding 7 |goto 39.77,60.43
You can find more around [39.61,54.74]
step
talk Mull Thunderhorn##2948
turnin Poison Water##748 |goto 48.53,60.39
|only if Tauren
step
Watch the dialogue
talk Mull Thunderhorn##2948
accept Winterhoof Cleansing##754 |goto 48.53,60.40
|only if Tauren
step
Enter the building |goto 48.76,59.76 < 10 |walk
talk Harken Windtotem##2947
|tip Inside the building.
turnin Swoop Hunting##761 |goto 48.71,59.33
step
click Well Stone+
|tip They look like flat grey rocks on the ground around this area.
collect 2 Well Stone##4808 |q 771/1 |goto 53.50,66.20
stickystart "Kill_Palemane_Skinners"
stickystart "Kill_Palemane_Tanners"
step
kill 5 Palemane Poacher##2951 |q 745/3 |goto 53.94,72.53
You can find more around [48.08,71.60]
step
label "Kill_Palemane_Skinners"
kill 8 Palemane Skinner##2950 |q 745/2 |goto 53.94,72.53
You can find more around [48.08,71.60]
step
label "Kill_Palemane_Tanners"
kill 10 Palemane Tanner##2949 |q 745/1 |goto 53.94,72.53
You can find more around [48.08,71.60]
step
Kill Windfury enemies around this area
collect 8 Windfury Talon##4751 |q 743/1 |goto 63.26,70.44
You can find more around [66.26,68.80]
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 63.26,70.44
You can find more around [66.26,68.80]
step
Leave the building |goto 46.81,60.54 < 7 |walk
talk Baine Bloodhoof##2993
turnin Sharing the Land##745 |goto 47.51,60.16
step
talk Ruul Eagletalon##2985
turnin Dangers of the Windfury##743 |goto 47.35,62.02
step
talk Zarlman Two-Moons##3054
turnin Rite of Vision##771 |goto 47.76,57.54
accept Rite of Vision##772 |goto 47.76,57.54
step
use the Winterhoof Cleansing Totem##5411
Cleanse the Winterhoof Water Well |q 754/1 |goto 53.64,66.15
|only if Tauren
step
talk Mull Thunderhorn##2948
turnin Winterhoof Cleansing##754 |goto 48.53,60.39
accept Thunderhorn Totem##756 |goto 48.53,60.39
|only if Tauren
step
talk Morin Cloudstalker##2988
|tip He walks along the road west of this point.
|tip Kill enemies as you walk to find him, to gain experience along the way.
accept The Ravaged Caravan##749 |goto 59.72,62.45
He walks between here and [51.94,59.61]
step
click Sealed Supply Crate
turnin The Ravaged Caravan##749 |goto 53.74,48.18
accept The Ravaged Caravan##751 |goto 53.74,48.18
stickystart "Collect_Cougar_Claws"
stickystart "Collect_Stalker_Claws"
step
kill Flatland Cougar##3035+
collect Flatland Cougar Femur##4805 |q 766/2 |goto 46.78,40.19
You can find more around: |notinsticky
[51.33,35.52]
[37.14,43.56]
step
label "Collect_Cougar_Claws"
kill Flatland Cougar##3035+
collect 6 Cougar Claws##4802 |q 756/2 |goto 46.78,40.19
You can find more around: |notinsticky
[51.33,35.52]
[37.14,43.56]
|only if Tauren
step
label "Collect_Stalker_Claws"
kill Prairie Stalker##2959+
collect 6 Stalker Claws##4801 |q 756/1 |goto 46.78,40.19
You can find more around: |notinsticky
[51.33,35.52]
[37.14,43.56]
|only if Tauren
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 46.78,40.19
You can find more around: |notinsticky
[51.33,35.52]
[37.14,43.56]
step
Kill Bael'dun enemies around this area
collect 5 Prospector's Pick##4702 |goto 33.08,48.20 |q 746
You can find more around [31.97,48.76]
step
Follow the path |goto 35.31,46.24 < 30 |only if walking
Follow the path up |goto 34.46,37.31 < 30 |only if walking
Enter the cave |goto 33.31,36.45 < 10 |walk
talk Seer Wiserunner##2984
|tip Inside the cave.
turnin Rite of Vision##772 |goto 32.72,36.09
accept Rite of Wisdom##773 |goto 32.72,36.09
step
Leave the building |goto 46.81,60.57 < 7 |c |q 766
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Totem##756 |goto 48.53,60.40
|only if Tauren
step
Watch the dialogue
talk Mull Thunderhorn##2948
accept Thunderhorn Cleansing##758 |goto 48.53,60.40
|only if Tauren
step
talk Maur Raincaller##3055
turnin Mazzranache##766 |goto 46.98,57.07
step
use the Thunderhorn Cleansing Totem##5415
Cleanse the Thunderhorn Water Well |q 758/1 |goto 44.59,45.43
|only if Tauren
step
talk Mull Thunderhorn##2948
turnin Thunderhorn Cleansing##758 |goto 48.53,60.40
accept Wildmane Totem##759 |goto 48.53,60.40
|only if Tauren
step
talk Morin Cloudstalker##2988
|tip He walks along the road east of this point.
turnin The Ravaged Caravan##751 |goto 51.94,59.61
accept The Venture Co.##764 |goto 51.94,59.61
accept Supervisor Fizsprocket##765 |goto 51.94,59.61
He walks between here and [59.72,62.45]
step
kill Prairie Wolf Alpha##2960+
collect 8 Prairie Alpha Tooth##4803 |q 759/1 |goto 64.01,58.98
You can find more around [65.56,66.34]
|only if Tauren
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 64.01,58.98
step
talk Mull Thunderhorn##2948
turnin Wildmane Totem##759 |goto 48.53,60.40
|only if Tauren
step
Watch the dialogue
talk Mull Thunderhorn##2948
accept Wildmane Cleansing##760 |goto 48.53,60.40
|only if Tauren
step
talk Skorn Whitecloud##3052
accept The Hunter's Way##861 |goto 46.76,60.23
step
talk Krang Stonehoof##3063
accept Veteran Uzzek##1505 |goto Mulgore 49.52,60.58
|only if Tauren Warrior
step
Enter the Barrens |goto 69.49,60.50 < 30 |only if walking
talk Omusa Thunderhorn##10378
fpath Camp Taurajo |goto The Barrens 44.45,59.15
|only if Tauren Warrior
step
Follow the road |goto 47.66,55.60 < 30 |only if walking
Follow the path |goto 52.06,32.11 < 20 |only if walking
talk Devrak##3615
fpath Crossroads |goto 51.51,30.34
|only if Tauren Warrior
step
Follow the road |goto 53.84,22.61 < 30 |only if walking
talk Uzzek##5810
turnin Veteran Uzzek##1505 |goto 61.38,21.11
accept Path of Defense##1498 |goto 61.38,21.11
|only if Tauren Warrior
step
Cross the bridge |goto 62.68,19.22 < 20 |only if walking
Follow the path |goto Durotar 39.18,32.15 < 20 |only if walking
kill Thunder Lizard##3130+
collect 5 Singed Scale##6486 |q 1498/1 |goto Durotar 39.27,28.29
|only if Tauren Warrior
step
Follow the path |goto 39.16,32.31 < 20 |only if walking
Cross the bridge |goto 34.60,42.28 < 20 |only if walking
talk Uzzek##5810
turnin Path of Defense##1498 |goto The Barrens 61.38,21.11
|only if Tauren Warrior
step
Follow the road |goto 55.91,22.14 < 30 |only if walking
Follow the path |goto 51.87,29.19 < 20 |only if walking
Enter Mulgore |goto 71.63,60.56 < 30 |only if walking
Follow the path |goto Mulgore 57.36,60.92 < 30 |c |q 746
|only if Tauren Warrior
step
Enter the building |goto Mulgore 48.16,59.53 < 15 |walk
talk Narm Skychaser##3066
|tip Inside the building.
accept Call of Fire##2984 |goto Mulgore 48.39,59.16
|only if Tauren Shaman
step
Enter the Barrens |goto 69.49,60.50 < 30 |only if walking
talk Omusa Thunderhorn##10378
fpath Camp Taurajo |goto The Barrens 44.45,59.15
|only if Tauren Shaman
step
Follow the road |goto 47.66,55.60 < 30 |only if walking
Follow the path |goto 52.06,32.11 < 20 |only if walking
talk Devrak##3615
fpath The Crossroads |goto 51.51,30.34
|only if Tauren Shaman
step
talk Kranal Fiss##5907
turnin Call of Fire##2984 |goto 56.03,19.89
accept Call of Fire##1524 |goto 56.03,19.89
|only if Tauren Shaman
step
Cross the bridge |goto 62.67,19.22 < 20 |only if walking
Follow the path up |goto Durotar 36.59,57.07 < 15 |only if walking
Continue up the path |goto Durotar 36.61,58.19 < 7 |only if walking
Continue up the path |goto Durotar 37.74,58.24 < 7 |only if walking
Continue up the path |goto Durotar 38.94,57.56 < 7 |only if walking
Follow the path |goto Durotar 39.18,58.63 < 7 |only if walking
talk Telf Joolam##5900
|tip On top of the mountain.
turnin Call of Fire##1524 |goto Durotar 38.55,58.96
accept Call of Fire##1525 |goto Durotar 38.55,58.96
|only if Tauren Shaman
step
Follow the path down |goto 39.21,58.52 < 10 |only if walking
Follow the path |goto The Barrens 61.47,20.86 < 40 |only if walking
Kill Razormane enemies around this area
collect Fire Tar##5026 |q 1525/1 |goto The Barrens 54.15,25.01
|only if Tauren Shaman
step
Cross the bridge |goto 62.67,19.23 < 20 |only if walking
Follow the path |goto Durotar 50.78,43.81 < 20 |only if walking
Continue following the path |goto Durotar 54.15,40.72 < 20 |only if walking
Enter the cave |goto Durotar 52.82,28.82 < 15 |walk
Follow the path |goto Durotar 53.07,27.09 < 10 |walk
kill Burning Blade Cultist##3199+
|tip Inside the cave.
|tip They seem to mostly be towards the back of the cave.
collect Reagent Pouch##6652 |q 1525/2 |goto Durotar 52.12,24.95
|only if Tauren Shaman
step
Follow the path |goto 53.13,27.27 < 10 |walk
Leave the cave |goto 52.83,28.93 < 15 |walk
Jump down onto the huge long rock |goto 51.97,31.29 < 15 |only if walking
Follow the path up |goto 36.59,57.07 < 15 |only if walking
Continue up the path |goto 36.61,58.19 < 7 |only if walking
Continue up the path |goto 37.74,58.24 < 7 |only if walking
Continue up the path |goto 38.94,57.56 < 7 |only if walking
Follow the path |goto 39.18,58.63 < 7 |only if walking
talk Telf Joolam##5900
|tip On top of the mountain.
turnin Call of Fire##1525 |goto 38.55,58.96
accept Call of Fire##1526 |goto 38.55,58.96
|only if Tauren Shaman
step
Follow the path up |goto 38.34,58.52 < 7 |only if walking
use the Fire Sapta##6636
kill Minor Manifestation of Fire##5893
|tip On top of the mountain.
collect Glowing Ember##6655 |q 1526/1 |goto 38.84,58.24
|only if Tauren Shaman
step
click Brazier of the Dormant Flame
|tip On top of the mountain.
turnin Call of Fire##1526 |goto 38.95,58.22
accept Call of Fire##1527 |goto 38.95,58.22
|only if Tauren Shaman
step
Follow the path down |goto 39.19,57.81 < 7 |only if walking
talk Kranal Fiss##5907
turnin Call of Fire##1527 |goto The Barrens 56.04,19.89
|only if Tauren Shaman
step
Follow the path |goto 51.87,29.19 < 20 |only if walking
Enter Mulgore |goto 71.63,60.56 < 30 |only if walking
Follow the path |goto Mulgore 57.36,60.92 < 30 |c |q 746
|only if Tauren Shaman
step
talk Yaw Sharpmane##3065
accept Taming the Beast##6061 |goto Mulgore 47.82,55.69
|only if Tauren Hunter
step
use the Taming Rod##15914
|tip Use it on an Adult Plainstrider around this area.
Tame an Adult Plainstrider |q 6061/1 |goto 43.81,51.82
|tip Dismiss it after you tame it.
You can find more around [40.11,57.35]
|only if Tauren Hunter
step
talk Yaw Sharpmane##3065
turnin Taming the Beast##6061 |goto 47.82,55.69
accept Taming the Beast##6087 |goto 47.82,55.69
|only if Tauren Hunter
step
use the Taming Rod##15915
|tip Use it on a Prairie Stalker around this area.
Tame a Prairie Stalker |q 6087/1 |goto 46.48,49.06
|tip Dismiss it after you tame it.
|only if Tauren Hunter
step
talk Yaw Sharpmane##3065
turnin Taming the Beast##6087 |goto 47.82,55.69
accept Taming the Beast##6088 |goto 47.82,55.69
|only if Tauren Hunter
step
use the Taming Rod##15916
|tip Use it on a Swoop around this area.
Tame a Swoop |q 6088/1 |goto 46.48,49.06
|only if Tauren Hunter
step
talk Yaw Sharpmane##3065
turnin Taming the Beast#6088 |goto 47.82,55.69
accept Training the Beast##6089 |goto 47.82,55.69
|only if Tauren Hunter
step
Ride the elevator up |goto Thunder Bluff 31.80,65.96 < 10 |only if walking
Enter the building |goto Thunder Bluff 44.91,61.98 < 15 |only if walking
Cross the bridge |goto Thunder Bluff 47.69,68.75 < 10 |only if walking
Enter the building |goto Thunder Bluff 59.80,82.89 < 15 |walk
talk Holt Thunderhorn##3039
|tip Inside the building.
turnin Training the Beast##6089 |goto Thunder Bluff 57.31,89.76
|only if Tauren Hunter
step
Ride the elevator down |goto 31.81,65.90 < 10 |only if walking
Follow the path |goto Mulgore 42.46,39.35 < 30 |c |q 746
|only if Tauren Hunter
step
Enter the building |goto Mulgore 48.16,59.53 < 15 |walk
talk Gennia Runetotem##3064
|tip Inside the building.
accept Mulgore Heeding the Call##5926 |goto Mulgore 48.48,59.64
|only if Tauren Druid
step
Ride the elevator up |goto Thunder Bluff 31.80,65.96 < 10 |only if walking
Enter the building |goto Thunder Bluff 58.66,46.92 < 15 |walk
Cross the bridge |goto Thunder Bluff 61.44,40.20 < 10 |walk
Enter the building |goto Thunder Bluff 74.09,29.91 < 15 |walk
talk Turak Runetotem##3033
|tip Inside the building.
turnin Heeding the Call##5926 |goto Thunder Bluff 76.46,27.23
accept Moonglade##5922 |goto Thunder Bluff 76.46,27.23
|only if Tauren Druid
step
Enter the building |goto Moonglade 56.13,30.98 < 15 |walk
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Moonglade##5922 |goto Moonglade 56.21,30.64
accept Great Bear Spirit##5930 |goto Moonglade 56.21,30.64
|only if Tauren Druid
step
Follow the path |goto 42.47,34.44 < 20 |only if walking
talk Great Bear Spirit##11956
Ask it _"What do you represent, spirit?"_
Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear |q 5930/1 |goto 39.11,27.51
|only if Tauren Druid
step
talk Faustron##12740
fpath Moonglade |goto 32.11,66.60
|only if Tauren Druid
step
Follow the road |goto 40.77,35.81 < 20 |only if walking
Enter the building |goto 56.13,30.98 < 15 |walk
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Great Bear Spirit##5930 |goto 56.21,30.64
accept Back to Thunder Bluff##5932 |goto 56.21,30.64
|only if Tauren Druid
step
Locate Bunthen Plainswind |goto 44.28,45.86 < 10 |c |q 5932
|only if Tauren Druid
step
Enter the building |goto Thunder Bluff 58.66,46.92 < 15 |walk
Cross the bridge |goto Thunder Bluff 61.44,40.20 < 10 |walk
Enter the building |goto Thunder Bluff 74.09,29.91 < 15 |walk
talk Turak Runetotem##3033
|tip Inside the building.
turnin Back to Thunder Bluff##5932 |goto Thunder Bluff 76.46,27.23
accept Body and Heart##6002 |goto Thunder Bluff 76.46,27.23
|only if Tauren Druid
step
Ride the elevator down |goto 31.81,65.90 < 10 |only if walking
Enter the Barrens |goto Mulgore 69.61,60.47 < 30 |only if walking
Follow the path up |goto The Barrens 41.60,58.95 < 15 |only if walking
use the Cenarion Lunardust##15710
kill Lunaclaw##12138
Face Lunaclaw and Earn the Strength of Body and Heart it Possesses |q 6002/1 |goto The Barrens 42.00,60.86
|only if Tauren Druid
step
Enter Mulgore |goto 41.54,58.56 < 30 |only if walking
Cross the bridge |goto Mulgore 48.13,53.43 < 20 |only if walking
Ride the elevator up |goto Thunder Bluff 31.80,65.96 < 10 |only if walking
Enter the building |goto Thunder Bluff 58.66,46.92 < 15 |walk
Cross the bridge |goto Thunder Bluff 61.44,40.20 < 10 |walk
Enter the building |goto Thunder Bluff 74.09,29.91 < 15 |walk
talk Turak Runetotem##3033
|tip Inside the building.
turnin Body and Heart##6002 |goto Thunder Bluff 76.46,27.23
|only if Tauren Druid
step
Ride the elevator down |goto 31.81,65.90 < 10 |only if walking
Follow the path |goto Mulgore 42.46,39.35 < 30 |c |q 746
|only if Tauren Druid
stickystart "Kill_Venture_Co_Supervisors"
stickystart "Kill_Venture_Co_Workers"
step
Follow the path up |goto Mulgore 61.77,48.52 < 20 |only if walking
use the Prospector's Pick##4702+
|tip Use them next to the Forge.
collect 5 Broken Tools##4703 |q 746/1 |goto Mulgore 61.17,47.22
step
Enter the mine |goto 61.56,46.90 < 10 |walk
kill Supervisor Fizsprocket##3051
|tip Inside the mine.
collect Fizsprocket's Clipboard##4819 |q 765/1 |goto 64.90,43.31
step
label "Kill_Venture_Co_Supervisors"
kill 6 Venture Co. Supervisor##2979 |q 764/2 |goto 61.46,47.19
|tip Inside and outside the mine.
step
label "Kill_Venture_Co_Workers"
kill 14 Venture Co. Worker##2978 |q 764/1 |goto 61.46,47.19
|tip Inside and outside the mine.
step
Kill enemies around this area
|tip Inside and outside the mine.
Reach Level 11 |ding 11 |goto 61.46,47.19
step
Leave the mine |goto 61.45,47.20 < 10 |walk
Follow the path |goto 58.85,48.91 < 40 |only if walking
Continue following the path |goto 56.36,43.59 < 30 |only if walking
talk Lorekeeper Raintotem##3233
accept A Sacred Burial##833 |goto 59.86,25.63
stickystart "Kill_Bristleback_Interlopers"
step
talk Ancestral Spirit##2994
turnin Rite of Wisdom##773 |goto 61.45,21.02
accept Journey into Thunder Bluff##775 |goto 61.45,21.02
step
label "Kill_Bristleback_Interlopers"
kill 8 Bristleback Interloper##3232 |q 833/1 |goto 61.22,21.26
step
talk Lorekeeper Raintotem##3233
turnin A Sacred Burial##833 |goto 59.86,25.63
step
Leave the building |goto 46.81,60.54 < 10 |walk
talk Baine Bloodhoof##2993
turnin Dwarven Digging##746 |goto 47.51,60.17
step
talk Morin Cloudstalker##2988
|tip He walks along the road east of this point.
turnin The Venture Co.##764 |goto 51.94,59.61
turnin Supervisor Fizsprocket##765 |goto 51.94,59.61
He walks between here and [59.72,62.45]
step
Ride the elevator up |goto Thunder Bluff 31.80,65.96 < 10 |only if walking
talk Eyahn Eagletalon##2987
|tip He walks around this area.
accept Preparation for Ceremony##744 |goto Thunder Bluff 37.67,59.60
step
talk Cairne Bloodhoof##3057
|tip Inside the building.
turnin Journey into Thunder Bluff##775 |goto 60.29,51.68
accept Rites of the Earthmother##776 |goto 60.29,51.68
stickystart "Collect_Flatland_Prowler_Claws"
step
Ride the elevator down |goto 54.21,26.95 < 10 |only if walking
use the Wildmane Cleansing Totem##5416
Cleanse the Wildmane Well |q 760/1 |goto Mulgore 42.77,14.21
|only if Tauren
step
map Mulgore
path	follow loose;	loop;	ants curved;	dist 30
path	52.96,13.88		51.18,13.64		49.41,16.44		51.55,22.83
path	52.27,31.29		54.97,31.45		53.67,25.94		54.39,18.86
kill Arra'chea##3058
|tip It looks like a dark grey kodo that walks clockwise in a path around this whole area.
|tip This step's path will take you counter-clockwise to help you find it faster.
collect Horn of Arra'chea##4841 |q 776/1
stickystart "Collect_Bronze_Feathers"
step
kill Windfury Sorceress##2964+
collect 6 Azure Feather##4752 |q 744/1 |goto 55.99,16.24
You can find more around: |notinsticky
[54.44,11.34]
[51.93,6.71]
[39.73,6.93]
[36.60,11.33]
step
label "Collect_Bronze_Feathers"
kill Windfury Matriarch##2965+
collect 6 Bronze Feather##4753 |q 744/2 |goto 55.99,16.24
[54.44,11.34]
[51.93,6.71]
[39.73,6.93]
[36.60,11.33]
step
label "Collect_Flatland_Prowler_Claws"
kill Flatland Prowler##3566+
collect 4 Flatland Prowler Claw##5203 |q 861/1 |goto 45.10,17.36
You can find more around: |notinsticky
[51.03,13.25]
[39.72,12.05]
step
Kill enemies around this area
Reach Level 12 |ding 12 |goto 50.81,14.74
step
Follow the path up |goto Thunder Bluff 60.13,19.21 < 20 |only if walking
Ride the elevator up |goto Thunder Bluff 54.26,26.90 < 7 |only if walking
Enter the building |goto Thunder Bluff 74.09,29.90 < 7 |walk
talk Arch Druid Hamuul Runetotem##5769
|tip Inside the building.
accept The Barrens Oases##886 |goto Thunder Bluff 78.61,28.54
step
Leave the building |goto 74.09,29.90 < 7 |walk
talk Cairne Bloodhoof##3057
|tip Inside the building.
turnin Rites of the Earthmother##776 |goto 60.29,51.68
step
talk Eyahn Eagletalon##2987
|tip He walks around this area.
turnin Preparation for Ceremony##744 |goto 37.71,59.57
step
talk Melor Stonehoof##3441
turnin The Hunter's Way##861 |goto 61.53,80.89
accept Sergra Darkthorn##860 |goto 61.53,80.89
step
Leave the building |goto Mulgore 46.81,60.54 < 7 |walk
talk Mull Thunderhorn##2948
turnin Wildmane Cleansing##760 |goto Mulgore 48.53,60.39
|only if Tauren
step
Enter the Barrens |goto 69.29,60.46 < 30 |c |q 860
step
talk Omusa Thunderhorn##10378
fpath Camp Taurajo |goto The Barrens 44.45,59.15
step
talk Kirge Sternhorn##3418
accept Journey to the Crossroads##854 |goto 44.88,58.61
|only if Tauren
step
Follow the road |goto 47.41,57.43 < 30 |only if walking
Follow the path |goto 52.08,32.21 < 20 |only if walking
talk Tonga Runetotem##3448
turnin The Barrens Oases##886 |goto 52.26,31.93
step
talk Sergra Darkthorn##3338
turnin Sergra Darkthorn##860 |goto 52.23,31.01
step
talk Thork##3429
turnin Journey to the Crossroads##854 |goto 51.50,30.87
|only if Tauren
step
talk Devrak##3615
fpath Crossroads |goto 51.50,30.34
step
Follow the road |goto 55.47,22.17 < 30 |only if walking
Cross the bridge |goto 62.68,19.22 < 20 |only if walking
Enter Orgrimmar |goto Durotar 45.52,12.07 < 20 |only if walking
Enter the building |goto Orgrimmar 47.47,65.13 < 15 |only if walking
talk Doras##3310
|tip At the top of the tower.
fpath Orgrimmar |goto Orgrimmar 45.13,63.90
|tip You are taking the time to get the Orgrimmar flight path now, so you can use it travel faster in the future.
|tip Kill enemies as you walk, to gain experience along the way.
step
Follow the path |goto 52.51,85.25 < 20 |only if walking
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
Follow the road |goto Durotar 47.29,23.21 < 30 |only if walking
Continue following the road |goto Durotar 52.38,33.50 < 30 |only if walking
Follow the road |goto Durotar 52.23,42.43 < 30 |only if walking
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.85,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Durotar (1-12) [Orc & Troll Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Durotar",
condition_suggested=function() return (raceclass('Orc') or raceclass('Troll')) and level <= 12 end,
condition_suggested_race=function() return (raceclass('Orc') or raceclass('Troll')) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\The Barrens (12-15)",
},[[
author support@zygorguides.com
defaultfor Orc,Troll
next Leveling (13-20)
step
talk Kaltunk##10176
accept Your Place In The World##4641 |goto Durotar 43.29,68.54
step
talk Ruzan##5765
accept Vile Familiars##1485 |goto 42.59,69.00
|only if Orc Warlock
step
Enter the cave |goto 42.28,68.42 < 7 |walk
talk Gornek##3143
|tip Inside the cave.
turnin Your Place In The World##4641 |goto 42.06,68.33
accept Cutting Teeth##788 |goto 42.06,68.33
step
Leave the cave |goto 42.31,68.43 < 7 |walk
kill 10 Mottled Boar##3098 |q 788/1 |goto 44.23,70.68
You can find more around [44.45,64.80]
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 44.23,70.68
step
talk Zureetha Fargaze##3145
accept Vile Familiars##792 |goto 42.85,69.14
|only if not Orc Warlock
step
Enter the cave |goto 42.28,68.42 < 7 |walk
talk Gornek##3143
|tip Inside the cave.
turnin Cutting Teeth##788 |goto 42.06,68.33
accept Simple Parchment##2383 |goto 42.06,68.33 |only Orc Warrior
accept Rune-Inscribed Parchment##3089 |goto 42.06,68.33 |only Orc Shaman
accept Encrypted Parchment##3088 |goto 42.06,68.33 |only Orc Rogue
accept Etched Parchment##3087 |goto 42.06,68.33 |only Orc Hunter
accept Tainted Parchment##3090 |goto 42.06,68.33 |only Orc Warlock
accept Simple Tablet##3065 |goto 42.06,68.33 |only Troll Warrior
accept Etched Tablet##3082 |goto 42.06,68.33 |only Troll Hunter
accept Encrypted Tablet##3083 |goto 42.06,68.33 |only Troll Rogue
accept Hallowed Tablet##3085 |goto 42.06,68.33 |only Troll Priest
accept Rune-Inscribed Tablet##3084 |goto 42.06,68.33 |only Troll Shaman
accept Glyphic Tablet##3086 |goto 42.06,68.33 |only Troll Mage
accept Sting of the Scorpid##789 |goto 42.06,68.33
step
talk Rwag##3155
|tip Inside the cave.
turnin Encrypted Parchment##3088 |goto 41.28,68.00
|only if Orc Rogue
step
talk Rwag##3155
|tip Inside the cave.
turnin Encrypted Tablet##3083 |goto 41.28,68.00
|only if Troll Rogue
step
talk Nartok##3156
|tip Inside the cave.
turnin Tainted Parchment##3090 |goto 40.65,68.51
|only if Orc Warlock
step
Leave the cave |goto 42.31,68.43 < 7 |walk
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##4402 |goto 42.73,67.24
step
talk Ken'jai##3707
turnin Hallowed Tablet##3085 |goto 42.36,68.82
|only if Troll Priest
step
talk Frang##3153
turnin Simple Parchment##2383 |goto 42.89,69.43
|only if Orc Warrior
step
talk Frang##3153
turnin Simple Tablet##3065 |goto 42.89,69.43
|only if Troll Warrior
step
talk Shikrik##3157
turnin Rune-Inscribed Parchment##3089 |goto 42.39,69.00
|only if Orc Shaman
step
talk Shikrik##3157
turnin Rune-Inscribed Tablet##3084 |goto 42.39,69.00
|only if Troll Shaman
step
talk Jen'shan##3154
turnin Etched Parchment##3087 |goto 42.84,69.32
|only if Orc Hunter
step
talk Jen'shan##3154
turnin Etched Tablet##3082 |goto 42.84,69.32
|only if Troll Hunter
step
talk Mai'ah##5884
turnin Glyphic Tablet##3086 |goto 42.51,69.04
|only if Troll Mage
step
click Cactus Apple+
|tip They look like green cactuses with small round red balls on them on the ground around this area.
|tip Kill enemies as you collect these, to keep gaining experience as you move around.
collect 10 Cactus Apple##11583 |q 4402/1 |goto 44.03,67.01
You can find more around: |notinsticky
[44.38,65.05]
[45.73,64.55]
[45.83,63.09]
[43.65,62.78]
[44.86,61.67]
[46.39,60.45]
[44.86,58.88]
step
Kill enemies around this area
|tip You need to be level 3 to accept the quest in the next step.
Reach Level 3 |ding 3 |goto 44.57,64.33
You can find more around [45.11,57.47]
step
label "Collect_Vile_Familiar_Heads"
kill Vile Familiar##3101+
|tip Inside and outside the cave.
collect 6 Vile Familiar Head##6487 |q 1485/1 |goto 45.34,56.36
|only if Orc Warlock
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##5441 |goto 44.62,68.64
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##4402 |goto 42.73,67.24
step
talk Ruzan##5765
turnin Vile Familiars##1485 |goto 42.59,69.00
accept Vile Familiars##1499 |goto 42.59,69.00
|only if Orc Warlock
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##1499 |goto 42.85,69.15
|only if Orc Warlock
stickystart "Collect_Scorpid_Worker_Tails"
step
use the Foreman's Blackjack##16114
|tip Use it on Lazy Peons around this area.
|tip They look like orcs sleeping on the ground around this area.
|tip If they aren't sleeping, either wait for them to sleep, or go to a different location.
|tip Kill enemies as you walk to find them, to gain experience along the way.
Awaken #5# Peons |q 5441/1 |goto 44.98,69.13
You can find more around: |notinsticky
[44.68,72.81]
[42.35,73.24]
[41.25,72.68]
[47.56,69.34]
[47.18,65.46]
[46.84,60.79]
step
talk Foreman Thazz'ril##11378
turnin Lazy Peons##5441 |goto 44.62,68.64
accept Thazz'ril's Pick##6394 |goto 44.62,68.64
stickystop "Collect_Scorpid_Worker_Tails"
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 44.39,64.46
stickystart "Collect_Scorpid_Worker_Tails"
step
talk Hana'zua##3287
accept Sarkoth##790 |goto 40.60,62.59
step
Follow the path up |goto 40.70,65.10 < 10 |only if walking
kill Sarkoth##3281
|tip It looks like a darker colored scorpion that walks around this area.
collect Sarkoth's Mangled Claw##4905 |q 790/1 |goto 40.50,66.82
step
label "Collect_Scorpid_Worker_Tails"
kill Scorpid Worker##3124+
collect 10 Scorpid Worker Tail##4862 |q 789/1 |goto 40.50,66.82
You can find more around [40.71,62.39]
step
talk Hana'zua##3287
turnin Sarkoth##790 |goto 40.60,62.59
accept Sarkoth##804 |goto 40.60,62.59
step
Follow the path up |goto 40.70,65.10 < 10 |only if walking
Jump down and enter the cave |goto 42.29,68.43 < 7 |walk
talk Gornek##3143
|tip Inside the cave.
turnin Sting of the Scorpid##789 |goto 42.05,68.32
turnin Sarkoth##804 |goto 42.05,68.32
stickystart "Collect_Vile_Familiar_Heads"
stickystart "Kill_Vile_Familiars"
step
Leave the cave |goto 42.29,68.43 < 7 |walk
Follow the path |goto 43.85,66.94 < 30 |only if walking
Enter the cave |goto 45.34,56.36 < 10 |walk
Follow the path |goto 44.42,54.58 < 7 |walk
click Thazz'ril's Pick
|tip Inside the cave.
collect Thazz'ril's Pick##16332 |q 6394/1 |goto 43.73,53.79
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 5 |ding 5 |goto 45.34,56.36
step
Follow the path |goto 45.15,54.99 < 7 |walk
Leave the cave |goto 45.33,56.44 < 10 |c |q 794 |future
step
label "Kill_Vile_Familiars"
kill 12 Vile Familiar##3101 |q 792/1 |goto 45.34,56.36
|tip Inside and outside the cave.
|only if not Orc Warlock
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##6394 |goto 44.62,68.64
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##792 |goto 42.85,69.15 |only if not Orc Warlock
accept Burning Blade Medallion##794 |goto 42.85,69.15
step
talk Canaga Earthcaller##5887
accept Call of Earth##1516 |goto 42.41,69.17
|only if Shaman
stickystart "Collect_Felstalker_Hoofs"
step
Follow the path |goto 43.89,67.09 < 30 |only if walking
Enter the cave |goto 45.34,56.36 < 10 |walk
Follow the path |goto 44.78,54.36 < 10 |walk
Continue following the path |goto 44.45,52.74 < 10 |walk
Continue following the path |goto 43.39,52.01 < 10 |walk
kill Yarrog Baneshadow##3183
|tip Inside the cave.
collect Burning Blade Medallion##4859 |q 794/1 |goto 42.71,52.95
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 6 |ding 6 |goto 45.34,56.36
step
label "Collect_Felstalker_Hoofs"
kill Felstalker##3102+
|tip Inside the cave.
collect 2 Felstalker Hoof##6640 |q 1516/1 |goto 44.82,54.59
|only if Shaman
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##794 |goto 42.85,69.15
accept Report to Sen'jin Village##805 |goto 42.85,69.15
step
talk Canaga Earthcaller##5887
turnin Call of Earth##1516 |goto 42.41,69.17
accept Call of Earth##1517 |goto 42.41,69.17
|only if Shaman
step
Follow the path |goto 43.57,69.85 < 20 |only if walking
Follow the path up |goto 41.56,73.28 < 15 |only if walking
Continue up the path |goto 40.74,74.35 < 10 |only if walking
Follow the path |goto 42.49,74.89 < 10 |only if walking
use the Earth Sapta##6635
talk Minor Manifestation of Earth##5891
turnin Call of Earth##1517 |goto 44.03,76.20
accept Call of Earth##1518 |goto 44.03,76.20
|only if Shaman
step
Jump down here |goto 43.73,74.92 < 10 |only if walking
Follow the path |goto 43.49,69.67 < 30 |only if walking
talk Canaga Earthcaller##5887
turnin Call of Earth##1518 |goto 42.41,69.17
|only if Shaman
step
Follow the road |goto 47.98,67.45 < 30 |only if walking
talk Ukor##6786
accept A Peon's Burden##2161 |goto 52.06,68.31
step
talk Lar Prowltusk##3140
|tip He walks around this area.
accept Thwarting Kolkar Aggression##786 |goto 54.19,73.29
Also check around: |notinsticky
[54.63,74.72]
[54.09,76.49]
step
talk Master Gadrin##3188
turnin Report to Sen'jin Village##805 |goto 55.95,74.72
accept Minshina's Skull##808 |goto 55.95,74.72
accept Zalazane##826 |goto 55.95,74.72
accept Report to Orgnil##823 |goto 55.95,74.72
step
talk Master Vornal##3304
accept A Solvent Spirit##818 |goto 55.94,74.39
step
talk Vel'rin Fang##3194
|tip Inside the building.
accept Practical Prey##817 |goto 55.96,73.92
step
talk Orgnil Soulscar##3142
turnin Report to Orgnil##823 |goto 52.25,43.15
accept Dark Storms##806 |goto 52.25,43.15
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
accept Vanquish the Betrayers##784 |goto 51.95,43.50
accept Encroachment##837 |goto 51.95,43.50
step
Enter the building |goto 51.84,41.95 < 7 |walk
talk Innkeeper Grosk##6928
|tip Inside the building.
turnin A Peon's Burden##2161 |goto 51.52,41.65
step
talk Innkeeper Grosk##6928
|tip Inside the building.
home Razor Hill |goto 51.52,41.65
step
Leave the building |goto 51.84,41.95 < 7 |walk
talk Cook Torka##3191
|tip He walks around this area.
accept Break a Few Eggs##815 |goto 51.11,42.45
step
Follow the path |goto 50.66,43.91 < 15 |only if walking
Follow the path up |goto 48.00,42.81 < 15 |only if walking
talk Furl Scornbrow##3147
|tip At the top of the tower.
accept Carry Your Weight##791 |goto 49.89,40.38
stickystart "Collect_Intact_Makrura_Eyes"
step
kill Pygmy Surf Crawler##3106+
|tip They look like crabs.
|tip Underwater around this area.
collect 8 Crawler Mucus##4888 |q 818/2 |goto 62.40,47.97
You can find more underwater around [64.42,56.09]
step
label "Collect_Intact_Makrura_Eyes"
Kill Makrura enemies around this area
|tip They look like lobster creatures.
|tip Underwater around this area. |notinsticky
collect 4 Intact Makrura Eye##4887 |q 818/1 |goto 62.40,47.97
You can find more underwater around [64.42,56.09]
step
Kill enemies around this area
Reach Level 7 |ding 7 |goto 58.57,44.15
stickystart "Kill_Kul_Tiras_Sailors"
stickystart "Kill_Kul_Tiras_Marines"
step
Kill Kul Tiras enemies around this area
collect 8 Canvas Scraps##4870 |q 791/1 |goto 58.21,57.44
You can find more around [57.72,52.62]
step
label "Kill_Kul_Tiras_Sailors"
kill 10 Kul Tiras Sailor##3128 |q 784/1 |goto 58.21,57.44
You can find more around [57.72,52.62]
step
label "Kill_Kul_Tiras_Marines"
kill 8 Kul Tiras Marine##3129 |q 784/2 |goto 58.21,57.44
You can find more around [57.72,52.62]
step
Enter the building |goto 58.99,58.30 < 10 |walk
Run up the stairs |goto 59.86,58.28 < 5 |walk
kill Lieutenant Benedict##3192 |q 784/3 |goto 59.71,58.27
|tip Upstairs inside the building.
collect Benedict's Key##4882 |goto 59.71,58.27 |q 830 |future
step
Follow the path |goto 59.23,57.98 < 5 |walk
Run up the stairs |goto 59.90,57.87 < 5 |walk
click Benedict's Chest
|tip Upstairs, on top of the building.
collect Aged Envelope##4881 |goto 59.26,57.66 |q 830 |future
step
use the Aged Envelope##4881
accept The Admiral's Orders##830
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin Vanquish the Betrayers##784 |goto 51.95,43.50
accept From The Wreckage....##825 |goto 51.95,43.50
turnin The Admiral's Orders##830 |goto 51.95,43.50
accept The Admiral's Orders##831 |goto 51.95,43.50
step
click Gnomish Toolbox+
|tip They look like grey metal chests on the ground underwater around this area.
collect 3 Gnomish Tools##4863 |q 825/1 |goto 62.02,46.29
You can find more around: |notinsticky
[61.96,42.14]
[64.36,53.46]
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 58.57,44.15
stickystart "Kill_Razormane_Scouts"
step
kill 4 Razormane Quilboar##3111 |q 837/1 |goto 49.86,49.33
step
label "Kill_Razormane_Scouts"
kill 4 Razormane Scout##3112 |q 837/2 |goto 49.86,49.33
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin From The Wreckage....##825 |goto 51.95,43.50
step
Follow the path |goto 50.66,43.91 < 15 |only if walking
Follow the path up |goto 48.00,42.81 < 15 |only if walking
talk Furl Scornbrow##3147
|tip At the top of the tower.
turnin Carry Your Weight##791 |goto 49.89,40.38
step
Follow the path |goto 50.85,79.14 < 15 |only if walking
Enter the building |goto 49.89,80.80 < 7 |walk
click Attack Plan: Valley of Trials
|tip Inside the building.
Destroy the Attack Plan: Valley of Trials |q 786/1 |goto 49.82,81.28
step
Leave the building |goto 49.89,80.80 < 7 |walk
click Attack Plan: Sen'jin Village
Destroy the Attack Plan: Sen'jin Village |q 786/2 |goto 47.66,77.34
step
Follow the path |goto 47.66,80.69 < 20 |only if walking
click Attack Plan: Orgrimmar
Destroy the Attack Plan: Orgrimmar |q 786/3 |goto 46.23,78.95
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 49.98,79.45
step
Follow the path |goto 50.88,79.14 < 15 |only if walking
talk Lar Prowltusk##3140
|tip He walks around this area.
turnin Thwarting Kolkar Aggression##786 |goto 54.19,73.29
Also check around: |notinsticky
[54.63,74.72]
[54.09,76.49]
step
talk Master Vornal##3304
turnin A Solvent Spirit##818 |goto 55.94,74.39
stickystart "Collect_Taillasher_Eggs"
stickystart "Collect_Durotar_Tiger_Fur"
stickystart "Kill_Hexed_Trolls"
stickystart "Kill_Voodoo_Trolls"
step
kill Zalazane##3205
|tip He walks around this area.
collect Zalazane's Head##4866 |q 826/3 |goto 67.29,87.05
step
click Imprisoned Darkspear
|tip They look like skulls on the ground.
collect Minshina's Skull##4864 |q 808/1 |goto 67.45,87.81
step
label "Kill_Hexed_Trolls"
kill 8 Hexed Troll##3207 |q 826/1 |goto 67.17,86.99
You can find more around [67.36,83.45]
step
label "Kill_Voodoo_Trolls"
kill 8 Voodoo Troll##3206 |q 826/2 |goto 67.17,86.99
You can find more around [67.36,83.45]
step
label "Collect_Taillasher_Eggs"
click Taillasher Eggs+
|tip They look like clusters of purple eggs on the ground near trees around this area.
collect 3 Taillasher Egg##4890 |q 815/1 |goto 64.56,73.28
You can find more at: |notinsticky
[61.37,78.34]
[60.33,82.86]
[59.78,89.67]
[63.00,94.44]
step
label "Collect_Durotar_Tiger_Fur"
kill Durotar Tiger##3121+
collect 4 Durotar Tiger Fur##4892 |q 817/1 |goto 63.42,95.23
You can find more around: |notinsticky
[60.74,90.32]
[59.85,82.67]
step
talk Master Gadrin##3188
turnin Minshina's Skull##808 |goto 55.95,74.72
turnin Zalazane##826 |goto 55.95,74.72
|tip You will receive a "Faintly Glowing Skull" item as a quest reward.
|tip Be careful not to accidentally sell it to a vendor.
|tip You will use it later to make a quest easier.
step
talk Vel'rin Fang##3194
|tip Inside the building.
turnin Practical Prey##817 |goto 55.95,73.93
step
Leave the building |goto 51.81,41.96 < 7 |walk
talk Cook Torka##3191
|tip He walks around this area.
turnin Break a Few Eggs##815 |goto 51.11,42.45
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 49.86,49.33
step
Enter the building |goto Durotar 53.25,42.59 < 7 |walk
talk Tarshaw Jaggedscar##3169
|tip Inside the building.
accept Veteran Uzzek##1505 |goto Durotar 54.19,42.46
|only if Warrior
step
Leave the building |goto 53.27,42.59 < 7 |walk
Follow the road |goto 50.64,43.97 < 15 |only if walking
Cross the bridge |goto 34.60,42.31 < 15 |only if walking
talk Uzzek##5810
turnin Veteran Uzzek##1505 |goto The Barrens 61.38,21.11
accept Path of Defense##1498 |goto The Barrens 61.38,21.11
|only if Warrior
step
Cross the bridge |goto 62.68,19.22 < 15 |only if walking
Follow the path |goto Durotar 39.18,32.15 < 15 |only if walking
kill Thunder Lizard##3130+
collect 5 Singed Scale##6486 |q 1498/1 |goto Durotar 39.27,28.29
|only if Warrior
step
Follow the path |goto 39.16,32.31 < 15 |only if walking
Cross the bridge |goto 34.60,42.28 < 15 |only if walking
talk Uzzek##5810
turnin Path of Defense##1498 |goto The Barrens 61.38,21.11
|only if Warrior
step
Cross the bridge |goto 62.67,19.22 < 15 |c |q 837
|only if Warrior
step
talk Ophek##3294
|tip Outside, behind the building.
accept Gan'rul's Summons##1506 |goto Durotar 54.37,41.29
|only if Warlock
step
Follow the road |goto 52.37,40.01 < 30 |only if walking
Enter Orgrimmar |goto 45.54,12.06 < 20 |only if walking
Follow the path |goto Orgrimmar 51.55,58.13 < 20 |only if walking
Follow the path down |goto Orgrimmar 55.96,41.03 < 15 |walk
talk Gan'rul Bloodeye##5875
|tip Inside the tent.
turnin Gan'rul's Summons##1506 |goto Orgrimmar 48.24,45.29
accept Creature of the Void##1501 |goto Orgrimmar 48.24,45.29
|only if Warlock
step
Follow the path up |goto 43.93,56.80 < 10 |walk
Follow the path |goto 38.49,54.16 < 10 |walk
Follow the path |goto 52.50,85.13 < 20 |only if walking
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
Enter the cave |goto Durotar 55.02,9.79 < 10 |walk
Follow the path |goto Durotar 53.80,8.83 < 10 |walk
Continue following the path |goto Durotar 52.75,7.87 < 10 |walk
Continue following the path |goto Durotar 51.68,8.23 < 10 |walk
click Burning Blade Stash
|tip Inside the cave.
collect Tablet of Verga##6535 |q 1501/1 |goto Durotar 51.62,9.74
|only if Warlock
step
Follow the path |goto 51.73,8.10 < 10 |walk
Continue following the path |goto 52.49,8.31 < 10 |walk
Continue following the path |goto 54.20,8.92 < 10 |walk
Leave the cave |goto 55.03,9.87 < 10 |walk
Enter Orgrimmar |goto 45.54,12.06 < 20 |only if walking
Follow the path |goto Orgrimmar 51.55,58.13 < 20 |only if walking
Follow the path down |goto Orgrimmar 55.96,41.03 < 10 |walk
talk Gan'rul Bloodeye##5875
|tip Inside the tent.
turnin Creature of the Void##1501 |goto Orgrimmar 48.24,45.29
accept The Binding##1504 |goto Orgrimmar 48.24,45.29
|only if Warlock
step
use Glyphs of Summoning##7464
|tip Use it while standing on the pink symbol on the ground.
|tip Inside the tent.
kill Summoned Voidwalker##5676 |q 1504/1 |goto 49.44,50.02
|only if Warlock
step
talk Gan'rul Bloodeye##5875
|tip Inside the tent.
turnin The Binding##1504 |goto 48.24,45.29
|only if Warlock
step
Follow the path up |goto 43.93,56.80 < 10 |walk
Follow the path |goto 38.49,54.16 < 10 |walk
Follow the path |goto 52.50,85.13 < 20 |only if walking
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
Follow the path |goto Durotar 45.92,24.46 < 30 |c |q 837
|only if Warlock
step
Enter the building |goto Durotar 53.25,42.59 < 7 |walk
talk Swart##3173
|tip Inside the building.
accept Call of Fire##2983 |goto Durotar 54.42,42.58
|only if Shaman
step
Leave the building |goto 53.27,42.59 < 7 |walk
Follow the road |goto 50.64,43.97 < 15 |only if walking
Cross the bridge |goto 34.60,42.31 < 15 |only if walking
talk Kranal Fiss##5907
turnin Call of Fire##2983 |goto The Barrens 56.03,19.89
accept Call of Fire##1524 |goto The Barrens 56.03,19.89
|only if Shaman
step
Cross the bridge |goto 62.67,19.22 < 15 |only if walking
Follow the path up |goto Durotar 36.59,57.07 < 10 |only if walking
Continue up the path |goto Durotar 36.61,58.19 < 5 |only if walking
Continue up the path |goto Durotar 37.74,58.24 < 5 |only if walking
Continue up the path |goto Durotar 38.94,57.56 < 5 |only if walking
Follow the path |goto Durotar 39.18,58.63 < 5 |only if walking
talk Telf Joolam##5900
|tip On top of the mountain.
turnin Call of Fire##1524 |goto Durotar 38.55,58.96
accept Call of Fire##1525 |goto Durotar 38.55,58.96
|only if Shaman
step
Follow the path down |goto 39.21,58.52 < 7 |only if walking
Follow the path |goto The Barrens 61.47,20.86 < 40 |only if walking
Kill Razormane enemies around this area
collect Fire Tar##5026 |q 1525/1 |goto The Barrens 54.15,25.01
|only if Shaman
step
Cross the bridge |goto 62.67,19.23 < 15 |only if walking
Follow the path |goto Durotar 50.78,43.81 < 15 |only if walking
Continue following the path |goto Durotar 54.15,40.72 < 15 |only if walking
Enter the cave |goto Durotar 52.82,28.82 < 10 |walk
Follow the path |goto Durotar 53.07,27.09 < 10 |walk
kill Burning Blade Cultist##3199+
|tip Inside the cave.
|tip They seem to mostly be towards the back of the cave.
collect Reagent Pouch##6652 |q 1525/2 |goto Durotar 52.12,24.95
|only if Shaman
step
Follow the path |goto 53.13,27.27 < 10 |walk
Leave the cave |goto 52.83,28.93 < 10 |walk
Jump down onto the huge long rock |goto 51.97,31.29 < 15 |only if walking
Follow the path up |goto 36.59,57.07 < 10 |only if walking
Continue up the path |goto 36.61,58.19 < 5 |only if walking
Continue up the path |goto 37.74,58.24 < 5 |only if walking
Continue up the path |goto 38.94,57.56 < 5 |only if walking
Follow the path |goto 39.18,58.63 < 5 |only if walking
talk Telf Joolam##5900
|tip On top of the mountain.
turnin Call of Fire##1525 |goto 38.55,58.96
accept Call of Fire##1526 |goto 38.55,58.96
|only if Shaman
step
Follow the path up |goto 38.34,58.52 < 5 |only if walking
use the Fire Sapta##6636
kill Minor Manifestation of Fire##5893
|tip On top of the mountain.
collect Glowing Ember##6655 |q 1526/1 |goto 38.84,58.24
|only if Shaman
step
click Brazier of the Dormant Flame
|tip On top of the mountain.
turnin Call of Fire##1526 |goto 38.95,58.22
accept Call of Fire##1527 |goto 38.95,58.22
|only if Shaman
step
Follow the path down |goto 39.19,57.81 < 5 |only if walking
talk Kranal Fiss##5907
turnin Call of Fire##1527 |goto The Barrens 56.04,19.89
|only if Shaman
step
Cross the bridge |goto 62.67,19.22 < 15 |c |q 837
|only if Shaman
step
talk Thotar##3171
|tip Inside the building.
accept Taming the Beast##6062 |goto Durotar 51.85,43.49
|only if Hunter
step
use the Taming Rod##15917
|tip Use it on a Dire Mottled Boar around this area.
Tame a Dire Mottled Boar |q 6062/1 |goto 51.84,47.23
|tip Dismiss it after you tame it.
|only if Hunter
step
talk Thotar##3171
|tip Inside the building.
turnin Taming the Beast##6062 |goto 51.85,43.49
accept Taming the Beast##6083 |goto 51.85,43.49
|only if Hunter
step
Follow the path |goto 54.36,39.59 < 30 |only if walking
use the Taming Rod##15919
|tip Use it on a Surf Crawler around this area.
Tame a Surf Crawler |q 6083/1 |goto 59.01,27.64
|tip Dismiss it after you tame it.
|only if Hunter
step
talk Thotar##3171
|tip Inside the building.
turnin Taming the Beast##6083 |goto 51.85,43.49
accept Taming the Beast##6082 |goto 51.85,43.49
|only if Hunter
step
use the Taming Rod##15920
|tip Use it on an Armored Scorpid around this area.
Tame an Armored Scorpid |q 6082/1 |goto 45.21,45.77
|only if Hunter
step
talk Thotar##3171
|tip Inside the building.
turnin Taming the Beast##6082 |goto 51.85,43.49
accept Training the Beast##6081 |goto 51.85,43.49
|only if Hunter
step
Enter Orgrimmar |goto 45.54,12.06 < 20 |only if walking
Follow the path up |goto Orgrimmar 71.64,25.95 < 15 |only if walking
Follow the path up |goto Orgrimmar 67.68,14.51 < 7 |only if walking
talk Ormak Grimshot##3352
turnin Training the Beast##6081 |goto Orgrimmar 66.05,18.54
|only if Hunter
step
Leave Orgrimmar |goto 49.10,94.75 < 20 |c |q 837
|only if Hunter
step
Enter the building |goto Durotar 53.24,42.59 < 10 |walk
talk Tai'jin##3706
|tip Inside the building.
accept Hex of Weakness##5652 |goto Durotar 54.26,42.93
|only if Troll Priest
step
Leave the building |goto 53.24,42.59 < 10 |walk
Follow the road |goto 52.38,39.19 < 30 |only if walking
Enter Orgrimmar |goto 45.54,12.06 < 20 |only if walking
talk Ur'kyo##6018
|tip Inside the building.
turnin Hex of Weakness##5652 |goto Orgrimmar 35.59,87.83
|only if Troll Priest
stickystart "Kill_Razormane_Battleguards"
step
kill 4 Razormane Dustrunner##3113 |q 837/3 |goto Durotar 42.94,39.44
step
label "Kill_Razormane_Battleguards"
kill 4 Razormane Battleguard##3114 |q 837/4 |goto 42.94,39.44
step
talk Misha Tor'kren##3193
|tip She walks around inside the building.
accept Lost But Not Forgotten##816 |goto 43.11,30.24
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin Encroachment##837 |goto 51.95,43.50
step
Follow the road |goto 52.40,38.91 < 30 |only if walking
talk Rezlak##3293
accept Winds in the Desert##834 |goto 46.37,22.94
step
Follow the path |goto 45.54,27.05 < 30 |only if walking
Follow the path |goto 46.25,30.05 < 15 |only if walking
click Stolen Supply Sack+
|tip They look like tan bags on the ground around this area.
collect 5 Sack of Supplies##4918 |q 834/1 |goto 47.28,30.52
You can find more around: |notinsticky
[48.33,33.75]
[49.09,33.10]
[49.63,32.13]
step
talk Rezlak##3293
turnin Winds in the Desert##834 |goto 46.37,22.94
accept Securing the Lines##835 |goto 46.37,22.94
stickystart "Kill_Dustwind_Savages"
step
Follow the path |goto 49.68,28.45 < 15 |only if walking
Enter the tunnel |goto 51.95,27.44 < 10 |only if walking
Leave the tunnel |goto 53.75,27.79 < 10 |only if walking
kill 8 Dustwind Storm Witch##3118 |q 835/2 |goto 53.89,24.97
You can find more down the path that starts at [53.98,22.49]
step
label "Kill_Dustwind_Savages"
kill 12 Dustwind Savage##3117 |q 835/1 |goto 53.89,24.97
You can find more down the path that starts at [53.98,22.49]
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 53.89,24.97
You can find more down the path that starts at [53.98,22.49]
step
Enter the tunnel |goto 53.68,27.77 < 10 |only if walking
Leave the tunnel |goto 51.84,27.44 < 10 |only if walking
Follow the road |goto 49.02,28.52 < 20 |only if walking
talk Rezlak##3293
turnin Securing the Lines##835 |goto 46.37,22.94
step
talk Rhinag##3190
|tip Between the huge rocks.
accept Need for a Cure##812 |goto 41.54,18.60
step
Enter Orgrimmar |goto 45.52,12.08 < 20 |only if walking
Enter the building |goto Orgrimmar 40.24,36.97 < 10 |walk
talk Vol'jin##10540
|tip Inside the building.
turnin The Admiral's Orders##831 |goto Orgrimmar/0 34.34,36.33
step
talk Thrall##4949
|tip Inside the building.
accept Hidden Enemies##5726 |goto 31.62,37.84
step
Leave the building |goto 40.26,36.96 < 7 |walk
talk Kor'ghan##3189
|tip Inside the Cleft of Shadow.
accept Finding the Antidote##813 |goto 47.24,53.59 |sticky saved
step
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
kill Venomtail Scorpid##3127+
collect 4 Venomtail Poison Sac##4886 |q 813/1 |goto Durotar 44.51,19.31 |sticky saved
You can find more around [40.11,17.86]
step
Enter Orgrimmar |goto 45.52,12.08 < 20 |only if walking
talk Kor'ghan##3189
|tip Inside the Cleft of Shadow.
turnin Finding the Antidote##813 |goto Orgrimmar 47.24,53.59 |sticky saved
step
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
talk Rhinag##3190
|tip Between the huge rocks.
turnin Need for a Cure##812 |goto Durotar 41.54,18.60
step
kill Dreadmaw Crocolisk##3110+
collect Kron's Amulet##4891 |q 816/1 |goto Durotar 36.24,21.58
You can find more around: |notinsticky
[Durotar 34.80,26.38]
[The Barrens 63.24,13.93]
step
Cross the rocks |goto Durotar 38.22,26.77 < 15 |only if walking
Jump down onto the large flat rock here |goto Durotar 39.36,26.44 < 10 |only if walking
Enter the building |goto Durotar 43.10,30.42 < 7 |walk
talk Misha Tor'kren##3193
|tip Inside the building.
turnin Lost But Not Forgotten##816 |goto Durotar 43.10,30.24
step
Follow the path |goto 39.20,32.39 < 20 |only if walking
Continue following the path |goto 39.96,24.24 < 20 |only if walking
Continue following the path |goto 41.61,25.10 < 15 |only if walking
use the Faintly Glowing Skull##4945
|tip Use it on Fizzle Darkstorm, it will damage him.
|tip He looks like a goblin that walks around this area with an imp minion.
kill Fizzle Darkstorm##3203
collect Fizzle's Claw##4869 |q 806/1 |goto 42.28,26.59
step
talk Orgnil Soulscar##3142
turnin Dark Storms##806 |goto 52.25,43.15
accept Margoz##828 |goto 52.25,43.15
step
Follow the road |goto 52.37,39.32 < 30 |only if walking
Follow the path |goto 47.35,21.91 < 30 |only if walking
Continue following the path |goto 51.02,16.52 < 30 |only if walking
talk Margoz##3208
turnin Margoz##828 |goto 56.41,20.04
accept Skull Rock##827 |goto 56.41,20.04
stickystart "Collect_Searing_Collars"
step
Enter the cave |goto 55.00,9.76 < 10 |walk
Kill Burning Blade enemies around this area
|tip Inside the cave.
collect Lieutenant's Insignia##14544 |q 5726/1 |goto 53.80,9.31
step
label "Collect_Searing_Collars"
Kill Burning Blade enemies around this area
|tip Inside the cave.
collect 6 Searing Collar##4871 |q 827/1 |goto 53.80,9.31
step
Kill enemies around this area
|tip Inside the cave.
Reach Level 12 |ding 12 |goto 53.80,9.31
step
Follow the path |goto 54.27,8.91 < 10 |walk
Leave the cave |goto 55.04,9.85 < 10 |walk
talk Margoz##3208
turnin Skull Rock##827 |goto 56.41,20.03
accept Neeru Fireblade##829 |goto 56.41,20.03
step
Enter Orgrimmar |goto Durotar 45.53,12.08 < 20 |only if walking
talk Neeru Fireblade##3216
|tip Inside the tent, inside the Cleft of Shadow.
turnin Neeru Fireblade##829 |goto Orgrimmar 49.49,50.59
accept Ak'Zeloth##809 |goto Orgrimmar 49.49,50.59
step
Enter the building |goto 40.23,37.00 < 10 |walk
talk Thrall##4949
|tip Inside the building.
turnin Hidden Enemies##5726 |goto 31.63,37.83
accept Hidden Enemies##5727 |goto 31.63,37.83
step
Leave the building |goto 40.26,36.96 < 7 |walk
talk Neeru Fireblade##3216
|tip Inside the tent, inside the Cleft of Shadow.
Tell him _"You may speak frankly, Neeru..."_
Gauge Neeru Fireblade's Reaction to Your Being a Member of the Burning Blade |q 5727/1 |goto 49.49,50.59
step
Enter the building |goto 40.23,37.00 < 10 |walk
talk Thrall##4949
|tip Inside the building.
turnin Hidden Enemies##5727 |goto 31.63,37.83
step
_Destroy This Item:_
|tip It is no longer needed.
trash Lieutenant's Insignia##14544
step
Leave the building |goto 40.26,36.96 < 10 |walk
Leave Orgrimmar |goto 49.10,94.75 < 20 |only if walking
Follow the road |goto Durotar 47.29,23.21 < 30 |only if walking
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar 50.85,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Eversong Woods (1-13) [Blood Elf Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eversong Woods",
condition_suggested=function() return raceclass('BloodElf') and level <= 13 end,
condition_suggested_race=function() return raceclass('BloodElf') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\The Barrens (12-15)",
},[[
defaultfor BloodElf
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Eversong Woods/0 38.21,20.83
step
kill 8 Mana Wyrm##15274 |q 8325/1 |goto 35.45,20.07
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 35.45,20.07
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto 38.21,20.83
accept Unfortunate Measures##8326 |goto 38.21,20.83
step
talk Magistrix Erona##15278
accept Hunter Training##9393 |goto Eversong Woods/0 38.21,20.83
|only if BloodElf Hunter
step
Enter the building |goto 38.56,21.00 < 7 |walk
talk Ranger Sallina##15513
|tip Inside the building.
turnin Hunter Training##9393 |goto 39.05,20.01
accept Well Watcher Solanian##10070 |goto 39.05,20.01
|only if BloodElf Hunter
step
Run up the ramp |goto 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Well Watcher Solanian##10070 |goto 38.76,19.36
accept Solanian's Belongings##8330 |goto 38.76,19.36
accept The Shrine of Dath'Remar##8345 |goto 38.76,19.36
|only if BloodElf Hunter
step
talk Magistrix Erona##15278
accept Paladin Training##9676 |goto Eversong Woods/0 38.21,20.83
|only if BloodElf Paladin
step
Enter the building |goto 38.56,21.00 < 7 |walk
talk Jesthenis Sunstriker##15280
|tip Inside the building.
turnin Paladin Training##9676 |goto 39.47,20.56
accept Well Watcher Solanian##10069 |goto 39.47,20.56
|only if BloodElf Paladin
step
Run up the ramp |goto 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Well Watcher Solanian##10069 |goto 38.76,19.36
accept Solanian's Belongings##8330 |goto 38.76,19.36
accept The Shrine of Dath'Remar##8345 |goto 38.76,19.36
|only if BloodElf Paladin
step
talk Magistrix Erona##15278
accept Rogue Training##9392 |goto Eversong Woods/0 38.21,20.83
|only if BloodElf Rogue
step
Enter the building |goto 38.56,21.00 < 7 |walk
talk Pathstalker Kariel##15285
|tip Inside the building.
turnin Rogue Training##9392 |goto 38.93,20.02
accept Well Watcher Solanian##10071 |goto 38.93,20.02
|only if BloodElf Rogue
step
Run up the ramp |goto 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Well Watcher Solanian##10071 |goto 38.76,19.36
accept Solanian's Belongings##8330 |goto 38.76,19.36
accept The Shrine of Dath'Remar##8345 |goto 38.76,19.36
|only if BloodElf Rogue
step
talk Magistrix Erona##15278
accept Priest Training##8564 |goto Eversong Woods/0 38.21,20.83
|only if BloodElf Priest
step
Enter the building |goto 38.56,21.00 < 7 |walk
talk Matron Arena##15284
|tip Inside the building.
turnin Priest Training##8564 |goto 39.42,20.38
accept Well Watcher Solanian##10072 |goto 39.42,20.38
|only if BloodElf Priest
step
Run up the ramp |goto 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Well Watcher Solanian##10072 |goto 38.76,19.36
accept Solanian's Belongings##8330 |goto 38.76,19.36
accept The Shrine of Dath'Remar##8345 |goto 38.76,19.36
|only if BloodElf Priest
step
talk Magistrix Erona##15278
accept Mage Training##8328 |goto Eversong Woods/0 38.21,20.83
|only if BloodElf Mage
step
Enter the building |goto 38.56,21.00 < 7 |walk
talk Julia Sunstriker##15279
|tip Inside the building.
turnin Mage Training##8328 |goto 39.23,21.46
accept Well Watcher Solanian##10068 |goto 39.23,21.46
|only if BloodElf Mage
step
Run up the ramp |goto 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Well Watcher Solanian##10068 |goto 38.76,19.36
accept Solanian's Belongings##8330 |goto 38.76,19.36
accept The Shrine of Dath'Remar##8345 |goto 38.76,19.36
|only if BloodElf Mage
step
talk Magistrix Erona##15278
accept Warlock Training##8563 |goto Eversong Woods/0 38.21,20.83
|only if BloodElf Warlock
step
Enter the building |goto 38.56,21.00 < 7 |walk
talk Summoner Teli'Larien##15283
|tip Inside the building.
turnin Warlock Training##8563 |goto 38.93,21.44
accept Windows to the Source##8344 |goto 38.93,21.44
accept Well Watcher Solanian##10073 |goto 38.93,21.44
|only if BloodElf Warlock
step
Run up the ramp |goto 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Well Watcher Solanian##10073 |goto 38.76,19.36
accept Solanian's Belongings##8330 |goto 38.76,19.36
accept The Shrine of Dath'Remar##8345 |goto 38.76,19.36
|only if BloodElf Warlock
step
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##8336 |goto Eversong Woods/0 38.27,19.13
|only if BloodElf
step
talk Arcanist Helion##15297
accept Thirst Unending##8346 |goto 37.18,18.94
|only if BloodElf
stickystart "Collect_Arcane_Slivers"
step
Use your _"Mana Tap"_ ability
|tip Use it on Mana Wyrms around this area.
Mana Tap #6# Creatures |q 8346/1 |goto 35.39,19.72
|only if havequest(8346) or completedq(8346)
step
label "Collect_Arcane_Slivers"
kill Mana Wyrm##15274+
collect 6 Arcane Sliver##20482 |q 8336/1 |goto 35.39,19.72
|only if havequest(8336) or completedq(8336)
stickystart "Collect_Lynx_Collars"
step
Follow the path |goto 31.01,20.52 < 30 |only if walking
click Shrine of Dath'Remar##180516
Read the Shrine of Dath'Remar |q 8345/1 |goto 29.64,19.41
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 31.02,20.88
step
click Scroll of Scourge Magic##180511
collect Scroll of Scourge Magic##20471 |q 8330/2 |goto 31.33,22.74
step
click Solanian's Scrying Orb##180510
collect Solanian's Scrying Orb##20470 |q 8330/1 |goto 35.13,28.91
step
label "Collect_Lynx_Collars"
Kill Springpaw enemies around this area
collect 8 Lynx Collar##20797 |q 8326/1 |goto 35.76,23.62
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 35.76,23.62
stickystart "Collect_Wraith_Essences"
step
Run up the ramp |goto Eversong Woods/0 32.61,25.52 < 10 |only if walking
kill Tainted Arcane Wraith##15298
|tip Follow the ramps up.
|tip Upstairs on the platform.
collect Tainted Wraith Essence##20935 |q 8344/2 |goto 31.25,26.91
|only if BloodElf Warlock
step
label "Collect_Wraith_Essences"
kill Arcane Wraith##15273+
collect Wraith Essence##20934 |q 8344/1 |goto 31.68,26.45
|only if BloodElf Warlock
step
click Solanian's Journal##180512
collect Solanian's Journal##20472 |q 8330/3 |goto Eversong Woods/0 37.70,24.91
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto 38.21,20.83
accept Report to Lanthan Perilon##8327 |goto 38.21,20.83
step
Enter the building |goto 38.56,21.00 < 7 |c |q 8330
step
talk Summoner Teli'Larien##15283
|tip Inside the building.
turnin Windows to the Source##8344 |goto Eversong Woods/0 38.93,21.44
|only if BloodElf Warlock
step
Run up the ramp |goto Eversong Woods/0 39.42,21.22 < 7 |walk
talk Well Watcher Solanian##15295
|tip Upstairs, outside on the balcony of the building.
turnin Solanian's Belongings##8330 |goto 38.76,19.36
turnin The Shrine of Dath'Remar##8345 |goto 38.76,19.36
step
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##8336 |goto 38.27,19.13
|only if havequest(8336) or completedq(8336)
step
talk Arcanist Helion##15297
turnin Thirst Unending##8346 |goto 37.18,18.94
|only if havequest(8346) or completedq(8346)
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto 35.37,22.52
accept Aggression##8334 |goto 35.37,22.52
stickystart "Kill_Feral_Tenders"
step
kill 7 Tender##15271 |q 8334/1 |goto 31.99,23.11
You can find more around [33.86,26.95]
step
label "Kill_Feral_Tenders"
kill 7 Feral Tender##15294 |q 8334/2 |goto 31.99,23.11
You can find more around [33.86,26.95]
step
Kill enemies around this area
Reach Level 5 |ding 5 |goto 31.99,23.11
You can find more around [33.86,26.95]
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto 35.37,22.52
accept Felendren the Banished##8335 |goto 35.37,22.52
stickystart "Accept_Tainted_Arcane_Sliver"
stickystart "Slay_Arcane_Wraiths"
stickystart "Slay_Tainted_Arcane_Wraiths"
step
Run up the ramp |goto 32.60,25.54 < 10 |only if walking
Continue up the ramp |goto 30.76,26.35 < 7 |only if walking
kill Felendren the Banished##15367
|tip At the top of the floating structures.
|tip Follow the ramps up to the top.
collect Felendren's Head##20799 |q 8335/3 |goto 30.84,27.13
step
label "Accept_Tainted_Arcane_Sliver"
kill Tainted Arcane Wraith##15298+
collect Tainted Arcane Sliver##20483 |n
use the Tainted Arcane Sliver##20483
accept Tainted Arcane Sliver##8338 |goto 30.84,27.13
|only if BloodElf
step
label "Slay_Arcane_Wraiths"
kill 8 Arcane Wraith##15273 |q 8335/1 |goto 30.84,27.13
step
label "Slay_Tainted_Arcane_Wraiths"
kill 2 Tainted Arcane Wraith##15298 |q 8335/2 |goto 30.84,27.13
step
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto 35.37,22.52
accept Aiding the Outrunners##8347 |goto 35.37,22.52
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto 37.18,18.94
|only if havequest(8338) or completedq(8338)
step
Kill enemies around this area
Reach Level 6 |ding 6 |goto 34.85,27.14
step
Cross the bridge |goto 38.81,30.13 < 30 |only if walking
talk Outrunner Alarion##15301
turnin Aiding the Outrunners##8347 |goto 40.42,32.21
accept Slain by the Wretched##9704 |goto 40.42,32.21
step
clicknpc Slain Outrunner##17849
turnin Slain by the Wretched##9704 |goto 42.02,35.65
accept Package Recovery##9705 |goto 42.02,35.65
step
talk Outrunner Alarion##15301
turnin Package Recovery##9705 |goto 40.42,32.21
accept Completing the Delivery##8350 |goto 40.42,32.21
step
talk Magister Jaronis##15418
accept Major Malfunction##8472 |goto 47.26,46.31
step
Enter the building |goto 47.77,47.30 < 7 |walk
talk Innkeeper Delaniel##15433
|tip Inside the building.
turnin Completing the Delivery##8350 |goto 48.16,47.66
step
talk Innkeeper Delaniel##15433
|tip Inside the building.
home Falconwing Inn |goto 48.16,47.66 |q 8472 |future
step
Leave the building |goto 47.77,47.31 < 7 |walk
click Wanted: Thaelis the Hungerer##180918
accept Wanted: Thaelis the Hungerer##8468 |goto 48.17,46.31
step
talk Aeldon Sunbrand##15403
accept Unstable Mana Crystals##8463 |goto 48.17,46.00
stickystart "Collect_Unstable_Mana_Crystals"
stickystart "Collect_Arcane_Cores"
step
kill Thaelis the Hungerer##15949
|tip Inside the building.
collect Thaelis's Head##21781 |q 8468/1 |goto 45.02,37.68
step
label "Collect_Unstable_Mana_Crystals"
click Unstable Mana Crystal Crate##180600+
|tip They look like yellow glowing light brown wooden boxes on the ground around this area.
collect 6 Unstable Mana Crystal##20743 |q 8463/1 |goto 45.51,39.96
step
label "Collect_Arcane_Cores"
kill Arcane Patroller##15638+
|tip They look metal robots that walk around this area.
|tip Check for them along the roads all around this area.
collect 6 Arcane Core##21808 |q 8472/1 |goto 46.95,39.95
You can find more around [41.83,39.64]
step
talk Magister Jaronis##15418
turnin Major Malfunction##8472 |goto 47.26,46.31
accept Delivery to the North Sanctum##8895 |goto 47.26,46.31
step
talk Sergeant Kan'ren##16924
turnin Wanted: Thaelis the Hungerer##8468 |goto 47.77,46.58
step
talk Aeldon Sunbrand##15403
turnin Unstable Mana Crystals##8463 |goto 48.17,46.00
accept Darnassian Intrusions##9352 |goto 48.17,46.00
step
Kill enemies around this area
Reach Level 7 |ding 7 |goto 45.78,41.63
step
Follow the path |goto 46.55,48.07 < 20 |only if walking
talk Ley-Keeper Caidanis##15405
turnin Delivery to the North Sanctum##8895 |goto 44.63,53.13
accept Malfunction at the West Sanctum##9119 |goto 44.63,53.13
step
talk Apprentice Ralen##15941
accept Roadside Ambush##9035 |goto 45.19,56.43
step
talk Ley-Keeper Velania##15401
turnin Malfunction at the West Sanctum##9119 |goto 36.70,57.44
accept Arcane Instability##8486 |goto 36.70,57.44
stickystart "Kill_Manawraiths"
stickystart "Kill_Mana_Stalkers"
step
kill Darnassian Scout##15968+
|tip They look like night elves spread out along the small hills around this area, circling the building.
collect Incriminating Documents##20765 |goto 33.72,59.08 |q 8482 |future
Defeat an Intruder |q 9352/1 |goto 33.72,59.08
step
use the Incriminating Documents##20765
accept Incriminating Documents##8482
step
label "Kill_Manawraiths"
kill 5 Manawraith##15648 |q 8486/1 |goto 35.40,57.56
You can find more around [33.51,61.51]
step
label "Kill_Mana_Stalkers"
kill 5 Mana Stalker##15647 |q 8486/2 |goto 35.40,57.56
You can find more around [33.51,61.51]
step
talk Ley-Keeper Velania##15401
turnin Arcane Instability##8486 |goto 36.70,57.44
turnin Darnassian Intrusions##9352 |goto 36.70,57.44
step
Follow the path |goto 32.32,60.73 < 30 |only if walking
talk Hathvelion Sungaze##15920
|tip He walks around this area.
accept Fish Heads, Fish Heads...##8884 |goto 29.89,58.43
stickystart "Collect_Captain_Kelisendras_Lost_Rutters"
step
Kill Grimscale enemies around this area
collect 8 Grimscale Murloc Head##21757 |q 8884/1 |goto 27.14,59.02
You can find more around [25.35,66.74]
step
label "Collect_Captain_Kelisendras_Lost_Rutters"
Kill Grimscale enemies around this area
collect Captain Kelisendra's Lost Rutters##21776 |n
use Captain Kelisendra's Lost Rutters##21776
accept Captain Kelisendra's Lost Rutters##8887 |goto 27.14,59.02 |q 8887 |future
You can find more around [25.35,66.74]
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 27.14,59.02
You can find more around [25.35,66.74]
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin Fish Heads, Fish Heads...##8884 |goto 29.89,58.43
accept The Ring of Mmmrrrggglll##8885 |goto 29.89,58.43
step
talk Captain Kelisendra##15921
turnin Captain Kelisendra's Lost Rutters##8887 |goto 36.36,66.62
accept Grimscale Pirates!##8886 |goto 36.36,66.62
step
talk Velendris Whitemorn##15404
accept Lost Armaments##8480 |goto 36.36,66.77
step
Follow the road |goto 38.20,69.60 < 50 |only if walking
talk Velan Brightoak##15417
accept Pelt Collection##8491 |goto 44.72,69.63
step
talk Magistrix Landra Dawnstrider##16210
accept The Wayward Apprentice##9254 |goto 44.03,70.76
step
talk Marniel Amberlight##15397
|tip Inside the building.
accept Ranger Sareyn##9358 |goto 43.67,71.31
step
talk Marniel Amberlight##15397
|tip Inside the building.
home Fairbreeze Village |goto 43.67,71.31 |q 8490 |future
step
talk Ardeyn Riverwind##16397
|tip Inside the building.
accept The Scorched Grove##9258 |goto 43.57,71.20
step
talk Ranger Degolien##15939
|tip Outside, upstairs on the balcony of the building.
accept Situation at Sunsail Anchorage##8892 |goto 43.34,70.82
step
talk Ranger Sareyn##15942
turnin Ranger Sareyn##9358 |goto 46.93,71.79
accept Defending Fairbreeze Village##9252 |goto 46.93,71.79
step
kill Springpaw Stalker##15651+
collect 6 Springpaw Pelt##20772 |q 8491/1 |goto 45.68,65.78
You can find more around: |notinsticky
[43.02,65.27]
[39.10,65.42]
step
talk Apprentice Meledor##15945
turnin Roadside Ambush##9035 |goto 44.88,61.03
accept Soaked Pages##9062 |goto 44.88,61.03
step
click Soaked Tome##181110
|tip Underwater.
collect Antheol's Elemental Grimoire##22414 |q 9062/1 |goto 44.34,61.99
step
talk Apprentice Meledor##15945
turnin Soaked Pages##9062 |goto 44.88,61.03
accept Taking the Fall##9064 |goto 44.88,61.03
step
Follow the path |goto 46.55,49.08 < 20 |only if walking
talk Aeldon Sunbrand##15403
turnin Incriminating Documents##8482 |goto 48.17,46.00
accept The Dwarven Spy##8483 |goto 48.17,46.00
step
Follow the path |goto 46.55,48.11 < 20 |only if walking
Locate Prospector Anvilward |goto 44.57,53.30 < 7 |c |q 8483
step
talk Prospector Anvilward##15420
Tell him _"I need a moment of your time, sir."_
Begin Following Prospector Anvilward |goto 44.57,53.30 > 10 |q 8483
step
Watch the dialogue
|tip Follow Prospector Anvilward as he walks.
|tip He eventually walks to this location.
kill Prospector Anvilward##15420
|tip Upstairs inside the building.
collect Prospector Anvilward's Head##20764 |q 8483/1 |goto 44.07,53.31
step
Follow the path |goto 46.55,49.21 < 20 |only if walking
talk Aeldon Sunbrand##15403
turnin The Dwarven Spy##8483 |goto 48.17,46.00
step
Follow the path |goto 46.55,48.06 < 20 |only if walking
talk Ranger Jaela##15416
accept The Dead Scar##8475 |goto 50.34,50.77
step
kill 8 Plaguebone Pillager##15654 |q 8475/1 |goto 50.32,55.21
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 50.32,55.21
step
talk Ranger Jaela##15416
turnin The Dead Scar##8475 |goto 50.34,50.77
step
talk Instructor Antheol##15970
turnin Taking the Fall##9064 |goto 55.70,54.51
accept Swift Discipline##9066 |goto 55.70,54.51
stickystart "Kill_Rotlimb_Marauders"
step
Follow the path |goto 51.33,59.36 < 70 |only if walking
talk Apprentice Mirveda##15402
turnin The Wayward Apprentice##9254 |goto 54.28,70.98
accept Corrupted Soil##8487 |goto 54.28,70.98
step
click Tainted Soil Sample##180921+
|tip They look like green glowing piles of dirt on the ground around this area.
collect 8 Tainted Soil Sample##20771 |q 8487/1 |goto 51.48,69.91
step
talk Apprentice Mirveda##15402
turnin Corrupted Soil##8487 |goto 54.28,70.98
step
Watch the dialogue
talk Apprentice Mirveda##15402
accept Unexpected Results##8488 |goto 54.28,70.98
step
Kill the enemies that attack
kill Gharsul the Remorseless##15958
|tip Apprentice Mirveda must stay alive.
Protect Apprentice Mirveda |q 8488/1 |goto 53.88,70.17
step
talk Apprentice Mirveda##15402
turnin Unexpected Results##8488 |goto 54.28,70.98
accept Research Notes##9255 |goto 54.28,70.98
step
label "Kill_Rotlimb_Marauders"
kill 4 Rotlimb Marauder##15658 |q 9252/1 |goto 51.48,69.91
step
kill 4 Darkwraith##15657 |q 9252/2 |goto 50.91,78.76
step
Follow the road |goto 48.01,75.07 < 70 |only if walking
talk Ranger Sareyn##15942
turnin Defending Fairbreeze Village##9252 |goto 46.93,71.79
accept Runewarden Deryan##9253 |goto 46.93,71.79
step
talk Velan Brightoak##15417
turnin Pelt Collection##8491 |goto 44.72,69.63
step
talk Magistrix Landra Dawnstrider##16210
turnin Research Notes##9255 |goto 44.03,70.76
accept Saltheril's Haven##9395 |goto 44.03,70.76
step
Enter the building |goto 38.23,73.21 < 7 |walk
talk Lord Saltheril##16144
|tip Inside the building.
turnin Saltheril's Haven##9395 |goto 38.14,73.56
accept The Party Never Ends##9067 |goto 38.14,73.56
stickystart "Kill_Wretched_Thugs"
stickystart "Kill_Wretched_Hooligans"
step
click Weapon Container##181107+
|tip They look like wooden crates on the ground around this area.
|tip They can also be inside the large building nearby.
collect 8 Sin'dorei Armaments##22413 |q 8480/1 |goto 32.79,70.50
step
label "Kill_Wretched_Thugs"
kill 5 Wretched Thug##15645 |q 8892/1 |goto 32.79,70.50
step
label "Kill_Wretched_Hooligans"
kill 5 Wretched Hooligan##16162 |q 8892/2 |goto 32.79,70.50
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 32.79,70.50
stickystart "Collect_Captain_Kelisendras_Cargo"
step
kill Mmmrrrggglll##15937
|tip He looks like a larger orange murloc that walks along the beach around this area.
collect Ring of Mmmrrrggglll##21770 |q 8885/1 |goto 24.54,72.30
step
label "Collect_Captain_Kelisendras_Cargo"
Kill Grimscale enemies around this area
click Captain Kelisendra's Cargo##180917+
|tip They look like wooden barrels on the ground next to murloc huts around this area.
collect 6 Captain Kelisendra's Cargo##21771 |q 8886/1 |goto 24.79,69.28
step
talk Hathvelion Sungaze##15920
|tip He walks around this area.
turnin The Ring of Mmmrrrggglll##8885 |goto 29.89,58.43
step
talk Captain Kelisendra##15921
turnin Grimscale Pirates!##8886 |goto 36.36,66.62
step
talk Velendris Whitemorn##15404
turnin Lost Armaments##8480 |goto 36.36,66.77
accept Wretched Ringleader##9076 |goto 36.36,66.77
step
Run up the ramp |goto 32.82,71.13 < 15 |only if walking
Run up the ramp |goto 32.61,68.47 < 7 |only if walking
kill Aldaron the Reckless##16294
|tip He walks around this area.
|tip At the top of the building.
collect Aldaron's Head##22487 |q 9076/1 |goto 32.80,69.40
step
talk Velendris Whitemorn##15404
turnin Wretched Ringleader##9076 |goto 36.36,66.77
step
talk Halis Dawnstrider##16444
buy Bundle of Fireworks##22777 |q 9067/3 |goto 44.04,70.35
step
talk Magistrix Landra Dawnstrider##16210
accept Missing in the Ghostlands##9144 |goto 44.03,70.76
step
talk Ranger Degolien##15939
|tip Upstairs on the balcony of the building.
turnin Situation at Sunsail Anchorage##8892 |goto 43.34,70.82
accept Farstrider Retreat##9359 |goto 43.34,70.82
step
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Meledor.
Discipline Apprentice Meledor |q 9066/1 |goto 44.88,61.03
step
use Antheol's Disciplinary Rod##22473
|tip Use it on Apprentice Ralen.
Discipline Apprentice Ralen |q 9066/2 |goto 45.19,56.43
step
talk Instructor Antheol##15970
turnin Swift Discipline##9066 |goto 55.70,54.51
step
Enter the building |goto Silvermoon City/0 75.65,44.91 < 7 |walk
talk Talionia##16647
|tip Downstairs inside the building.
accept The Stone##9529 |goto Silvermoon City/0 74.39,47.15
|only if BloodElf Warlock
step
Follow the path up |goto Eversong Woods/0 57.49,54.87 < 30 |only if walking
talk Zalene Firstlight##16443
|tip Inside the building.
buy Springpaw Appetizers##22776 |q 9067/2 |goto Eversong Woods/0 60.41,62.46
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Farstrider Retreat##9359 |goto 60.32,62.77
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
accept Taming the Beast##9484 |goto 60.32,62.77
|only if BloodElf Hunter
step
use the Taming Rod##23697
|tip Use it on a Crazed Dragonhawk around this area.
Tame a Crazed Dragonhawk |q 9484/1 |goto 61.35,59.02
You can find more around [64.15,61.79]
|only if BloodElf Hunter
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Taming the Beast##9484 |goto 60.32,62.77
accept Taming the Beast##9486 |goto 60.32,62.77
|only if BloodElf Hunter
step
Follow the path up |goto 60.59,65.10 < 30 |only if walking
use the Taming Rod##23702
|tip Use it on an Elder Springpaw around this area.
Tame an Elder Springpaw |q 9486/1 |goto 63.57,64.02
|only if BloodElf Hunter
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Taming the Beast##9486 |goto 60.32,62.77
accept Taming the Beast##9485 |goto 60.32,62.77
|only if BloodElf Hunter
step
Follow the path |goto Eversong Woods/0 54.67,74.80 < 50 |only if walking
talk Courier Dawnstrider##16183
turnin Missing in the Ghostlands##9144 |goto 48.98,88.99
step
talk Apothecary Thedra##16196
accept The Fallen Courier##9147 |goto 49.02,89.05
stickystart "Collect_Plagued_Blood_Samples"
step
use the Taming Rod##23703
|tip Use it on a Mistbat around this area.
Tame a Mistbat |q 9485/1 |goto Ghostlands/0 49.61,95.30
|only if BloodElf Hunter
step
label "Collect_Plagued_Blood_Samples"
Kill enemies around this area
collect 4 Plagued Blood Sample##22570 |q 9147/1 |goto Ghostlands/0 49.17,95.33
You can find more around [Ghostlands/0 44.96,18.40]
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 49.17,95.33
You can find more around [44.96,18.40]
step
click Voidstone
turnin The Stone##9529 |goto Ghostlands/0 43.66,15.98
accept The Rune of Summoning##9619 |goto Ghostlands/0 43.66,15.98
|only if BloodElf Warlock
step
Follow the shore along the river |goto Eversong Woods/0 44.26,91.08 < 30 |only if walking
Follow the path down |goto Ghostlands/0 29.35,7.87 < 20 |only if walking
Run up the ramp |goto Ghostlands/0 27.49,15.77 < 7 |walk
use the Voidstone##23732
|tip Use it near the pink symbol on the ground.
|tip All way at the top of the building.
|tip Inside the building.
kill Summoned Voidwalker##5676 |q 9619/1 |goto Ghostlands/0 27.00,15.25
|only if BloodElf Warlock
step
Follow the path |goto 24.97,6.55 < 30 |c |q 9147
|only if BloodElf Warlock
step
talk Apothecary Thedra##16196
turnin The Fallen Courier##9147 |goto Eversong Woods/0 49.02,89.05
step
Follow the path |goto 54.59,74.58 < 50 |only if walking
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
accept The Magister's Apprentice##8888 |goto 60.32,61.38
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Taming the Beast##9485 |goto 60.32,62.77
accept Beast Training##9673 |goto 60.32,62.77
|only if BloodElf Hunter
step
Enter the building |goto Silvermoon City/0 78.21,59.29 < 7 |walk
talk Vinemaster Suntouched##16442
|tip Inside the building.
buy Suntouched Special Reserve##22775 |q 9067/1 |goto Silvermoon City/0 79.51,58.52
step
Leave the building |goto Silvermoon City/0 81.91,58.34 < 7 |walk
Enter the building |goto Silvermoon City/0 83.43,30.23 < 7 |walk
talk Halthenis##16675
|tip Inside the building.
turnin Beast Training##9673 |goto Silvermoon City/0 82.18,28.13
|only if BloodElf Hunter
step
Enter the building |goto Silvermoon City/0 75.65,44.91 < 7 |walk
talk Talionia##16647
|tip Downstairs inside the building.
turnin The Rune of Summoning##9619 |goto Silvermoon City/0 74.39,47.15
|only if BloodElf Warlock
step
Follow the road |goto Eversong Woods/0 61.10,57.75 < 30 |only if walking
talk Apprentice Loralthalis##15924
|tip She walks around this area.
turnin The Magister's Apprentice##8888 |goto Eversong Woods/0 67.81,56.51
accept Deactivating the Spire##8889 |goto Eversong Woods/0 67.81,56.51
accept Where's Wyllithen?##9394 |goto Eversong Woods/0 67.81,56.51
step
click Orb of Translocation##184500 |goto 68.92,51.97
|tip At the top of the stairs.
Teleport Up to the Building |goto 67.49,52.11 < 7 |noway |c |q 8889
step
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the First Power Source |q 8889/1 |goto 68.95,51.93
step
click Duskwither Spire Power Source##180920
|tip Upstairs inside the floating building.
Deactivate the Second Power Source |q 8889/2 |goto 68.96,51.97
step
click Magister Duskwither's Journal##181011
|tip Upstairs inside the floating building.
accept Abandoned Investigations##8891 |goto 69.24,52.10
step
click Duskwither Spire Power Source##180920
|tip On the floating platform.
Deactivate the Third Power Source |q 8889/3 |goto 69.65,53.33
step
click Orb of Translocation##184500 |goto 69.62,53.42
|tip On the floating platform.
Teleport to the Ground |goto 68.89,52.00 < 7 |noway |c |q 8889
step
talk Groundskeeper Wyllithen##15969
turnin Where's Wyllithen?##9394 |goto 68.71,46.95
accept Cleaning up the Grounds##8894 |goto 68.71,46.95
stickystart "Kill_Ether_Fiends"
step
kill 6 Mana Serpent##15966 |q 8894/1 |goto 69.17,47.84
step
label "Kill_Ether_Fiends"
kill 6 Ether Fiend##15967 |q 8894/2 |goto 69.17,47.84
step
talk Groundskeeper Wyllithen##15969
turnin Cleaning up the Grounds##8894 |goto 68.71,46.95
step
talk Apprentice Loralthalis##15924
|tip She walks around this area.
turnin Deactivating the Spire##8889 |goto 67.81,56.51
accept Word from the Spire##8890 |goto 67.81,56.51
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
accept Amani Encroachment##8476 |goto 60.32,62.77
step
talk Arathel Sunforge##15400
|tip On the balcony of the building.
accept The Spearcrafter's Hammer##8477 |goto 59.52,62.60
step
talk Magister Duskwither##15951
|tip Upstairs on the balcony of the building.
turnin Word from the Spire##8890 |goto 60.32,61.38
turnin Abandoned Investigations##8891 |goto 60.32,61.38
stickystart "Kill_Amani_Berserkers"
stickystart "Kill_Amani_Axe_Throwers"
step
Follow the path up |goto 60.68,65.16 < 30 |only if walking
kill Spearcrafter Otembe##15408
collect Otembe's Hammer##20759 |q 8477/1 |goto 70.10,72.28
step
talk Ven'jashi##15406
accept Zul'Marosh##8479 |goto 70.50,72.33
step
Kill enemies around this area
Reach Level 12 |ding 12 |goto 69.48,74.13
step
kill Chieftain Zul'Marosh##15407
|tip Upstairs on top of the building.
collect Chieftain Zul'Marosh's Head##20760 |q 8479/1 |goto 62.51,79.68
collect Amani Invasion Plans##23249 |goto 62.51,79.68 |q 9360 |future
step
use the Amani Invasion Plans##23249
accept Amani Invasion##9360
step
talk Ven'jashi##15406
turnin Zul'Marosh##8479 |goto 70.50,72.33
step
label "Kill_Amani_Berserkers"
kill 5 Amani Berserker##15643 |q 8476/1 |goto 69.48,74.13
step
label "Kill_Amani_Axe_Throwers"
kill 5 Amani Axe Thrower##15641 |q 8476/2 |goto 69.48,74.13
step
talk Lieutenant Dawnrunner##15399
|tip Inside the building.
turnin Amani Encroachment##8476 |goto 60.32,62.77
turnin Amani Invasion##9360 |goto 60.32,62.77
accept Warning Fairbreeze Village##9363 |goto 60.32,62.77
step
talk Arathel Sunforge##15400
|tip On the balcony of the building.
turnin The Spearcrafter's Hammer##8477 |goto 59.52,62.60
step
Enter the building |goto Silvermoon City/0 88.79,37.54 < 10 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
accept The First Trial##9678 |goto Silvermoon City/0 89.26,35.20
|only if BloodElf Paladin
step
talk Ranger Degolien##15939
|tip Upstairs on the balcony of the building.
turnin Warning Fairbreeze Village##9363 |goto Eversong Woods/0 43.34,70.82
step
Enter the building |goto 38.23,73.21 < 7 |walk
talk Lord Saltheril##16144
|tip Inside the building.
turnin The Party Never Ends##9067 |goto 38.14,73.56
step
Follow the path |goto 34.79,74.07 < 50 |only if walking
Enter the building |goto 33.87,80.03 < 7 |walk
talk Larianna Riverwind##15398
|tip Inside the building.
turnin The Scorched Grove##9258 |goto 34.06,80.02
accept A Somber Task##8473 |goto 34.06,80.02
stickystart "Kill_Withered_Green_Keepers"
step
kill Old Whitebark##15409
|tip He looks like a slightly larger tree that walks around this area.
collect Old Whitebark's Pendant##23228 |n
use Old Whitebark's Pendant##23228
accept Old Whitebark's Pendant##8474 |goto 35.08,84.12
step
label "Kill_Withered_Green_Keepers"
kill 10 Withered Green Keeper##15637 |q 8473/1 |goto 35.28,85.58
step
Enter the building |goto 33.87,80.03 < 7 |walk
talk Larianna Riverwind##15398
|tip Inside the building.
turnin A Somber Task##8473 |goto 34.06,80.02
turnin Old Whitebark's Pendant##8474 |goto 34.06,80.02
accept Whitebark's Memory##10166 |goto 34.06,80.02
step
use Old Whitebark's Pendant##28209
kill Whitebark's Spirit##19456
|tip He will eventually surrender and become friendly.
talk Whitebark's Spirit##19456
turnin Whitebark's Memory##10166 |goto 37.53,86.22
step
talk Runewarden Deryan##16362
turnin Runewarden Deryan##9253 |goto 44.19,85.47
accept Powering our Defenses##8490 |goto 44.19,85.47
step
use the Infused Crystal##22693
Kill the enemies that attack in waves
|tip Protect the Infused Crystal.
|tip It appears on the ground next to you.
|tip This will take 1 minute.
Energize the Runestone |q 8490/1 |goto 55.19,84.23
step
Enter the cave |goto Ghostlands/0 68.51,8.74 < 10 |walk
click Gilded Brazier
|tip Inside the cave.
kill Sangrias Stillblade##17716
Undergo the First Trial |q 9678/1 |goto Ghostlands/0 68.42,7.51
|only if BloodElf Paladin
step
talk Runewarden Deryan##16362
turnin Powering our Defenses##8490 |goto Eversong Woods/0 44.19,85.47
step
Kill enemies around this area
Reach Level 13 |ding 13 |goto 35.28,85.58
step
Enter the building |goto Silvermoon City/0 88.79,37.54 < 10 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
turnin The First Trial##9678 |goto Silvermoon City/0 89.26,35.20
accept A Study in Power##9681 |goto Silvermoon City/0 89.26,35.20 |or
accept A Study in Power##64319 |goto Silvermoon City/0 89.26,35.20 |or
|only if BloodElf Paladin
step
Jump down the hole inside the building |goto 92.40,37.00 < 7 |walk
talk Magister Astalor Bloodsworn##17718
|tip Downstairs inside the building.
turnin A Study in Power##9681 |goto 92.06,36.24 |only if havequest(9681) or completedq(9681)
turnin A Study in Power##64319 |goto 92.06,36.24 |only if havequest(64319) or completedq(64319)
accept Claiming the Light##9684 |goto 92.06,36.24 |or
accept Claiming the Light##63866 |goto 92.06,36.24 |or
|only if BloodElf Paladin
step
use the Shimmering Vessel##24157 |only if havequest(9684) or completedq(9684)
use the Shimmering Vessel##185956 |only if havequest(63866) or completedq(63866)
|tip Downstairs inside the building.
collect Filled Shimmering Vessel##24156 |q 9684/1 |goto 92.64,37.54 |only if havequest(9684) or completedq(9684)
collect Filled Shimmering Vessel##24156 |q 63866/1 |goto 92.64,37.54 |only if havequest(63866) or completedq(63866)
|only if BloodElf Paladin
step
Run up the stairs |goto 87.31,36.62 < 10 |walk
Run up the ramp |goto 87.47,30.68 < 7 |c |q 9684 |only if havequest(9684) or completedq(9684)
Run up the ramp |goto 87.47,30.68 < 7 |c |q 63866 |only if havequest(63866) or completedq(63866)
|only if BloodElf Paladin
step
Leave the building |goto 86.55,31.80 < 7 |walk
Enter the building |goto 88.78,37.56 < 10 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
turnin Claiming the Light##9684 |goto 89.26,35.20 |only if havequest(9684) or completedq(9684)
turnin Claiming the Light##63866 |goto 89.26,35.20 |only if havequest(63866) or completedq(63866)
accept Redeeming the Dead##9685 |goto 89.26,35.20
|only if BloodElf Paladin
step
Enter the building |goto 81.89,58.32 < 7 |walk
Run up the ramp |goto 79.51,56.30 < 7 |walk
use the Filled Shimmering Vessel##24184
|tip Use it one the Blood Knight Stillblade.
|tip Upstairs inside the building.
Resurrect Sangrias Stillblade |q 9685/1 |goto 80.12,60.30
|only if BloodElf Paladin
step
Leave the building |goto 81.88,58.30 < 7 |walk
Enter the building |goto 88.78,37.56 < 10 |walk
talk Knight-Lord Bloodvalor##17717
|tip Inside the building.
turnin Redeeming the Dead##9685 |goto 89.26,35.20
|only if BloodElf Paladin
step
Run up the ramp |goto Silvermoon City/0 63.63,32.22 < 15 |only if walking
Enter the building |goto Silvermoon City/0 57.55,24.57 < 7 |walk
Follow the path |goto Undercity/0 66.21,5.15 < 10 |only if walking
Follow the road |goto Durotar/0 47.48,23.53 < 30 |only if walking
Continue following the road |goto Durotar/0 52.28,39.91 < 30 |only if walking
talk Takrin Pathseeker##3336
accept Conscript of the Horde##840 |goto Durotar/0 50.84,43.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\The Barrens (12-15)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\The Barrens",
condition_suggested=function() return level >= 12 and level <= 15 and not completedq(855) end,
next="Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (15-16)",
},[[
step
talk Kargal Battlescar##3337
turnin Conscript of the Horde##840 |goto The Barrens 62.26,19.38
accept Crossroads Conscription##842 |goto The Barrens 62.26,19.38
step
talk Ak'Zeloth##3521
turnin Ak'Zeloth##809 |goto 62.34,20.07
|only if Orc or Troll
step
Follow the road |goto 54.41,22.57 < 50 |c |q 844 |future
step
talk Zargh##3489
accept Meats to Orgrimmar##6365 |goto 52.62,29.84
|only if Orc or Troll
step
talk Sergra Darkthorn##3338
turnin Crossroads Conscription##842 |goto 52.24,31.01
accept Plainstrider Menace##844 |goto 52.24,31.01
step
talk Tonga Runetotem##3448
accept The Forgotten Pools##870 |goto 52.26,31.93
step
talk Gazrog##3464
accept Raptor Thieves##869 |goto 51.93,30.32
step
talk Thork##3429
accept Disrupt the Attacks##871 |goto 51.50,30.87
accept Supplies for the Crossroads##5041 |goto 51.50,30.87
step
talk Darsok Swiftdagger##3449
|tip At the top of the tower.
accept Harpy Raiders##867 |goto 51.62,30.89
step
talk Devrak##3615
fpath Crossroads |goto 51.50,30.34
step
talk Devrak##3615
turnin Meats to Orgrimmar##6365 |goto 51.50,30.34
accept Ride to Orgrimmar##6384 |goto 51.50,30.34
|only if Orc or Troll
step
talk Apothecary Helbrim##3390
accept Wharfmaster Dizzywig##1492 |goto 51.44,30.15
accept Fungal Spores##848 |goto 51.44,30.15
step
Enter the building |goto Orgrimmar 54.02,68.86 < 7 |walk
talk Innkeeper Gryshka##6929
|tip Inside the building.
turnin Ride to Orgrimmar##6384 |goto Orgrimmar 54.09,68.41
accept Doras the Wind Rider Master##6385 |goto Orgrimmar 54.09,68.41
|only if Orc or Troll
step
Enter the building |goto 47.45,65.08 < 7 |walk
talk Doras##3310
|tip At the top of the tower.
turnin Doras the Wind Rider Master##6385 |goto 45.12,63.89
accept Return to the Crossroads.##6386 |goto 45.12,63.89
|only if Orc or Troll
step
talk Zargh##3489
turnin Return to the Crossroads.##6386 |goto The Barrens 52.62,29.84
|only if Orc or Troll
stickystart "Collect_Raptor_Heads"
step
Kill Plainstrider enemies around this area
collect 7 Plainstrider Beak##5087 |q 844/1 |goto The Barrens 53.39,28.28
You can find more: |notinsticky
Around [53.31,32.92]
Around [51.13,32.58]
Around [49.21,29.26]
Around [51.70,27.37]
On top of the mountain up the path that starts at [50.30,35.38]
step
Kill enemies around this area
Reach Level 13 |ding 13 |goto The Barrens 53.39,28.28
You can find more: |notinsticky
Around [53.31,32.92]
Around [51.13,32.58]
Around [49.21,29.26]
Around [51.70,27.37]
stickystart "Kill_Razormane_Water_Seekers"
stickystart "Kill_Razormane_Thornweavers"
stickystart "Kill_Razormane_Hunters"
step
Follow the path |goto 54.33,27.01 < 50 |only if walking
click Chen's Empty Keg
collect Chen's Empty Keg##4926 |goto 55.70,27.29 |q 819 |future
step
use Chen's Empty Keg##4926
accept Chen's Empty Keg##819
step
label "Kill_Razormane_Water_Seekers"
kill 8 Razormane Water Seeker##3267 |q 871/1 |goto 55.57,26.71
You can find more around [54.26,25.66]
step
label "Kill_Razormane_Thornweavers"
kill 8 Razormane Thornweaver##3268 |q 871/2 |goto 55.57,26.71
You can find more around [54.26,25.66]
step
label "Kill_Razormane_Hunters"
kill 3 Razormane Hunter##3265 |q 871/3 |goto 55.57,26.71
|tip They walk with wolf pets around this area.
You can find more around [54.26,25.66]
step
talk Sergra Darkthorn##3338
turnin Plainstrider Menace##844 |goto 52.24,31.01
accept The Zhevra##845 |goto 52.24,31.01
step
talk Thork##3429
turnin Disrupt the Attacks##871 |goto 51.50,30.87
accept The Disruption Ends##872 |goto 51.50,30.87
step
kill Zhevra Runner##3242+
collect 4 Zhevra Hooves##5086 |q 845/1 |goto 53.84,34.19
You can find more around: |notinsticky
[50.68,38.06]
[48.88,36.65]
[53.55,37.80]
[56.23,33.97]
step
talk Sergra Darkthorn##3338
turnin The Zhevra##845 |goto 52.23,31.01
accept Prowlers of the Barrens##903 |goto 52.23,31.01
step
Enter the building |goto 52.03,30.16 < 7 |walk
talk Innkeeper Boorand Plainswind##3934
|tip Inside the building.
home The Crossroads |goto 51.99,29.90
stickystart "Kill_Razormane_Geomancers"
stickystart "Kill_Razormane_Defenders"
step
Leave the building |goto 52.03,30.16 < 7 |walk
Follow the path |goto 55.85,24.41 < 60 |only if walking
click Crossroads' Supply Crates
|tip They look like piles of small brown boxes on the ground or inside huts around this area.
collect Crossroads' Supply Crates##12708 |q 5041/1 |goto 59.41,24.75
stickystop "Collect_Raptor_Heads"
step
label "Kill_Razormane_Geomancers"
kill 8 Razormane Geomancer##3269 |q 872/1 |goto 58.99,24.66
You can find more around [57.20,24.98]
step
label "Kill_Razormane_Defenders"
kill 8 Razormane Defender##3266 |q 872/2 |goto 58.99,24.66
You can find more around [57.20,24.98]
step
kill Kreenig Snarlsnout##3438
|tip He walks around this area.
collect Kreenig Snarlsnout's Tusk##5063 |q 872/3 |goto 58.53,27.04
step
Jump down here |goto 60.89,27.57 < 20 |only if walking
Follow the path |goto 64.57,34.44 < 50 |only if walking
Enter the building |goto 62.89,36.52 < 7 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
accept Southsea Freebooters##887 |goto 62.68,36.23
step
talk Bragok##16227
fpath Ratchet |goto 63.09,37.16
step
talk Sputtervalve##3442
accept Samophlange##894 |goto 62.98,37.22
step
talk Wharfmaster Dizzywig##3453
turnin Wharfmaster Dizzywig##1492 |goto 63.35,38.45
accept Miner's Fortune##896 |goto 63.35,38.45
step
click WANTED
accept WANTED: Baron Longshore##895 |goto 62.59,37.47
step
talk Mebok Mizzyrix##3446
accept Raptor Horns##865 |goto 62.37,37.62
step
talk Brewmaster Drohn##3292
turnin Chen's Empty Keg##819 |goto 62.26,38.39
accept Chen's Empty Keg##821 |goto 62.26,38.39
step
talk Captain Thalo'thas Brightsun##3339
accept The Guns of Northwatch##891 |goto 62.29,39.03
stickystart "Kill_Southsea_Brigands"
stickystart "Kill_Southsea_Cannoneers"
step
Follow the path |goto 62.73,39.77 < 20 |only if walking
kill Baron Longshore##3467
|tip He walks around this area.
|tip He can spawn in 3 different camps around this area.
|tip If you have trouble, try to kite him away from the group, so you can fight him alone.
collect Baron Longshore's Head##5084 |q 895/1 |goto 64.22,47.13
He can also be around: |notinsticky
[63.64,49.18]
[62.66,49.73]
step
label "Kill_Southsea_Brigands"
kill 12 Southsea Brigand##3381 |q 887/1 |goto 63.79,45.59
You can find more around [63.67,49.07]
step
label "Kill_Southsea_Cannoneers"
kill 6 Southsea Cannoneer##3382 |q 887/2 |goto 63.79,45.59
You can find more around [63.67,49.07]
step
Follow the path |goto 63.21,42.66 < 20 |only if walking
Enter the building |goto 62.89,36.52 < 7 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Southsea Freebooters##887 |goto 62.68,36.23
accept The Missing Shipment##890 |goto 62.68,36.23
turnin WANTED: Baron Longshore##895 |goto 62.68,36.23
step
talk Wharfmaster Dizzywig##3453
turnin The Missing Shipment##890 |goto 63.35,38.45
accept The Missing Shipment##892 |goto 63.35,38.45
step
Enter the building |goto 62.89,36.52 < 7 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin The Missing Shipment##892 |goto 62.68,36.23
accept Stolen Booty##888 |goto 62.68,36.23
step
talk Auctioneer Stampi##8674
collect 5 Earthroot##2449 |goto Thunder Bluff 40.40,51.77 |q 6128 |future
|tip Buy them from the Auction House.
|only if Druid
step
Enter the building |goto 74.17,29.89 < 15 |walk
talk Turak Runetotem##3033
|tip Inside the building.
accept Lessons Anew##6126 |goto 76.47,27.23
|only if Druid
step
Enter the building |goto Moonglade 56.13,30.98 < 15 |walk
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Lessons Anew##6126 |goto Moonglade 56.21,30.64
accept The Principal Source##6127 |goto Moonglade 56.21,30.64
|only if Druid
step
Follow the path up |goto The Barrens 51.08,22.66 < 15 |only if walking
Follow the path |goto The Barrens 49.16,20.33 < 15 |only if walking
Follow the path up |goto The Barrens 48.00,19.56 < 10 |only if walking
use the Empty Dreadmist Peak Sampler##15842
|tip Use it while standing in the bubbling water at the top of the mountain.
collect Filled Dreadmist Peak Sampler##15843 |q 6127/1 |goto The Barrens 48.41,18.89
|only if Druid
step
Follow the path down |goto 49.22,20.39 < 20 |only if walking
Follow the path |goto 52.34,29.37 < 20 |only if walking
talk Tonga Runetotem##3448
turnin The Principal Source##6127 |goto 52.26,31.93
accept Gathering the Cure##6128 |goto 52.26,31.93
|only if Druid
step
Follow the path |goto 50.09,40.90 < 30 |only if walking
kill Lost Barrens Kodo##3234+
collect 5 Kodo Horn##15852 |q 6128/2 |goto 51.93,43.65
You can find more around: |notinsticky
[52.71,45.41]
[55.16,45.59]
[47.25,43.31]
[45.77,43.28]
[44.82,40.80]
|only if Druid
step
talk Tonga Runetotem##3448
turnin Gathering the Cure##6128 |goto 52.26,31.93
accept Curing the Sick##6129 |goto 52.26,31.93
|only if Druid
step
use the Curative Animal Salve##15826
|tip Use it on Sickly Gazelles around this area.
|tip They look like green gazelles all around the northern area of the Barrens.
Cure #10# Sickly Gazelles |q 6129/1 |goto 50.17,31.12
You can find more around: |notinsticky
[48.77,29.54]
[48.33,26.15]
[48.84,23.88]
[49.99,23.09]
[51.79,20.51]
[53.44,20.86]
[54.29,21.65]
[54.98,21.95]
[53.52,26.92]
|only if Druid
step
Enter the building |goto Moonglade 56.13,30.98 < 15 |walk
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Curing the Sick##6129 |goto Moonglade 56.21,30.64
accept Power over Poison##6130 |goto Moonglade 56.21,30.64
|only if Druid
step
Enter the building |goto Thunder Bluff 74.17,29.89 < 15 |walk
talk Turak Runetotem##3033
|tip Inside the building.
turnin Power over Poison##6130 |goto Thunder Bluff 76.47,27.23
|only if Druid
step
Follow the path |goto The Barrens 62.07,38.77 < 15 |only if walking
Continue following the path |goto The Barrens 62.73,39.77 < 20 |only if walking
click Fragile - Do NOT Drop
collect Telescopic Lens##5077 |q 888/2 |goto The Barrens 63.58,49.24
step
click Drizzlik's Emporium
collect Shipment of Boots##5076 |q 888/1 |goto 62.63,49.64
step
talk Thork##3429
turnin Supplies for the Crossroads##5041 |goto 51.50,30.87
turnin The Disruption Ends##872 |goto 51.50,30.87
step
talk Mankrik##3432
accept Consumed by Hatred##899 |goto 51.95,31.58
accept Lost in Battle##4921 |goto 51.95,31.58
stickystart "Collect_Raptor_Heads"
stickystart "Collect_Plainstrider_Kidneys"
step
Kill Savannah enemies around this area
|tip They look like lions.
collect 5 Savannah Lion Tusk##4893 |q 821/1 |goto 54.80,30.23
You can find more around: |notinsticky
[53.49,27.21]
[51.68,26.25]
step
label "Collect_Plainstrider_Kidneys"
kill Greater Plainstrider##3244+
collect 5 Plainstrider Kidney##4894 |q 821/2 |goto 53.39,28.28
You can find more: |notinsticky
Around [53.31,32.92]
Around [51.13,32.58]
Around [49.21,29.26]
Around [51.70,27.37]
On top of the mountain up the path that starts at [50.30,35.38]
step
talk Regthar Deathgate##3389
|tip Upstairs inside the building.
accept Centaur Bracers##855 |goto 45.34,28.41
accept Kolkar Leaders##850 |goto 45.34,28.41
stickystart "Collect_Fungal_Spores"
stickystart "Collect_Centaur_Bracers"
step
Explore the Waters of the Forgotten Pools |q 870/1 |goto 45.07,22.53
|tip Underwater.
step
label "Collect_Fungal_Spores"
click Laden Mushroom+
|tip They look like large blue mushrooms on the ground around this area.
|tip They can spawn in multiple locations around this pond.
collect 4 Fungal Spores##5012 |q 848/1 |goto 45.19,21.98
step
kill Barak Kodobane##3394
|tip He walks around this area.
collect Barak's Head##5022 |q 850/1 |goto 42.72,23.61
step
label "Collect_Centaur_Bracers"
Kill Kolkar enemies around this area
collect 15 Centaur Bracers##5030 |q 855/1 |goto 42.15,24.84
You can find more around: |notinsticky
[42.26,26.72]
[43.52,26.12]
[45.72,25.59]
[44.37,23.07]
step
Kill enemies around this area
Reach Level 15 |ding 15 |goto 42.15,24.84
You can find more around: |notinsticky
[42.26,26.72]
[43.52,26.12]
[45.72,25.59]
[44.37,23.07]
step
Kill Witchwing enemies around this area
collect 8 Witchwing Talon##5064 |q 867/1 |goto 40.60,17.44
step
kill Savannah Prowler##3425+
collect 7 Prowler Claws##5096 |q 903/1 |goto 40.80,20.78
You can find more around: |notinsticky
[40.68,22.70]
[41.43,23.76]
[40.98,26.93]
[41.45,28.57]
[42.74,33.64]
step
talk Regthar Deathgate##3389
|tip Upstairs inside the building.
turnin Centaur Bracers##855 |goto 45.34,28.41
turnin Kolkar Leaders##850 |goto 45.34,28.41
accept Verog the Dervish##851 |goto 45.34,28.41
step
talk Kiknikle##3683
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 41.79,38.69 |q 1062 |future
step
label "Collect_Raptor_Heads"
Kill Sunscale enemies around this area
|tip They look like purple raptors all around the Barrens.
|tip Just kill them as you see them.
collect 12 Raptor Head##5062 |q 869/1 |goto 53.04,33.69
|sticky only
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (15-16)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stonetalon Mountains",
condition_suggested=function() return level >= 15 and level <= 16 and not completedq(6523) end,
next="Leveling Guides\\Classic (12-58)\\The Barrens (16-20)",
},[[
step
Follow the path |goto The Barrens 42.44,33.81 < 50 |only if walking
Follow the road |goto The Barrens 39.43,29.70 < 30 |only if walking
talk Seereth Stonebreak##4049
accept Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
talk Makaba Flathoof##11857
accept Avenge My Village##6548 |goto 35.19,27.79
stickystart "Kill_Grimtotem_Ruffians"
step
Follow the path |goto Stonetalon Mountains 82.09,96.48 < 20 |only if walking
Continue following the path |goto Stonetalon Mountains 80.58,93.45 < 20 |only if walking
kill 8 Grimtotem Ruffian##11910 |q 6548/1 |goto Stonetalon Mountains 82.02,88.63
step
label "Kill_Grimtotem_Ruffians"
kill 6 Grimtotem Mercenary##11911 |q 6548/2 |goto 82.02,88.63
step
Follow the path |goto 80.52,93.47 < 20 |only if walking
talk Makaba Flathoof##11857
turnin Avenge My Village##6548 |goto The Barrens 35.19,27.79
accept Kill Grundig Darkcloud##6629 |goto The Barrens 35.19,27.79
stickystart "Kill_Grimtotem_Brutes"
step
Follow the path |goto Stonetalon Mountains 82.09,96.48 < 20 |only if walking
Follow the path up |goto Stonetalon Mountains 75.89,91.45 < 20 |only if walking
Follow the path |goto Stonetalon Mountains 71.50,88.59 < 15 |only if walking
kill Grundig Darkcloud##11858 |q 6629/1 |goto Stonetalon Mountains 73.65,86.13
step
label "Kill_Grimtotem_Brutes"
kill 6 Grimtotem Brute##11912 |q 6629/2 |goto 73.65,86.60
You can find more around [71.76,86.49]
step
Kill enemies around this area
|tip You are about to have to do an escort quest that can be difficult.
|tip It will help to a level higher.
Reach Level 16 |ding 16 |goto 82.02,88.63
step
Enter the building |goto 73.64,86.09 < 7 |walk
talk Kaya Flathoof##11856
|tip Inside the building.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
accept Protect Kaya##6523 |goto 73.48,85.59 |noautoaccept
step
Watch the dialogue
|tip Follow Kaya Flathoof and protect her as she walks.
|tip She eventually walks to this location.
|tip You will be attacked by a group of 3 enemies near the end of the escort.
|tip Kill the Grimtotem Sorcerer first, when the group of enemies appears.
Escort Kaya to Camp Aparaje |q 6523/1 |goto 77.10,90.84
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
Follow the path up |goto 79.82,90.44 < 20 |only if walking
Follow the path |goto 80.77,95.31 < 20 |only if walking
talk Makaba Flathoof##11857
turnin Kill Grundig Darkcloud##6629 |goto The Barrens 35.19,27.79
turnin Protect Kaya##6523 |goto The Barrens 35.19,27.79
accept Kaya's Alive##6401 |goto The Barrens 35.19,27.79
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\The Barrens (16-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\The Barrens",
condition_suggested=function() return level >= 16 and level <= 20 and not completedq(852) end,
next="Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (20-21)",
},[[
step
Follow the road |goto The Barrens 38.42,28.96 < 30 |only if walking
Continue following the road |goto The Barrens 43.46,30.63 < 30 |only if walking
Continue following the road |goto The Barrens 47.95,28.00 < 30 |only if walking
Follow the path |goto The Barrens 50.82,29.06 < 15 |only if walking
Enter the building |goto Thunder Bluff 74.15,29.89 < 7 |walk
talk Turak Runetotem##3033
|tip Inside the building.
accept A Lesson to Learn##26 |goto Thunder Bluff 76.47,27.22
|only if Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.65
accept Trial of the Lake##28 |goto Moonglade 56.21,30.65
|only if Druid
step
click Bauble Container
|tip It looks like a wicker vase on the ground underwater.
|tip They spawn randomly, so you may have to search around this area.
collect Shrine Bauble##15877 |q 28/1 |goto 54.33,55.65
|only if Druid
step
use the Shrine Bauble##15877
Complete the Trial of the Lake |q 28/2 |goto 35.92,41.38
|only if Druid
step
talk Tajarri##11799
turnin Trial of the Lake##28 |goto 36.51,40.11
accept Trial of the Sea Lion##30 |goto 36.51,40.11
|only if Druid
step
Leave the building |goto The Barrens 52.03,30.18 < 7 |walk
Follow the path |goto Orgrimmar 52.54,85.14 < 15 |only if walking
Enter Undercity |goto Tirisfal Glades 61.86,65.03 < 15 |only if walking
talk Michael Garrett##4551
fpath Undercity |goto Undercity 63.28,48.58
|only if Druid
step
Leave Undercity |goto 66.19,0.63 < 10 |walk
Follow the road |goto Tirisfal Glades 56.17,65.88 < 30|only if walking
Continue following the road |goto Silverpine Forest 58.14,12.21 < 30 |only if walking
Follow the path |goto Silverpine Forest 51.56,22.48 < 30 |only if walking
Continue following the path |goto Silverpine Forest 44.15,28.90 < 30 |only if walking
click Strong Lockbox
|tip Underwater.
collect Half Pendant of Aquatic Endurance##15882 |goto Silverpine Forest 29.54,29.53 |q 30
|only if Druid
step
Follow the path |goto The Barrens 52.92,12.63 < 40 |only if walking
click Strong Lockbox
|tip Underwater.
collect Half Pendant of Aquatic Agility##15883 |goto The Barrens 56.68,8.32 |q 30
|only if Druid
step
use the Half Pendant of Aquatic Agility##15883
collect Pendant of the Sea Lion##15885 |q 30/1 |goto Moonglade 35.92,41.42
|only if Druid
step
Follow the road |goto 41.76,35.10 < 20 |only if walking
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Trial of the Sea Lion##30 |goto 56.21,30.64
accept Aquatic Form##31 |goto 56.21,30.64
|only if Druid
step
Enter the building |goto Thunder Bluff 74.15,29.89 < 15 |walk
talk Turak Runetotem##3033
|tip Inside the building.
turnin Aquatic Form##31 |goto Thunder Bluff 76.47,27.22
|only if Druid
step
talk Apothecary Helbrim##3390
turnin Fungal Spores##848 |goto The Barrens 51.44,30.15
step
talk Darsok Swiftdagger##3449
|tip At the top of the tower.
turnin Harpy Raiders##867 |goto 51.62,30.90
accept Harpy Lieutenants##875 |goto 51.62,30.90
step
talk Sergra Darkthorn##3338
turnin Prowlers of the Barrens##903 |goto 52.24,31.01
accept Echeyakee##881 |goto 52.24,31.01
step
talk Tonga Runetotem##3448
turnin The Forgotten Pools##870 |goto 52.26,31.93
accept The Stagnant Oasis##877 |goto 52.26,31.93
step
label "Collect_Raptor_Heads"
Kill Sunscale enemies around this area
|tip They look like purple raptors all around ths Barrens.
|tip Just kill them as you see them.
collect 12 Raptor Head##5062 |q 869/1 |goto 53.04,33.69
You can find more around: |notinsticky
[54.18,36.03]
[56.14,39.05]
[57.67,38.41]
[57.59,42.29]
[58.73,39.95]
[57.50,36.31]
[56.00,33.56]
[58.59,34.12]
step
talk Gazrog##3464
turnin Raptor Thieves##869 |goto 51.93,30.32
accept Stolen Silver##3281 |goto 51.93,30.32
step
talk Apothecary Helbrim##3390
accept Apothecary Zamah##853 |goto 51.44,30.15
stickystart "Collect_Raptor_Heads"
step
clicknpc Beaten Corpse##10668
Choose _"I inspect the body further."_
Find Mankrik's Wife |q 4921/1 |goto 49.33,50.32
step
talk Mangletooth##3430
accept Tribes at War##878 |goto 44.55,59.24
step
talk Omusa Thunderhorn##10378
fpath Camp Taurajo |goto 44.45,59.15
step
Enter Mulgore |goto 41.54,58.59 < 30 |only if walking
Ride the elevator up |goto Thunder Bluff 31.78,66.01 < 10 |c |q 853
|only if not Tauren
step
Enter the cave |goto Thunder Bluff 29.81,29.82 < 7 |walk
talk Apothecary Zamah##3419
|tip Inside the cave.
turnin Apothecary Zamah##853 |goto Thunder Bluff 22.81,20.90
step
Leave the cave |goto 29.81,29.82 < 7 |walk
talk Tal##2995
|tip At the top of the tower.
fpath Thunder Bluff |goto 46.98,49.84
step
talk Mankrik##3432
turnin Lost in Battle##4921 |goto The Barrens 51.95,31.58
step
use the Horn of Echeyakee##10327
kill Echeyakee##3475
|tip He looks like a white lion that spawns nearby.
collect Echeyakee's Hide##5100 |q 881/1 |goto 55.85,17.08
step
click Control Console
turnin Samophlange##894 |goto 52.41,11.64
accept Samophlange##900 |goto 52.41,11.64
step
click Main Control Valve
|tip Two enemies will appear and attack you.
Shut Off the Main Control Valve |q 900/1 |goto 52.33,11.57
step
click the Regulator Valve
|tip One enemy will appear and attack you.
Shut Off the Regulator Valve |q 900/3 |goto 52.29,11.40
step
click the Fuel Control Valve
|tip You will not be attacked.
Shut Off the Fuel Control Valve |q 900/2 |goto 52.40,11.41
step
click Control Console
turnin Samophlange##900 |goto 52.41,11.64
accept Samophlange##901 |goto 52.41,11.64
step
Enter the building |goto 52.92,10.55 < 7 |walk
kill Tinkerer Sniggles##3471
|tip Inside the building.
collect Console Key##5089 |q 901/1 |goto 52.84,10.39
step
click Control Console
turnin Samophlange##901 |goto 52.41,11.64
accept Samophlange##902 |goto 52.41,11.64
step
Kill enemies around this area
Reach Level 17 |ding 17 |goto 52.68,11.20
stickystart "Collect_Intact_Raptor_Horns"
step
talk Vrang Wildgore##3682
|tip Sell any items you don't need, to clear some bag space.
|tip Repair your items.
Click Here to Continue |confirm |goto 43.80,12.21 |q 875
step
kill Witchwing Slayer##3278+
|tip Be careful to avoid Sister Rathtalon.
|tip She looks like an elite green harpy that flies around this area.
|tip There are also Witchwing Ambusher harpies that can stealth, so be careful.
collect 6 Harpy Lieutenant Ring##5065 |goto 39.46,15.20 |q 875
step
label "Collect_Intact_Raptor_Horns"
kill Sunscale Scytheclaw##3256+
|tip They look like purple raptors.
|tip They share spawn points with the other enemies, so kill those too, if you can't find any.
collect 5 Intact Raptor Horn##5055 |q 865/1 |goto 43.36,15.57
You can find more around [45.27,14.94]
step
talk Vrang Wildgore##3682
|tip Sell any items you don't need, to clear some bag space.
|tip Repair your items.
Click Here to Continue |confirm |goto 43.80,12.21 |q 858 |future
step
Follow the path |goto 52.80,13.00 < 60 |only if walking
talk Wizzlecrank's Shredder##3439
|tip You may need to wait for it to respawn.
accept Ignition##858 |goto 56.51,7.45
step
Follow the path up |goto 56.46,8.48 < 7 |only if walking
kill Supervisor Lugwizzle##3445
|tip He walks around this area on both levels of the platform.
collect Ignition Key##5050 |q 858/1 |goto 56.20,8.25
step
talk Wizzlecrank's Shredder##3439
|tip You may need to wait for it to respawn.
turnin Ignition##858 |goto 56.51,7.45
step
talk Wizzlecrank's Shredder##3439
|tip You may need to wait for it to respawn.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept The Escape##863 |goto 56.51,7.45 |noautoaccept
step
Watch the dialogue
|tip Follow Wizzlecrank's Shredder and protect him as he walks.
|tip He eventually walks to this location.
Escort Wizzlecrank Out of the Venture Co. Drill Site |q 863/1 |goto 55.35,7.70
step
Follow the path up |goto 61.54,6.68 < 30 |only if walking
Kill Venture Co. enemies around this area
collect Cats Eye Emerald##5097 |q 896/1 |goto 61.61,4.61
step
talk Thork##3429
accept Report to Kadrak##6541 |goto 51.50,30.87
step
talk Darsok Swiftdagger##3449
|tip At the top of the tower.
turnin Harpy Lieutenants##875 |goto 51.62,30.90
accept Serena Bloodfeather##876 |goto 51.62,30.90
step
talk Sergra Darkthorn##3338
turnin Echeyakee##881 |goto 52.23,31.00
accept The Angry Scytheclaws##905 |goto 52.23,31.00
step
Enter the building |goto 62.89,36.52 < 7 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Stolen Booty##888 |goto 62.68,36.23
step
talk Sputtervalve##3442
turnin Samophlange##902 |goto 62.98,37.22
turnin The Escape##863 |goto 62.98,37.22
accept Ziz Fizziks##1483 |goto 62.98,37.22
accept Wenikee Boltbucket##3921 |goto 62.98,37.22
step
_Destroy This Item:_
|tip It is no longer needed.
trash Control Console Operating Manual##5088
step
talk Wharfmaster Dizzywig##3453
turnin Miner's Fortune##896 |goto 63.35,38.45
step
talk Mebok Mizzyrix##3446
turnin Raptor Horns##865 |goto 62.37,37.62
accept Deepmoss Spider Eggs##1069 |goto 62.37,37.62
step
click Bubbling Fissure
|tip Underwater.
Test the Dried Seeds |q 877/1 |goto 55.61,42.74
step
kill Verog the Dervish##3395
|tip Kill Kolkar enemies around this whole area.
|tip Eventually, you will see a red yelled message in your chat window that means he appeared.
|tip The yelled message says "I am summoned! Intruders, come to my tent and face your death!"
|tip This can take a while.
|tip He spawns at this location.
collect Verog's Head##5023 |q 851/1 |goto 52.91,41.77
step
talk Tonga Runetotem##3448
turnin The Stagnant Oasis##877 |goto 52.26,31.93
accept Altered Beings##880 |goto 52.26,31.93
step
_Destroy This Item:_
|tip It is no longer needed.
trash Dried Seeds##5068
step
kill Oasis Snapjaw##3461+
|tip Underwater and along the edges of the water around this area.
collect 8 Altered Snapjaw Shell##5098 |q 880/1 |goto 55.53,42.70
step
talk Tonga Runetotem##3448
turnin Altered Beings##880 |goto 52.26,31.93
step
talk Regthar Deathgate##3389
|tip Upstairs inside the building.
turnin Verog the Dervish##851 |goto 45.34,28.41
step
kill Serena Bloodfeather##3452
collect Serena's Head##5067 |q 876/1 |goto 39.16,12.17
step
Follow the path |goto 39.60,15.05 < 30 |only if walking
Continue following the path |goto 43.78,14.29 < 30 |only if walking
talk Vrang Wildgore##3682
|tip Sell any items you don't need, to clear some bag space.
|tip Repair your items.
Click Here to Continue |confirm |goto 43.80,12.21 |q 3921
step
talk Wenikee Boltbucket##9316
turnin Wenikee Boltbucket##3921 |goto 49.05,11.16
step
talk Kadrak##8582
|tip At the top of the tower.
turnin Report to Kadrak##6541 |goto 48.12,5.42
step
Follow the road |goto 48.76,7.35 < 30 |only if walking
Continue following the road |goto 49.14,13.56 < 50 |only if walking
Continue following the road |goto 52.00,18.04 < 50 |only if walking
Continue following the road |goto 52.39,25.41 < 50 |only if walking
talk Darsok Swiftdagger##3449
|tip At the top of the tower.
|tip We are running back to Crossroads, instead of hearthing.
|tip This is because we want to use the hearthstone at a more useful time coming up soon.
turnin Serena Bloodfeather##876 |goto 51.62,30.90
accept Letter to Jin'Zil##1060 |goto 51.62,30.90
step
talk Korran##3428
accept Egg Hunt##868 |goto 51.07,29.63
stickystart "Collect_Sunscale_Feathers"
step
Follow the road |goto 50.04,42.05 < 60 |only if walking
Follow the path |goto 57.35,52.24 < 20 |only if walking
click Stolen Silver
collect Stolen Silver##5061 |q 3281/1 |goto 58.03,53.87
step
label "Collect_Sunscale_Feathers"
Kill Sunscale enemies around this area
|tip They look like purple raptors all around the Barrens.
|tip Sunscale Scytheclaws have the highest chance to drop these.
collect 3 Sunscale Feather##5165 |goto 58.03,53.87 |q 905
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[57.35,52.24]
step
Kill enemies around this area
Reach Level 19 |ding 19 |goto 57.37,53.13
You can find more around: |notinsticky
[56.32,49.97]
step
click Blue Raptor Nest
Visit the Blue Raptor Nest |q 905/1 |goto 52.60,46.11
step
click Red Raptor Nest
Visit the Red Raptor Nest |q 905/3 |goto 52.46,46.57
step
click Yellow Raptor Nest
Visit the Yellow Raptor Nest |q 905/2 |goto 52.02,46.47
stickystart "Collect_Theramore_Medals"
step
Follow the path down |goto 58.28,51.80 < 30 |only if walking
Follow the path |goto 62.16,53.49 < 15 |only if walking
Follow the path up |goto 61.10,53.80 < 15 |only if walking
Enter the bulding |goto 61.60,54.94 < 7 |walk
kill Captain Fairmount##3393 |q 891/1 |goto 61.85,54.65
|tip Upstairs inside the tower.
step
Leave the bulding |goto 61.60,54.94 < 7 |walk
Enter the building |goto 62.96,56.70 < 7 |only if walking
kill Cannoneer Smythe##3454 |q 891/3 |goto 63.17,56.58
|tip At the top of the tower.
step
Enter the building |goto 60.53,55.05 < 7 |only if walking
kill Cannoneer Whessan##3455 |q 891/2 |goto 60.43,54.78
|tip At the top of the tower.
step
label "Collect_Theramore_Medals"
Kill Theramore enemies around this area
collect 10 Theramore Medal##5078 |q 891/4 |goto 61.62,53.81
step
talk Gazrog##3464
turnin Stolen Silver##3281 |goto 51.93,30.32
step
talk Sergra Darkthorn##3338
turnin The Angry Scytheclaws##905 |goto 52.23,31.01
accept Jorn Skyseer##3261 |goto 52.23,31.01
step
_Destroy These Items:_
|tip They are no longer needed.
trash Sunscale Feather##5165
step
talk Tonga Runetotem##3448
accept Hamuul Runetotem##1489 |goto 52.26,31.93
step
talk Jorn Skyseer##3387
turnin Jorn Skyseer##3261 |goto 44.86,59.14
accept Ishamuhale##882 |goto 44.86,59.14
stickystart "Collect_Hoof_Of_Lakotamani"
step
kill Stormsnout##3240+
collect Thunder Lizard Horn##4895 |q 821/3 |goto 47.33,55.94
You can find more around: |notinsticky
[48.39,56.91]
[49.98,53.64]
step
label "Collect_Hoof_Of_Lakotamani"
kill Lakota'mani##3474
|tip It looks like a grey kodo that walks around this area.
collect Hoof of Lakota'mani##5099 |goto 46.73,50.93 |q 883 |future
He can also be around [50.09,53.20]
step
use the Hoof of Lakota'mani##5099
accept Lakota'mani##883
step
talk Jorn Skyseer##3387
turnin Lakota'mani##883 |goto 44.86,59.14
step
talk Brewmaster Drohn##3292
turnin Chen's Empty Keg##821 |goto 62.26,38.39
accept Chen's Empty Keg##822 |goto 62.26,38.39
step
talk Captain Thalo'thas Brightsun##3339
turnin The Guns of Northwatch##891 |goto 62.29,39.03
step
Follow the path |goto 59.29,37.11 < 30 |only if walking
kill Zhevra Charger##3426+
collect Fresh Zhevra Carcass##10338 |goto 60.55,32.81 |q 882
step
use the Fresh Zhevra Carcass##10338
kill Ishamuhale##3257
|tip He looks like a raptor that appears nearby.
collect Ishamuhale's Fang##5101 |q 882/1 |goto 59.89,30.29
step
talk Jorn Skyseer##3387
turnin Ishamuhale##882 |goto 44.86,59.14
accept Enraged Thunder Lizards##907 |goto 44.86,59.14
step
kill Stormsnout##3240+
collect 3 Thunder Lizard Blood##5143 |q 907/1 |goto 46.11,55.98
You can find more around: |notinsticky
[48.67,55.70]
[47.00,51.14]
stickystart "Collect_Blood_Shard"
stickystart "Kill_Bristleback_Water_Seekers"
stickystart "Kill_Bristleback_Thornweavers"
stickystart "Kill_Bristleback_Geomancers"
step
Kill Bristleback enemies around this area
collect 60 Bristleback Quilboar Tusk##5085 |q 899/1 |goto 51.18,56.02
You can find more around: |notinsticky
[52.85,53.42]
[43.94,51.84]
[43.38,48.54]
step
label "Collect_Blood_Shard"
Kill Bristleback enemies around this area
collect Blood Shard##5075 |goto 51.18,56.02 |q 5052 |future
|tip Be careful not to accidentally sell this to a vendor.
You can find more around: |notinsticky
[52.85,53.42]
[43.94,51.84]
[43.38,48.54]
step
label "Kill_Bristleback_Water_Seekers"
kill 6 Bristleback Water Seeker##3260 |q 878/1 |goto 51.18,56.02
You can find more around: |notinsticky
[52.85,53.42]
[43.94,51.84]
[43.38,48.54]
step
label "Kill_Bristleback_Thornweavers"
kill 12 Bristleback Thornweaver##3261 |q 878/2 |goto 51.18,56.02
You can find more around: |notinsticky
[52.85,53.42]
[43.94,51.84]
[43.38,48.54]
step
label "Kill_Bristleback_Geomancers"
kill 12 Bristleback Geomancer##3263 |q 878/3 |goto 51.18,56.02
You can find more around: |notinsticky
[52.85,53.42]
[43.94,51.84]
[43.38,48.54]
step
Kill enemies around this area
Reach Level 20 |ding 20 |goto 51.18,56.02
You can find more around: |notinsticky
[52.85,53.42]
[43.94,51.84]
[43.38,48.54]
step
talk Jorn Skyseer##3387
turnin Enraged Thunder Lizards##907 |goto 44.86,59.14
accept Cry of the Thunderhawk##913 |goto 44.86,59.14
accept Melor Sends Word##1130 |goto 44.86,59.14
accept The Ashenvale Hunt##6382 |goto 44.86,59.14
step
talk Mangletooth##3430
turnin Tribes at War##878 |goto 44.55,59.24
accept Blood Shards of Agamaggan##5052 |goto 44.55,59.24
step
talk Mangletooth##3430
turnin Blood Shards of Agamaggan##5052 |goto 44.55,59.24
step
_NOTE:_
talk Mangletooth##3430
|tip You can now talk to Mangletooth and give him Blood Shards in exchange for buffs.
|tip Any time you are going to be questing in the Barrens, and you have extra Blood Shards available, try to get some buffs to make questing faster.
|tip
|tip SPIRIT OF THE WIND
|tip +30% Movement Speed (5 Minutes) - 10 Blood Shards
|tip Note: This buff does NOT stack with other run speed increase abilities.
|tip
|tip AGAMAGGAN'S STRENGTH
|tip +10 Strength (30 Minutes) - 4 Blood Shards
|tip
|tip AGAMAGGAN'S AGILITY
|tip +10 Agility (30 Minutes) - 4 Blood Shards
|tip
|tip WISDOM OF AGAMAGGAN
|tip +10 Intellect (30 Minutes) - 4 Blood Shards
|tip
|tip RISING SPIRIT
|tip +25 Spirit (30 Minutes) - 4 Blood Shards
|tip
|tip RAZORHIDE
|tip +95 Armor and Returns Damage to Enemies (10 Minutes) - 4 Blood Shards
|tip
Click Here to Continue |confirm |goto 44.55,59.24 |q 849 |future
step
_Note for Rogues:_
|tip You will begin the questline that rewards you with the ability to make Poisons later.
|tip The quest will be easier to complete at a higher level.
|tip You will need Lockpicking skill of at least 75, so start try to work on that now, as you can, while questing.
Click Here to Continue |confirm |q 2480 |future
|only if Rogue
step
Run up the stairs |goto Orgrimmar 35.20,86.44 < 7 |only if walking
talk Zayus##5994
|tip Upstairs inside the building.
accept Shadowguard##5680 |goto 35.72,86.90
|only if Troll Priest
step
Run down the stairs |goto 34.93,87.87 < 5 |only if walking
talk Ur'kyo##6018
|tip Inside the building.
turnin Shadowguard##5680 |goto 35.59,87.82
|only if Troll Priest
step
talk Father Lankester##4607
accept Devouring Plague##5644 |goto Undercity 49.37,15.90
|only if Scourge Priest
step
talk Aelthalyste##4606
turnin Devouring Plague##5644 |goto 48.98,18.32
|only if Scourge Priest
step
talk Gan'rul Bloodeye##5875
|tip Inside the tent, inside the Cleft of Shadow.
accept Devourer of Souls##1507 |goto Orgrimmar 48.25,45.29
|only if Warlock
step
talk Cazul##5909
turnin Devourer of Souls##1507 |goto 47.06,46.48
accept Blind Cazul##1508 |goto 47.06,46.48
|only if Warlock
step
Follow the path up |goto 43.93,56.92 < 15 |walk
Follow the path |goto 38.40,54.26 < 20 |only if walking
Enter the building |goto 38.07,60.65 < 15 |walk
talk Zankaja##5910
|tip Inside the building.
turnin Blind Cazul##1508 |goto 37.03,59.45
accept News of Dogran##1509 |goto 37.03,59.45
|only if Warlock
step
talk Gazrog##3464
turnin News of Dogran##1509 |goto The Barrens 51.93,30.32
accept News of Dogran##1510 |goto The Barrens 51.93,30.32
|only if Warlock
step
Follow the road |goto 50.82,29.07 < 20 |only if walking
Follow the road |goto 39.39,29.65 < 30 |only if walking
Follow the path up |goto Stonetalon Mountains 82.07,98.57 < 15 |only if walking
Follow the path |goto Stonetalon Mountains 77.19,98.73 < 15 |only if walking
Jump down here |goto Stonetalon Mountains 75.01,97.08 < 15 |only if walking
talk Ken'zigla##4197
turnin News of Dogran##1510 |goto Stonetalon Mountains 73.25,95.12
accept Ken'zigla's Draught##1511 |goto Stonetalon Mountains 73.25,95.12
|only if Warlock
step
Follow the path up |goto 72.89,93.73 < 15 |only if walking
Follow the path |goto 77.33,98.72 < 15 |only if walking
Follow the road |goto The Barrens 35.84,27.53 < 30 |only if walking
Continue following the road |goto The Barrens 39.43,29.70 < 30 |only if walking
Follow the path |goto The Barrens 50.83,29.09 < 20 |only if walking
talk Grunt Logmar##5911
turnin Ken'zigla's Draught##1511 |goto The Barrens 44.62,59.27
accept Dogran's Captivity##1515 |goto The Barrens 44.62,59.27
|only if Warlock
step
talk Grunt Dogran##5908
|tip Inside the hut.
turnin Dogran's Captivity##1515 |goto 43.31,47.89
accept Love's Gift##1512 |goto 43.31,47.89
|only if Warlock
step
Follow the path down |goto Orgrimmar 39.74,53.78 < 20 |walk
talk Gan'rul Bloodeye##5875
|tip Inside the tent.
turnin Love's Gift##1512 |goto Orgrimmar 48.25,45.29
accept The Binding##1513 |goto Orgrimmar 48.25,45.29
|only if Warlock
step
use Dogran's Pendant##6626
|tip Use it while standing on the pink symbol on the ground.
|tip Inside the tent.
kill Summoned Succubus##5677 |q 1513/1 |goto 49.45,50.03
|only if Warlock
step
talk Gan'rul Bloodeye##5875
|tip Inside the tent.
turnin The Binding##1513 |goto 48.24,45.29
|only if Warlock
step
kill Thunderhawk Hatchling##3247+
collect Thunderhawk Wings##5164 |q 913/1 |goto The Barrens 46.73,50.93
You can find more around: |notinsticky
[50.27,53.70]
[46.58,49.90]
step
talk Jorn Skyseer##3387
turnin Cry of the Thunderhawk##913 |goto 44.86,59.14
step
talk Mankrik##3432
turnin Consumed by Hatred##899 |goto 51.95,31.58
step
_Destroy These Items:_
|tip They are no longer needed.
trash Bristleback Quilboar Tusk##5085
step
kill Lost Barrens Kodo##3234+
collect Kodo Liver##4896 |q 822/3 |goto 42.20,30.58
You can find more around:
[41.19,25.28]
[40.36,24.03]
[42.05,20.95]
step
talk Melor Stonehoof##3441
turnin Melor Sends Word##1130 |goto Thunder Bluff 61.54,80.90
accept Steelsnap##1131 |goto Thunder Bluff 61.54,80.90
step
Enter the building |goto 74.08,29.89 < 7 |walk
talk Arch Druid Hamuul Runetotem##5769
|tip Inside the building.
turnin Hamuul Runetotem##1489 |goto 78.60,28.56
accept Nara Wildmane##1490 |goto 78.60,28.56
step
talk Nara Wildmane##5770
|tip Inside the building.
turnin Nara Wildmane##1490 |goto 75.65,31.62
step
talk Zangen Stonehoof##4721
accept The Sacred Flame##1195 |goto 54.96,51.38
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (20-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stonetalon Mountains",
condition_suggested=function() return level >= 20 and level <= 21 and not completedq(1062) end,
next="Leveling Guides\\Classic (12-58)\\Ashenvale (21-21)",
},[[
step
Follow the path up |goto Stonetalon Mountains 82.07,98.57 < 15 |only if walking
Enter the cave |goto Stonetalon Mountains 74.22,97.13 < 10 |walk
talk Witch Doctor Jin'Zil##3995
|tip Inside the cave.
turnin Letter to Jin'Zil##1060 |goto Stonetalon Mountains 74.54,97.94
accept Jin'Zil's Forest Magic##1058 |goto Stonetalon Mountains 74.54,97.94
step
talk Darn Talongrip##11821
accept Report to Kadrak##6542 |goto Stonetalon Mountains 73.25,94.90
step
talk Xen'Zilla##12816
|tip Inside the building.
accept Blood Feeders##6461 |goto 71.24,95.02
step
Follow the road |goto 70.55,89.16 < 20 |only if walking
click Wanted Poster: Besseleth
accept Arachnophobia##6284 |goto 59.07,75.71
stickystart "Collect_Deepmoss_Eggs"
stickystart "Kill_Deepmoss_Venomspitters"
stickystart "Kill_Deepmoss_Creepers"
step
Follow the path up |goto 58.14,76.09 < 15 |only if walking
kill Besseleth##11921
|tip It looks like a large orange spider.
collect Besseleth's Fang##16192 |q 6284/1 |goto 51.96,73.84
Also check around: |notinsticky
[53.01,71.61]
[54.29,71.73]
step
label "Collect_Deepmoss_Eggs"
click Deepmoss Eggs+
|tip They look like large white eggs on the ground around this area.
|tip Sometimes enemies will spawn after looting them.
collect 15 Deepmoss Egg##5570 |q 1069/1 |goto 53.25,73.45
step
label "Kill_Deepmoss_Venomspitters"
kill 7 Deepmoss Venomspitter##4007 |q 6461/2 |goto 53.25,73.45
step
label "Kill_Deepmoss_Creepers"
kill 10 Deepmoss Creeper##4005 |q 6461/1 |goto 53.25,73.45
step
Follow the path |goto 55.12,76.18 < 15 |only if walking
Follow the road |goto 59.40,75.23 < 30 |only if walking
Follow the path |goto 60.93,69.48 < 30 |only if walking
Enter the building |goto 59.04,62.24 < 7 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Ziz Fizziks##1483 |goto 58.99,62.60
accept Super Reaper 6000##1093 |goto 58.99,62.60
stickystart "Kill_Venture_Co_Loggers"
step
Follow the path |goto 61.25,57.95 < 30 |only if walking
Follow the path up |goto 58.98,51.95 < 10 |only if walking
talk Veenix##4086
|tip Sell any items you don't need, to clear some bag space.
|tip Repair your items.
Click Here to Continue |confirm |goto 58.22,51.74 |q 1093
step
kill Venture Co. Operator##3988+
collect Super Reaper 6000 Blueprints##5734 |q 1093/1 |goto 62.33,53.49
You can find more around: |notinsticky
[66.16,52.01]
[66.49,45.90]
[70.97,43.13]
[73.02,49.47]
[74.68,55.44]
step
label "Kill_Venture_Co_Loggers"
kill 15 Venture Co. Logger##3989 |q 1062/1 |goto 60.44,52.78
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Kill enemies around this area
Reach Level 21 |ding 21 |goto 60.44,52.78
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Enter the building |goto 59.04,62.24 < 7 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Super Reaper 6000##1093 |goto 58.99,62.60
accept Further Instructions##1094 |goto 58.99,62.60
step
Follow the path |goto 61.24,68.39 < 30 |only if walking
Follow the road |goto 59.22,70.78 < 40 |only if walking
Follow the path |goto 51.64,61.06 < 20 |only if walking
Continue following the path |goto 48.66,60.86 < 30 |c |q 6421 |future
step
talk Tammra Windfield##11864
turnin Kaya's Alive##6401 |goto 47.46,58.38
|only if havequest(6401) or completedq(6401)
step
talk Maggran Earthbinder##11860
turnin Arachnophobia##6284 |goto 47.20,61.15
step
talk Tharm##4312
fpath Sun Rock Retreat |goto 45.13,59.84
step
Follow the path up |goto 44.63,61.84 < 15 |only if walking
Continue up the path |goto 44.88,63.31 < 15 |only if walking
talk Mor'rogal##11861
accept Boulderslide Ravine##6421 |goto 47.22,64.05
step
talk Tsunaman##11862
|tip It walks around this area.
accept Trouble in the Deeps##6562 |goto 47.37,64.29
stickystart "Collect_Resonite_Crystals"
step
Follow the path down |goto 48.65,63.18 < 15 |only if walking
Follow the path |goto 49.83,60.94 < 20 |only if walking
Follow the road |goto 53.23,61.82 < 30 |only if walking
Follow the path up |goto 67.09,88.51 < 20 |only if walking
Follow the path up |goto 63.23,93.87 < 15 |only if walking
Enter the cave |goto 61.49,92.85 < 15 |walk
Investigate the Cave in Boulderslide Ravine |q 6421/2 |goto 58.63,90.38
|tip Inside the cave.
step
label "Collect_Resonite_Crystals"
click Resonite Crystal+
|tip They look like pink crystals on the ground around this area inside the cave.
collect 10 Resonite Crystal##16581 |q 6421/1 |goto 60.55,91.45
step
Leave the cave |goto 61.53,92.93 < 15 |walk
Follow the path |goto 63.74,93.88 < 15 |only if walking
Continue following the path |goto 66.85,88.94 < 20 |only if walking
Follow the road |goto 69.96,88.69 < 20 |only if walking
Follow the path up |goto 71.93,91.79 < 15 |only if walking
talk Xen'Zilla##12816
|tip Inside the building.
turnin Blood Feeders##6461 |goto 71.25,95.03
step
Follow the path up |goto 72.89,93.73 < 15 |only if walking
talk Seereth Stonebreak##4049
turnin Goblin Invaders##1062 |goto The Barrens 35.26,27.88
step
Watch the dialogue
talk Seereth Stonebreak##4049
accept Shredding Machines##1068 |goto 35.26,27.88
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Ashenvale (21-21)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ashenvale",
condition_suggested=function() return level == 21 and not completedq(6442) end,
next="Leveling Guides\\Classic (12-58)\\The Barrens (21-23)",
},[[
step
Follow the road |goto The Barrens 38.23,28.71 < 30 |only if walking
Continue following the road |goto The Barrens 43.54,30.60 < 30 |only if walking
Continue following the road |goto The Barrens 47.49,27.98 < 30 |only if walking
Follow the path |goto The Barrens 50.81,29.07 < 15 |only if walking
Run up the ramp |goto Orgrimmar 42.26,36.67 < 15 |only if walking
Enter the building |goto Orgrimmar 40.21,36.95 < 15 |walk
talk Searn Firewarder##5892
|tip Inside the building.
|tip We run back to Crossroads first, instead of hearthing.
|tip We are saving your hearthstone to use in Hillsbrad Foothills, to return to Crossroads quickly.
accept Call of Water##1528 |goto Orgrimmar 37.96,37.74
|only if Shaman
step
talk Islen Waterseer##5901
turnin Call of Water##1528 |goto The Barrens 65.83,43.78
accept Call of Water##1530 |goto The Barrens 65.83,43.78
|only if Shaman
step
Follow the road |goto 46.12,67.29 < 30 |only if walking
Follow the path up |goto 44.28,77.29 < 15 |only if walking
talk Brine##5899
turnin Call of Water##1530 |goto 43.42,77.41
accept Call of Water##1535 |goto 43.42,77.41
|only if Shaman
step
use the Empty Brown Waterskin##7766
collect Filled Brown Waterskin##7769 |q 1535/1 |goto 43.42,77.41
|only if Shaman
step
Follow the path up |goto 44.28,77.29 < 15 |only if walking
talk Brine##5899
turnin Call of Water##1535 |goto 43.42,77.41
accept Call of Water##1536 |goto 43.42,77.41
|only if Shaman
step
Enter Undercity |goto Tirisfal Glades 61.86,65.03 < 15 |only if walking
talk Michael Garrett##4551
fpath Undercity |goto Undercity 63.28,48.58
|only if Shaman
step
Leave Undercity |goto 66.19,0.63 < 10 |walk
Follow the road |goto Tirisfal Glades 56.17,65.88 < 30|only if walking
Continue following the road |goto Silverpine Forest 58.14,12.21 < 30 |only if walking
Cross the bridge |goto Silverpine Forest 49.75,28.82 < 15 |only if walking
Follow the road |goto Silverpine Forest 48.71,38.60 < 30 |only if walking
talk Karos Razok##2226
fpath The Sepulcher |goto Silverpine Forest 45.62,42.59
|only if Shaman
step
Follow the road |goto Silverpine Forest 46.48,41.31 < 20 |only if walking
Continue following the road |goto Silverpine Forest 52.85,43.92 < 30 |only if walking
Continue following the road |goto Silverpine Forest 53.88,73.53 < 30 |only if walking
Enter Hillsbrad Foothills |goto Silverpine Forest 66.87,80.22 < 30 |only if walking
Follow the road |goto Hillsbrad Foothills 57.51,36.04 < 30 |only if walking
talk Zarise##2389
fpath Tarren Mill |goto Hillsbrad Foothills 60.14,18.62
|only if Shaman
step
use the Empty Red Waterskin##7768
collect Filled Red Waterskin##7771 |q 1536/1 |goto 62.15,20.75
|only if Shaman
step
Follow the road |goto The Barrens 46.12,67.29 < 30 |only if walking
Follow the path up |goto The Barrens 44.28,77.29 < 15 |only if walking
talk Brine##5899
turnin Call of Water##1536 |goto The Barrens 43.42,77.41
accept Call of Water##1534 |goto The Barrens 43.42,77.41
|only if Shaman
step
Follow the road |goto The Barrens 52.36,28.13 < 30 |only if walking
talk Kadrak##8582
|tip At the top of the tower.
turnin Report to Kadrak##6542 |goto 48.12,5.42
step
Follow the path |goto 47.82,5.21 < 15 |only if walking
Follow the road |goto Ashenvale 68.62,86.73 < 30 |only if walking
Follow the road |goto Ashenvale 67.29,71.35 < 30 |only if walking
Follow the path |goto  Ashenvale 71.10,69.17 < 20 |only if walking
Follow the path |goto Ashenvale 73.51,63.56 < 15 |only if walking
talk Vhulgra##12616
|tip We are going to discover 2 Ashenvale flight paths, so we can use them in the future.
|tip We are also going to complete some quests before they turn grey.
fpath Splintertree Post |goto Ashenvale 73.18,61.59
step
talk Senani Thunderheart##12696
turnin The Ashenvale Hunt##6382 |goto 73.78,61.46
accept The Ashenvale Hunt##6383 |goto 73.78,61.46
step
Follow the path |goto 73.51,63.56 < 15 |only if walking
Follow the road |goto 70.84,69.68 < 30 |c |q 6562
step
Follow the path |goto 38.83,58.05 < 30 |only if walking
use the Empty Blue Waterskin##7767
collect Filled Blue Waterskin##7770 |q 1534/1 |goto 33.55,67.44
|only if Shaman
step
Follow the path |goto 35.98,62.42 < 20 |c |q 6562
|only if Shaman
step
Avoid Astranaar |goto 36.09,56.90 < 20 |only if walking
Follow the path |goto 34.52,54.02 < 20 |only if walking
Follow the road |goto 28.84,48.35 < 20 |only if walking
Continue following the road |goto 26.20,47.10 < 30 |only if walking
Follow the path |goto 25.36,38.69 < 30 |only if walking
Continue following the path |goto 18.47,32.58 < 30 |only if walking
Continue following the path |goto 16.72,30.16 < 30 |only if walking
talk Andruk##11901
fpath Zoram'gar Outpost |goto 12.23,33.80
step
talk Je'neu Sancrea##12736
|tip Inside the building.
turnin Trouble in the Deeps##6562 |goto 11.57,34.29
step
talk Marukai##12719
|tip Inside the building.
accept Naga at the Zoram Strand##6442 |goto 11.69,34.90
step
Kill Wrathtail enemies around this area
collect 20 Wrathtail Head##5490 |q 6442/1 |goto 12.68,29.52
You can find more around [14.62,19.38]
step
talk Marukai##12719
|tip Inside the building.
turnin Naga at the Zoram Strand##6442 |goto 11.69,34.90
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\The Barrens (21-23)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\The Barrens",
condition_suggested=function() return level >= 21 and level <= 23 and not completedq(868) end,
next="Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (23-25)",
},[[
step
talk Sputtervalve##3442
turnin Further Instructions##1094 |goto The Barrens 62.98,37.22
accept Further Instructions##1095 |goto The Barrens 62.98,37.22
step
talk Mebok Mizzyrix##3446
turnin Deepmoss Spider Eggs##1069 |goto 62.37,37.62
step
_Destroy These Items:_
|tip They are no longer needed.
trash Deepmoss Egg##5570
step
Follow the road |goto The Barrens 46.12,67.29 < 30 |only if walking
Follow the path up |goto The Barrens 44.28,77.29 < 15 |only if walking
talk Brine##5899
turnin Call of Water##1534 |goto The Barrens 43.42,77.41
accept Call of Water##220 |goto The Barrens 43.42,77.41
|only if Shaman
step
Follow the road |goto 46.85,65.69 < 30 |only if walking
talk Islen Waterseer##5901
turnin Call of Water##220 |goto 65.83,43.78
accept Call of Water##63 |goto 65.83,43.78
|only if Shaman
step
Jump up next to the tree |goto Silverpine Forest 42.18,40.90 < 7 |only if walking
Jump down here |goto Silverpine Forest 41.60,41.77 < 7 |only if walking
use the Water Sapta##6637
kill Corrupt Minor Manifestation of Water##58
collect Corrupt Manifestation's Bracers##7812 |q 63/1 |goto Silverpine Forest 38.77,44.26
|only if Shaman
step
click Brazier of Everfount
turnin Call of Water##63 |goto 38.28,44.56
accept Call of Water##100 |goto 38.28,44.56
|only if Shaman
step
Watch the dialogue
talk Minor Manifestation of Water##5895
turnin Call of Water##100 |goto 38.75,44.62
accept Call of Water##96 |goto 38.75,44.62
|only if Shaman
step
Follow the path |goto 36.96,42.85 < 20 |only if walking
Continue following the path |goto 38.93,31.99 < 30 |only if walking
Cross the bridge |goto 49.76,28.78 < 20 |only if walking
Follow the road |goto 48.55,38.65 < 30 |only if walking
talk Islen Waterseer##5901
turnin Call of Water##96 |goto The Barrens 65.83,43.78
|only if Shaman
step
talk Mangletooth##3430
accept Betrayal from Within##879 |goto The Barrens 44.55,59.24
step
_NOTE:_
talk Mangletooth##3430
|tip You can now talk to Mangletooth and give him Blood Shards in exchange for buffs.
|tip Any time you are going to be questing in the Barrens, and you have extra Blood Shards available, try to get some buffs to make questing faster.
|tip
|tip SPIRIT OF THE WIND
|tip +30% Movement Speed (5 Minutes) - 10 Blood Shards
|tip Note: This buff does NOT stack with other run speed increase abilities.
|tip
|tip AGAMAGGAN'S STRENGTH
|tip +10 Strength (30 Minutes) - 4 Blood Shards
|tip
|tip AGAMAGGAN'S AGILITY
|tip +10 Agility (30 Minutes) - 4 Blood Shards
|tip
|tip WISDOM OF AGAMAGGAN
|tip +10 Intellect (30 Minutes) - 4 Blood Shards
|tip
|tip RISING SPIRIT
|tip +25 Spirit (30 Minutes) - 4 Blood Shards
|tip
|tip RAZORHIDE
|tip +95 Armor and Returns Damage to Enemies (10 Minutes) - 4 Blood Shards
|tip
Click Here to Continue |confirm |goto 44.55,59.24 |q 849 |future
|only if itemcount(5075) >= 4
step
talk Tatternack Steelforge##3433
accept Weapons of Choice##893 |goto 45.10,57.68
step
Enter the building |goto 45.35,58.81 < 7 |walk
talk Innkeeper Byula##7714
|tip Inside the building.
home Camp Taurajo |goto 45.58,59.04 |q 849 |future
step
kill Owatanka##3473
|tip It looks like a blue thunder lizard that walks around this area.
collect Owatanka's Tailspike##5102 |goto 49.80,61.46 |q 884 |future
He can also be around [45.48,62.53]
step
use Owatanka's Tailspike##5102
accept Owatanka##884
step
Kill enemies around this area
|tip You are about to have to complete the "Egg Hunt" quest.
|tip Some of the silithid enemies can be tough, so being a level higher will help.
Reach Level 22 |ding 22 |goto 49.80,61.46
You can find more around [45.48,62.53]
step
click Silithid Mound+
|tip They look like larger rocks with green liquid oozing out of their tops on the ground around this area.
|tip You may sometimes be attacked by enemies that appear after you loot them.
collect 12 Silithid Egg##5058 |goto 47.99,70.25
You can find more around: |notinsticky
[44.96,69.37]
[43.02,70.49]
[44.57,72.12]
step
talk Gann Stonespire##3341
|tip He walks north and south along this road.
accept Gann's Reclamation##843 |goto 46.13,75.54
He walks between here and [46.12,81.24]
stickystart "Collect_Razormane_Backstabber"
stickystart "Collect_Razormane_Wand"
stickystart "Collect_Razormane_War_Shield"
stickystart "Collect_Washte_Pawnes_Feather"
step
kill Kuz##3436
|tip He walks around this area.
collect Kuz's Skull##5074 |q 879/1 |goto 45.44,80.02
He walks between here and around the burned buildings around [44.11,80.70]
step
kill Nak##3434
|tip He walks around this area.
|tip Be careful, some enemies are stealthed around this area.
collect Nak's Skull##5073 |q 879/2 |goto 43.82,83.10
step
Follow the path up |goto 40.97,80.67 < 30 |only if walking
Enter the building |goto 40.30,80.72 < 10 |walk
kill Lok Orcbane##3435
|tip Inside the building.
collect Lok's Skull##5072 |q 879/3 |goto 40.15,80.54
step
label "Collect_Razormane_Backstabber"
Kill Razormane enemies around this area
|tip Only Razormane Pathfinders and Razormane Stalkers will drop the quest item.
|tip Be careful, some enemies are stealthed around this area. |notinsticky
collect Razormane Backstabber##5093 |q 893/1 |goto 44.19,80.61
|tip Be careful not to accidentally sell this to a vendor.
You can find more around: |notinsticky
[43.82,83.10]
[42.14,81.41]
[41.65,78.79]
step
label "Collect_Razormane_Wand"
kill Razormane Seer##3458+
|tip Be careful, some enemies are stealthed around this area. |notinsticky
collect Charred Razormane Wand##5092 |q 893/2 |goto 42.14,81.41
|tip Be careful not to accidentally sell this to a vendor.
You can find more around [41.65,78.79]
step
label "Collect_Razormane_War_Shield"
kill Razormane Warfrenzy##3459+
|tip Be careful, some enemies are stealthed around this area. |notinsticky
collect Razormane War Shield##5094 |q 893/3 |goto 42.14,81.41
|tip Be careful not to accidentally sell this to a vendor.
You can find more around [41.65,78.79]
stickystart "Collect_Lightning_Glands"
stickystart "Collect_Thunderhawk_Saliva_Gland"
step
label "Collect_Washte_Pawnes_Feather"
kill Washte Pawne##3472
|tip It looks like a red thunderhawk that flies around this area.
collect Washte Pawne's Feather##5103 |goto 43.18,80.92 |q 885 |future
Also check around: |notinsticky
[44.76,78.88]
[44.46,74.76]
[46.78,79.18]
[47.63,80.29]
step
use Washte Pawne's Feather##5103
accept Washte Pawne##885
step
label "Collect_Lightning_Glands"
kill Stormhide##3238+
collect 5 Lightning Gland##4898 |q 822/1 |goto 44.88,78.18
You can find more around: |notinsticky
[44.96,75.36]
[47.81,75.13]
[47.18,79.21]
step
label "Collect_Thunderhawk_Saliva_Gland"
kill Greater Thunderhawk##3249+
collect Thunderhawk Saliva Gland##4897 |q 822/2 |goto 44.88,78.18
You can find more around: |notinsticky
[44.96,75.36]
[47.81,75.13]
[47.18,79.21]
stickystart "Kill_Baeldun_Excavators"
stickystart "Kill_Baeldun_Foremen"
step
Follow the path down |goto 46.34,85.00 < 20 |only if walking
kill Prospector Khazgorm##3392
|tip He walks around this area.
collect Khazgorm's Journal##5006 |q 843/3 |goto 47.55,85.26
He can also be around [48.33,86.22]
step
label "Kill_Baeldun_Excavators"
kill 15 Bael'dun Excavator##3374 |q 843/1 |goto 47.41,84.99
step
label "Kill_Baeldun_Foremen"
kill 5 Bael'dun Foreman##3375 |q 843/2 |goto 47.41,84.99
step
Follow the path up |goto 46.93,84.65 < 20 |only if walking
talk Gann Stonespire##3341
|tip He walks north and south along this road.
turnin Gann's Reclamation##843 |goto 46.12,81.24
accept Revenge of Gann##846 |goto 46.12,81.24
He walks between here and [46.13,75.54]
step
talk Tatternack Steelforge##3433
turnin Weapons of Choice##893 |goto 45.10,57.69
step
talk Jorn Skyseer##3387
turnin Owatanka##884 |goto 44.86,59.13
turnin Washte Pawne##885 |goto 44.86,59.13
step
talk Mangletooth##3430
turnin Betrayal from Within##879 |goto 44.55,59.24
accept Betrayal from Within##906 |goto 44.55,59.24
step
talk Thork##3429
turnin Betrayal from Within##906 |goto 51.50,30.87
step
talk Korran##3428
turnin Egg Hunt##868 |goto 51.07,29.63
step
_Destroy These Item:_
|tip They are no longer needed.
trash Silithid Egg##5058
step
talk Brewmaster Drohn##3292
turnin Chen's Empty Keg##822 |goto 62.26,38.39
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (23-24)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stonetalon Mountains",
condition_suggested=function() return level >= 23 and level <= 24 and not completedq(1068) end,
next="Leveling Guides\\Classic (12-58)\\The Barrens (24-24)",
},[[
step
talk Braelyn Firehand##4198
accept Cenarius' Legacy##1087 |goto Stonetalon Mountains 45.94,60.42
step
talk Tammra Windfield##11864
accept Cycle of Rebirth##6301 |goto 47.46,58.38
step
talk Maggran Earthbinder##11860
accept Calling in the Reserves##5881 |goto 47.20,61.15
accept Harpies Threaten##6282 |goto 47.20,61.15
step
Enter the building |goto 47.80,61.44 < 7 |walk
talk Innkeeper Jayka##7731
|tip Inside the building.
home Sun Rock Retreat |goto 47.47,62.13
stickystart "Collect_Courser_Eyes"
stickystart "Collect_Stonetalon_Sap"
step
Follow the path up |goto 44.63,61.81 < 15 |only if walking
Continue up the path |goto 44.88,63.31 < 15 |only if walking
talk Mor'rogal##11861
turnin Boulderslide Ravine##6421 |goto 47.22,64.05
step
talk Tsunaman##11862
|tip He walks around this area.
accept Elemental War##6393 |goto 47.37,64.29
step
Follow the path down |goto 48.62,63.20 < 10 |only if walking
Follow the road |goto 52.64,57.09 < 30 |only if walking
click Gaea Seed+
|tip They look like brown pine cones on the ground around this area.
|tip Be careful to avoid Sorrow Wing.
|tip It looks like a level 27 elite grey windstrider that flies around this area.
collect 10 Gaea Seed##16205 |q 6301/1 |goto 49.33,44.09
You can find more around: |notinsticky
[46.39,38.89]
[50.48,36.81]
step
label "Collect_Courser_Eyes"
Follow the path |goto 46.87,31.51 < 20 |only if walking
kill Antlered Courser##4018+
|tip They look like deer.
collect 30 Courser Eye##5585 |q 1058/3 |goto 45.07,24.08
You can find more around [39.86,10.89]
stickystart "Collect_Twilight_Whiskers"
step
kill Fey Dragon##4016+
|tip They look like small blue dragons.
|tip They are uncommon and spread out around this area.
collect Fey Dragon Scale##5583 |q 1058/4 |goto 37.41,21.06
You can find more around: |notinsticky
[39.66,13.58]
[33.14,13.21]
step
label "Collect_Stonetalon_Sap"
kill Sap Beast##4020+
|tip They look like green oozes.
|tip Corrosive Sap Beasts will not drop the quest item.
collect 5 Stonetalon Sap##5582 |q 1058/1 |goto 34.16,18.16
You can find more around [38.75,17.26]
stickystart "Kill_Sons_Of_Cenarius"
stickystart "Kill_Daughters_Of_Cenarius"
stickystart "Kill_Cenarion_Botanists"
step
label "Collect_Twilight_Whiskers"
kill Twilight Runner##4067+
|tip They look like blue jaguars with white spots.
collect 5 Twilight Whisker##5584 |q 1058/2 |goto 31.89,10.01
step
label "Kill_Sons_Of_Cenarius"
kill 4 Son of Cenarius##4057 |q 1087/1 |goto 36.09,12.57
|tip They have Treant Ally bodyguards that look like walking trees.
|tip Be careful to avoid Sentinel Amarassan, the level 27 elite night elf that walks around this area.
step
label "Kill_Daughters_Of_Cenarius"
kill 4 Daughter of Cenarius##4053 |q 1087/2 |goto 36.09,12.57
|tip Be careful to avoid Sentinel Amarassan, the level 27 elite night elf that walks around this area. |notinsticky
step
label "Kill_Cenarion_Botanists"
kill 4 Cenarion Botanist##4051 |q 1087/3 |goto 36.09,12.57
|tip Be careful to avoid Sentinel Amarassan, the level 27 elite night elf that walks around this area. |notinsticky
step
Follow the path |goto 41.62,15.97 < 20 |only if walking
Follow the path down |goto 46.49,27.53 < 30 |only if walking
Follow the road |goto 46.37,36.71 < 30 |only if walking
Continue following the road |goto 51.55,49.42 < 30 |only if walking
Follow the path up |goto 50.84,52.43 < 20 |only if walking
Jump down here |goto 48.54,57.77 < 15 |only if walking
talk Tammra Windfield##11864
turnin Cycle of Rebirth##6301 |goto 47.46,58.38
accept New Life##6381 |goto 47.46,58.38
step
talk Braelyn Firehand##4198
turnin Cenarius' Legacy##1087 |goto 45.94,60.42
step
Follow the path |goto 49.40,60.98 < 20 |only if walking
Continue following the path |goto 52.11,61.15 < 30 |only if walking
Continue following the path |goto 56.49,64.01 < 30 |only if walking
Enter the building |goto 59.04,62.24 < 7 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Further Instructions##1095 |goto 58.99,62.60
accept Gerenzo Wrenchwhistle##1096 |goto 58.99,62.60
step
kill XT:9##4074 |q 1068/2 |goto 61.80,56.23
|tip It looks like a grey metal goblin machine that walks around this area.
Also check around: |notinsticky
[62.37,52.14]
[66.41,55.81]
[69.96,56.45]
step
kill XT:4##4073 |q 1068/1 |goto 64.63,46.59
|tip It looks like a grey metal goblin machine that walks around this area.
Also check around:
[68.24,47.46]
[71.86,47.29]
step
Kill enemies around this area
|tip You are about to have to kill a more difficult level 27 enemy.
|tip It will help to be a level higher.
Reach Level 24 |ding 24 |goto 64.63,46.59
You can find more around: |notinsticky
[68.24,47.46]
[71.86,47.29]
step
Follow the path up |goto 68.94,39.83 < 15 |only if walking
Run down the stairs |goto 64.55,38.04 < 10 |only if walking
kill Gerenzo Wrenchwhistle##4202
|tip Up on the wooden platform.
|tip He can spawn in other locations on this platform, so search around if he's not here.
|tip If you have trouble, try to find someone to help you.
|tip You can also try to kite him up and off the wooden platform, so you can fight him alone.
collect Gerenzo's Mechanical Arm##5736 |q 1096/1 |goto 64.49,40.25
step
Enter the building |goto 59.04,62.24 < 7 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Gerenzo Wrenchwhistle##1096 |goto 58.99,62.60
step
Follow the path |goto 60.68,63.53 < 30 |only if walking
Follow the road |goto 59.91,72.17 < 30 |only if walking
Follow the path up |goto 71.86,91.75 < 15 |only if walking
Enter the cave |goto 74.23,97.12 < 10 |walk
talk Witch Doctor Jin'Zil##3995
|tip Inside the cave.
turnin Jin'Zil's Forest Magic##1058 |goto 74.54,97.94
step
Follow the path up |goto 72.89,93.73 < 10 |only if walking
talk Seereth Stonebreak##4049
turnin Shredding Machines##1068 |goto The Barrens 35.26,27.88
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\The Barrens (24-25)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\The Barrens",
condition_suggested=function() return level == 24 and not completedq(849) end,
next="Leveling Guides\\Classic (12-58)\\Thousand Needles (24-24)",
},[[
stickystart "Collect_Wood_Pulp"
stickystart "Collect_Sodium_Nitrate"
step
Follow the path up |goto The Barrens 48.01,83.10 < 20 |only if walking
Kill Bael'dun enemies around this area
|tip Inside and outside the building.
|tip They respawn fairly quickly, so it's safer to stay outside the building if you're solo.
collect 6 Nitroglycerin##5017 |q 846/1 |goto The Barrens 48.75,84.49
step
label "Collect_Wood_Pulp"
Kill Bael'dun enemies around this area |notinsticky
|tip Inside and outside the building. |notinsticky
|tip They respawn fairly quickly, so it's safer to stay outside the building if you're solo. |notinsticky
collect 6 Wood Pulp##5018 |q 846/2 |goto 48.75,84.49
step
label "Collect_Sodium_Nitrate"
Kill Bael'dun enemies around this area |notinsticky
|tip Inside and outside the building. |notinsticky
|tip They respawn fairly quickly, so it's safer to stay outside the building if you're solo. |notinsticky
collect 6 Sodium Nitrate##5019 |q 846/3 |goto 48.75,84.49
step
talk Gann Stonespire##3341
|tip He walks north and south along this road.
turnin Revenge of Gann##846 |goto 46.12,81.24
accept Revenge of Gann##849 |goto 46.12,81.24
He walks between here and [46.13,75.54]
step
Follow the path down |goto 46.30,84.97 < 20 |only if walking
click Bael Modan Flying Machine
|tip At the top of the wooden platform.
|tip You can click it from far away.
Destroy the Bael Modan Flying Machine |q 849/1 |goto 47.00,85.60
step
Follow the path up |goto 46.53,85.38 < 20 |only if walking
talk Gann Stonespire##3341
|tip He walks north and south along this road.
turnin Revenge of Gann##849 |goto 46.12,81.24
He walks between here and [46.13,75.54]
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Thousand Needles (24-25)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Thousand Needles",
condition_suggested=function() return level >= 24 and level <= 25 and not completedq(4841) end,
next="Leveling Guides\\Classic (12-58)\\Ashenvale (25-26)",
},[[
step
Follow the road |goto The Barrens 44.52,86.66 < 30 |only if walking
talk Grish Longrunner##12576
|tip This npc gets killed fairly often by Alliance players entering Thousand Needles.
|tip If he's not here, just wait until he respawns.
turnin Calling in the Reserves##5881 |goto Thousand Needles 31.86,21.66
step
talk Brave Moonhorn##10079
|tip This npc gets killed fairly often by Alliance players entering Thousand Needles.
|tip If he's not here, just wait until he respawns.
accept Message to Freewind Post##4542 |goto 32.24,22.16
step
Ride an elevator down and follow the road |goto 30.94,28.80 < 30 |only if walking
Continue following the road |goto 29.81,41.92 < 30 |only if walking
Ride the elevator up |goto 46.83,47.39 < 20 |only if walking
talk Nyse##4317
|tip Since we were already in the southern part of the Barrens, we are running to get this flight path.
|tip It will be used later to return quickly, to continue questing.
fpath Freewind Post |goto 45.14,49.11
step
talk Hagar Lightninghoof##10539
accept Alien Egg##4821 |goto 44.64,50.29
step
talk Cliffwatcher Longhorn##10537
|tip He walks around this area.
turnin Message to Freewind Post##4542 |goto 45.65,50.80
accept Pacify the Centaur##4841 |goto 45.65,50.80
stickystart "Kill_Galak_Wranglers"
stickystart "Kill_Galak_Windchasers"
step
Ride the elevator down |goto 45.96,49.77 < 15 |only if walking
kill 12 Galak Scout##4094 |q 4841/1 |goto 45.73,41.01
You can find more around [41.63,37.69]
step
label "Kill_Galak_Wranglers"
kill 10 Galak Wrangler##4093 |q 4841/2 |goto 45.73,41.01
You can find more around [41.63,37.69]
step
Kill enemies around this area
Reach Level 25 |ding 25 |goto 45.73,41.01
You can find more around [41.63,37.69]
step
label "Kill_Galak_Windchasers"
kill 6 Galak Windchaser##4096 |q 4841/3 |goto 45.73,41.01
You can find more around [41.63,37.69]
step
Ride the elevator up |goto 46.83,47.39 < 20 |only if walking
talk Cliffwatcher Longhorn##10537
|tip He walks around this area.
turnin Pacify the Centaur##4841 |goto 45.65,50.80
accept Grimtotem Spying##5064 |goto 45.65,50.80
step
talk Elu##10377
|tip He walks around this area.
accept Wind Rider##4767 |goto 44.93,48.93
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Ashenvale (25-26)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ashenvale",
condition_suggested=function() return level >= 25 and level <= 26 and not completedq(2480) end,
next="Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (26-27)",
},[[
step
talk Muglash##12717
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Vorsha the Lasher##6641 |goto Ashenvale 12.06,34.63 |noautoaccept
|tip We are doing this quest now, so you can kill enemies while you walk without them being grey, and worth no experience.
step
Watch the dialogue
|tip Follow Muglash and protect him as he walks.
|tip Kill enemies as you walk, to gain experience along the way.
click Naga Brazier
|tip It looks like a purple flame brazier.
|tip Click it when Muglash tells you to.
Kill the enemies that attack in waves
kill Vorsha the Lasher##12940
Defeat Vorsha the Lasher |q 6641/1 |goto 9.62,27.66
step
talk Warsong Runner##12863
turnin Vorsha the Lasher##6641 |goto 12.22,34.21
step
talk Mastok Wrilehiss##12737
accept Stonetalon Standstill##25 |goto 73.67,60.01
step
Enter the building |goto 73.72,60.94 < 7 |walk
talk Innkeeper Kaylisk##12196
|tip Inside the building.
home Splintertree Post |goto 73.99,60.64
step
Follow the path |goto 73.51,63.53 < 15 |only if walking
talk Kuray'bin##12867
accept Ashenvale Outrunners##6503 |goto 71.10,68.12
step
kill 9 Ashenvale Outrunner##12856 |q 6503/1 |goto 74.63,71.67
|tip They look like stealthed night elves around this area.
|tip They tend be near the trees around this area.
|tip Be careful to avoid Sharptalon.
|tip It looks like a level 31, large blue bird that flies low to the ground around this area.
You can find more around: |notinsticky
[71.07,75.21]
[76.89,71.90]
step
Follow the path |goto 70.09,75.49 < 20 |only if walking
talk Torek##12858
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
|tip Make sure 3 Splintertree Raiders are next to him before talking to him.
|tip They will not help you fight if they are not there.
accept Torek's Assault##6544 |goto 68.34,75.30 |noautoaccept
step
Watch the dialogue
|tip Follow Torek and protect him as he walks.
|tip He eventually walks to this location.
|tip A group of 4 enemies will spawn inside the building, so be prepared.
|tip Torek must survive.
kill Duriel Moonfire##12860
Take Silverwing Outpost |q 6544/1 |goto 64.66,75.34
|tip If you have trouble, try to find someone to help you.
stickystart "Collect_Befouled_Water_Globe"
stickystart "Kill_Befouled_Water_Elementals"
step
Follow the path down |goto 61.80,73.24 < 15 |only if walking
Follow the path |goto 58.77,72.47 < 10 |only if walking
Continue following the path |goto 55.17,69.40 < 30 |only if walking
Scout the Gazebo on Mystral Lake that Overlooks the Nearby Alliance Outpost |q 25/2 |goto 48.92,69.57
|tip Kill enemies as you walk, to gain experience along the way.
step
label "Collect_Befouled_Water_Globe"
kill Tideress##12759
|tip It looks like a darker green colored water elemental that moves around this area.
|tip It moves in the water of the whole lake, and on this small island, so you may need to search around for it.
collect Befouled Water Globe##16408 |goto 48.11,69.78 |q 1918 |future
step
use the Befouled Water Globe##16408
accept The Befouled Element##1918
step
label "Kill_Befouled_Water_Elementals"
kill 12 Befouled Water Elemental##3917 |q 25/1 |goto 48.11,69.78
|tip You can find more in the water around this area.
step
map Ashenvale
path	follow strict;	loop;	ants curved;	dist 30
path	43.34,68.43		41.75,68.07		39.83,65.29		39.62,63.45
path	40.00,65.52		41.18,65.80		42.85,63.11		44.39,64.54
path	43.16,63.81		41.33,66.84		42.10,68.41
kill Ursangous##12678
|tip He looks like a grey night elf druid bear that walks around this area.
collect Ursangous's Paw##16303 |q 23 |future
step
use Ursangous's Paw##16303
accept Ursangous's Paw##23
step
talk Mastok Wrilehiss##12737
turnin Stonetalon Standstill##25 |goto 73.66,60.01
turnin The Befouled Element##1918 |goto 73.66,60.01
accept Je'neu of the Earthen Ring##824 |goto 73.66,60.01
step
talk Pixel##12724
accept Satyr Horns##6441 |goto 73.06,61.48
step
talk Senani Thunderheart##12696
turnin Ursangous's Paw##23 |goto 73.78,61.46
step
talk Ertog Ragetusk##12877
turnin Torek's Assault##6544 |goto 73.03,62.47
step
Follow the path |goto 73.51,63.52 < 15 |only if walking
talk Kuray'bin##12867
turnin Ashenvale Outrunners##6503 |goto 71.10,68.12
step
Follow the path up |goto 71.19,66.53 < 15 |only if walking
Follow the path |goto 70.77,63.18 < 20 |only if walking
Follow the path up |goto 72.45,50.28 < 20 |only if walking
Kill Felmusk enemies around this area
|tip They look like satyrs.
|tip Some of them are stealthed around this area, so be careful.
collect 16 Satyr Horns##5481 |q 6441/1 |goto 68.58,53.57
You can find more around: |notinsticky
[66.77,55.65]
[66.36,52.48]
step
Kill enemies around this area
|tip Some of them are stealthed around this area, so be careful.
Reach Level 26 |ding 26 |goto 68.58,53.57
You can find more around: |notinsticky
[66.77,55.65]
[66.36,52.48]
stickystart "Collect_Shadumbras_Head"
step
Jump down and follow the road |goto 63.92,52.01 < 50 |only if walking
Follow the path |goto 60.98,56.01 < 30 |only if walking
kill Laughing Sister##4054+
collect Etched Phial##5867 |goto 58.64,55.75 |q 1195
You can find more around [60.63,52.19]
step
label "Collect_Shadumbras_Head"
kill Shadumbra##12677
|tip It looks like a black panther that walks around this area.
collect Shadumbra's Head##16304 |goto 60.76,52.01 |q 24 |future
Also check around: |notinsticky
[57.44,56.03]
[54.45,54.80]
step
use Shadumbra's Head##16304
accept Shadumbra's Head##24
step
Follow the road |goto 59.75,63.28 < 30 |only if walking
Follow the path down |goto 61.54,68.35 < 20 |only if walking
use the Etched Phial##5867
collect Filled Etched Phial##5868 |q 1195/1 |goto 60.20,72.90
step
Follow the path up |goto 59.60,68.28 < 15 |only if walking
Follow the road |goto 62.06,68.58 < 30 |only if walking
Follow the path |goto 71.09,69.29 < 20 |only if walking
Follow the path |goto 73.51,63.52 < 15 |only if walking
talk Senani Thunderheart##12696
turnin Shadumbra's Head##24 |goto 73.78,61.46
step
talk Pixel##12724
turnin Satyr Horns##6441 |goto 73.06,61.48
step
talk Je'neu Sancrea##12736
|tip Inside the building.
turnin Je'neu of the Earthen Ring##824 |goto 11.57,34.29
step
talk Karang Amakkar##12757
accept Between a Rock and a Thistlefur##216 |goto 11.90,34.53
step
talk Mitsuwa##12721
accept Troll Charm##6462 |goto 11.65,34.85
stickystart "Kill_Thistlefur_Shamans"
step
Follow the path |goto 14.52,30.91 < 30 |only if walking
Follow the road |goto 25.53,37.73 < 15 |only if walking
Continue following the road |goto 26.23,47.19 < 30 |only if walking
Follow the path |goto 30.30,46.76 < 30 |only if walking
kill 12 Thistlefur Avenger##3925 |q 216/1 |goto 31.29,44.45
You can find more around: |notinsticky
[32.36,42.50]
[33.22,39.12]
[35.85,32.36]
step
label "Kill_Thistlefur_Shamans"
kill 12 Thistlefur Shaman##3924 |q 216/2 |goto 31.29,44.45
You can find more around: |notinsticky
[32.36,42.50]
[33.22,39.12]
[35.85,32.36]
step
Follow the path up |goto 37.48,32.25 < 20 |only if walking
Enter the cave |goto 38.41,30.57 < 10 |walk
Follow the path |goto 39.47,30.99 < 10 |walk
click Troll Chest+
|tip They look like small brown wooden boxes on the ground all throughout the cave.
collect 8 Troll Charm##16602 |q 6462/1 |goto 39.94,32.08
step
Follow the path |goto 40.28,32.16 < 10 |walk
Continue following the path |goto 40.88,33.58 < 10 |walk
talk Ruul Snowhoof##12818
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Freedom to Ruul##6482 |goto 41.49,34.50 |noautoaccept
|tip Kill enemies to clear a path to the cave exit BEFORE accepting this quest.
|tip You will be attacked by a group of 3 enemies before you leave the cave.
step
Escort Ruul from the Thistlefurs |q 6482/1 |goto 38.56,37.47
|tip Follow Ruul Snowhoof and protect him as he walks.
|tip You will be attacked by a group of 3 enemies before leaving the cave, and near the end of the escort.
|tip He leaves the cave and eventually walks to this location.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
talk Yama Snowhoof##12837
|tip Inside the building.
turnin Freedom to Ruul##6482 |goto 74.11,60.92
step
talk Karang Amakkar##12757
turnin Between a Rock and a Thistlefur##216 |goto 11.90,34.53
step
talk Mitsuwa##12721
|tip Inside the building.
turnin Troll Charm##6462 |goto 11.65,34.85
step
Follow the path |goto The Barrens 62.37,39.44 < 15 |only if walking
Follow the path onto the ship |goto The Barrens 64.18,45.49 < 7 |only if walking
click Buccaneer's Strongbox+
|tip They look like grey metal chests.
|tip Inside the ship, on the middle level.
|tip Keep clicking them until you reach Lockpicking skill level 75.
Click Here After Reaching Level 75 Lockpicking |confirm |goto The Barrens 65.07,45.44 |q 2480 |future
|only if Rogue
step
talk Shenthul##3401
|tip Inside the tent, inside the Cleft of Shadow.
accept The Shattered Salute##2460 |goto Orgrimmar 43.05,53.74
|only if Rogue
step
Watch the dialogue
|tip Inside the tent, inside the Cleft of Shadow.
|tip Wait for Shenthul to salute you (you will see him perform a hand movement).
Perform the Shattered Salute |q 2460/1 |goto 43.05,53.74
|tip Target Shenthul and type "/salute" into your chat to perform the Salute emote.
|only if Rogue
step
talk Shenthul##3401
|tip Inside the tent, inside the Cleft of Shadow.
turnin The Shattered Salute##2460 |goto 43.05,53.74
accept Deep Cover##2458 |goto 43.05,53.74
|only if Rogue
step
Follow the road |goto The Barrens 52.37,27.62 < 30 |only if walking
Follow the path |goto The Barrens 54.47,10.25 < 50 |only if walking
use the Flare Gun##8051
|tip Use it while targeting Taskmaster Fizzule nearby to the north.
|tip You must use it TWICE in a row.
|tip After shooting 2 flares, perform the "/salute" emote while still targeting Taskmaster Fizzule.
Signal Taskmaster Fizzule |q 2458/1 |goto The Barrens 55.47,6.08
|only if Rogue
step
talk Taskmaster Fizzule##7233
turnin Deep Cover##2458 |goto 55.44,5.56
accept Mission: Possible But Not Probable##2478 |goto 55.44,5.56
|only if Rogue
step
collect Silixiz's Tower Key##8072 |q 2478/5 |goto 54.80,5.97
|tip Use your "Pickpocket" ability on Foreman Silixiz.
|only if Rogue
step
Enter the building |goto 54.87,5.86 < 7 |walk
kill 2 Mutated Venture Co. Drone##7310 |q 2478/1 |goto 54.71,5.73
|tip Inside the building, on the bottom floor.
|only if Rogue
step
kill 2 Venture Co. Patroller##7308 |q 2478/3 |goto 54.81,5.59
|tip Upstairs inside the building, on the lower middle floor.
|only if Rogue
step
kill 2 Venture Co. Lookout##7307 |q 2478/2 |goto 54.63,5.64
|tip Upstairs on the balcony of the building, on the upper middle floor.
|only if Rogue
step
kill Grand Foreman Puzik Gallywix##7288
|tip Upstairs inside the building, on the top floor.
|tip He is elite, but you should be able to kill him.
|tip If you have trouble, try to find someone to help you.
collect Cache of Zanzil's Altered Mixture##8073 |q 2478/6 |goto 54.75,5.59
collect Gallywix's Head##8074 |q 2478/4 |goto 54.75,5.59
|only if Rogue
step
click Gallywix's Lockbox
|tip Upstairs inside the building, on the top floor.
|tip You will get a debuff after opening it.
Receive the Touch of Zanzil |havebuff 136230 |goto 54.75,5.55 |q 2478
|only if Rogue
step
Follow the path |goto 54.71,9.86 < 50 |only if walking
Follow the road |goto 52.13,18.67 < 30 |only if walking
talk Shenthul##3401
|tip Inside the tent, inside the Cleft of Shadow.
turnin Mission: Possible But Not Probable##2478 |goto Orgrimmar 43.05,53.74
accept Hinott's Assistance##2479 |goto Orgrimmar 43.05,53.74
|only if Rogue
step
_Note for Rogues:_
|tip Now we need to travel to Tarren Mill in Hillsbrad Foothills.
|tip That's where you will complete your class quest.
|tip It's a long run, but it will improve your leveling by allowing you to learn to make Poisons.
Click Here to Continue |confirm |q 2480 |future
|only if Rogue
step
Enter Undercity |goto Tirisfal Glades 61.86,65.03 < 15 |only if walking
talk Michael Garrett##4551
fpath Undercity |goto Undercity 63.28,48.58
|only if Rogue
step
Leave Undercity |goto 66.19,0.63 < 10 |walk
Follow the road |goto Tirisfal Glades 56.17,65.88 < 30|only if walking
Continue following the road |goto Silverpine Forest 58.14,12.21 < 30 |only if walking
Cross the bridge |goto Silverpine Forest 49.75,28.82 < 15 |only if walking
Follow the road |goto Silverpine Forest 48.71,38.60 < 30 |only if walking
talk Karos Razok##2226
fpath The Sepulcher |goto Silverpine Forest 45.62,42.59
|only if Rogue
step
Follow the road |goto Silverpine Forest 46.48,41.31 < 20 |only if walking
Continue following the road |goto Silverpine Forest 52.85,43.92 < 30 |only if walking
Continue following the road |goto Silverpine Forest 53.88,73.53 < 30 |only if walking
Enter Hillsbrad Foothills |goto Silverpine Forest 66.87,80.22 < 30 |only if walking
Follow the road |goto Hillsbrad Foothills 57.51,36.04 < 30 |only if walking
talk Zarise##2389
fpath Tarren Mill |goto Hillsbrad Foothills 60.14,18.62
|only if Rogue
step
Enter the building |goto 61.50,19.43 < 7 |walk
talk Serge Hinott##2391
|tip Inside the building.
turnin Hinott's Assistance##2479 |goto Hillsbrad Foothills 61.63,19.19
accept Hinott's Assistance##2480 |goto Hillsbrad Foothills 61.63,19.19
|only if Rogue
step
Watch the dialogue
|tip Inside the building.
Complete the Cure |q 2480/1 |goto 61.49,18.95
|only if Rogue
step
talk Serge Hinott##2391
|tip Inside the building.
turnin Hinott's Assistance##2480 |goto 61.58,18.97
|only if Rogue
step
use Hinott's Oil##8095
Remove the Touch of Zanzil |nobuff 136230
|only if Rogue
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (26-27)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stonetalon Mountains",
condition_suggested=function() return level >= 26 and level <= 27 and not completedq(1195) end,
next="Leveling Guides\\Classic (12-58)\\Thousand Needles (27-29)",
},[[
stickystart "Collect_Incendrites"
stickystart "Kill_Bloodfury_Harpies"
stickystart "Kill_Bloodfury_Ambushers"
stickystart "Kill_Bloodfury_Slayers"
stickystart "Kill_Bloodfury_Roguefeathers"
step
Follow the path up |goto Stonetalon Mountains 44.63,61.81 < 15 |only if walking
Follow the path down |goto Stonetalon Mountains 43.53,65.33 < 15 |only if walking
Continue down the path |goto Stonetalon Mountains 41.16,70.69 < 20 |only if walking
Follow the path |goto Stonetalon Mountains 37.90,67.87 < 20 |only if walking
click Gaea Dirt Mound+
|tip They look like piles of green and brown dirt on the ground around this area.
Plant #10# Gaea Seeds |q 6381/1 |goto Stonetalon Mountains 32.25,68.16
step
label "Collect_Incendrites"
Kill enemies around this area
|tip Only enemies that look like fire elementals will drop the quest item.
collect 10 Incendrites##16312 |q 6393/1 |goto 29.65,64.44
You can find more around: |notinsticky
[31.27,73.77]
[35.92,72.58]
[34.86,64.96]
step
label "Kill_Bloodfury_Harpies"
kill 7 Bloodfury Harpy##4022 |q 6282/1 |goto 34.51,62.27
You can find more around: |notinsticky
[32.26,60.12]
[32.44,65.30]
step
label "Kill_Bloodfury_Ambushers"
kill 7 Bloodfury Ambusher##4025 |q 6282/2 |goto 30.24,62.84
You can find more around: |notinsticky
[34.51,62.27]
[32.44,65.30]
step
label "Kill_Bloodfury_Slayers"
kill 7 Bloodfury Slayer##4024 |q 6282/3 |goto 35.96,68.52
You can find more around [28.83,69.50]
step
label "Kill_Bloodfury_Roguefeathers"
kill 7 Bloodfury Roguefeather##4023 |q 6282/4 |goto 35.96,68.52
You can find more around [28.83,69.50]
step
Kill enemies around this area
Reach Level 27 |ding 27 |goto 35.96,68.52
You can find more around [28.83,69.50]
step
Follow the path up |goto 37.93,67.96 < 15 |only if walking
Continue up the path |goto 41.37,70.24 < 15 |only if walking
Follow the path down |goto 43.62,65.04 < 15 |only if walking
Follow the path up |goto 44.93,63.37 < 15 |only if walking
talk Tsunaman##11862
|tip It walks around this area.
turnin Elemental War##6393 |goto 47.19,64.42
step
talk Maggran Earthbinder##11860
turnin Harpies Threaten##6282 |goto 47.19,61.14
accept Bloodfury Bloodline##6283 |goto 47.19,61.14
step
talk Tammra Windfield##11864
turnin New Life##6381 |goto 47.46,58.38
step
Follow the path up |goto 44.63,61.81 < 15 |only if walking
Follow the path down |goto 43.53,65.33 < 15 |only if walking
Continue down the path |goto 41.16,70.68 < 20 |only if walking
Follow the path |goto 37.90,67.87 < 20 |only if walking
kill Bloodfury Ripper##12579
|tip She looks like a blue harpy that flies around this area.
collect Bloodfury Ripper's Remains##16190 |q 6283/1 |goto 30.76,61.92
step
Follow the path up |goto 37.93,67.96 < 15 |only if walking
Continue up the path |goto 41.37,70.24 < 15 |only if walking
Follow the path down |goto 43.62,65.04 < 15 |only if walking
Follow the path |goto 44.86,61.13 < 20 |only if walking
talk Maggran Earthbinder##11860
turnin Bloodfury Bloodline##6283 |goto 47.20,61.15
step
talk Zangen Stonehoof##4721
turnin The Sacred Flame##1195 |goto Thunder Bluff 54.97,51.39
accept The Sacred Flame##1196 |goto Thunder Bluff 54.97,51.39
step
Enter the building |goto 44.99,62.09 < 7 |walk
talk Innkeeper Pala##6746
|tip Inside the building.
home Thunder Bluff |goto 45.82,64.71
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Thousand Needles (27-29)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Thousand Needles",
condition_suggested=function() return level >= 27 and level <= 29 and not completedq(1131) end,
next="Leveling Guides\\Classic (12-58)\\Hillsbrad Foothills (29-30)",
},[[
step
Enter the building |goto Thousand Needles 45.95,51.07 < 7 |walk
talk Rau Cliffrunner##4722
|tip Inside the building.
turnin The Sacred Flame##1196 |goto Thousand Needles 46.14,51.72
accept The Sacred Flame##1197 |goto Thousand Needles 46.14,51.72
step
Ride an elevator down |goto 45.94,49.78 < 10 |only if walking
Follow the road |goto 49.41,52.47 < 30 |only if walking
click Alien Egg
|tip It looks like a large white egg sitting upright on the ground.
|tip It can spawn in multiple locations.
collect Alien Egg##12467 |q 4821/1 |goto 52.33,55.21
Also check around: |notinsticky
[56.35,50.36]
step
Follow the path up |goto 54.68,44.78 < 15 |only if walking
Enter the cave |goto 53.67,42.51 < 10 |walk
talk Dorn Plainstalker##2986
|tip Inside the cave.
accept Test of Faith##1149 |goto 53.94,41.48
step
Watch the dialogue
Teleport to the Plateau |goto 26.43,31.29 < 20 |noway |c |q 1149
step
Jump down here |goto 26.43,32.41
|tip You won't die.
Return to Dorn Plainstalker |goto 53.89,41.62 < 20 |noway |c |q 1149
step
talk Dorn Plainstalker##2986
|tip Inside the cave.
turnin Test of Faith##1149 |goto 53.94,41.48
step
Leave the cave |goto 53.66,42.69 < 10 |walk
Enter the cave |goto 44.05,37.34 < 10 |walk
Follow the path |goto 44.24,35.60 < 7 |walk
Follow the path |goto 43.46,35.28 < 7 |walk
Continue following the path |goto 42.06,34.68 < 7 |walk
click Ancient Brazier
|tip Inside the cave.
|tip If you can't kill both of the guards at the same time, kite them away to kill them one at a time.
collect Cloven Hoof##5869 |q 1197/1 |goto 42.01,31.51
step
Follow the path up |goto 41.69,32.65 < 7 |walk
Continue up the path |goto 42.10,34.77 < 7 |walk
Follow the path |goto 44.37,35.77 < 7 |walk
Leave the cave |goto 44.02,37.39 < 10 |walk
Ride an elevator up |goto 46.87,47.34 < 20 |only if walking
talk Hagar Lightninghoof##10539
turnin Alien Egg##4821 |goto 44.64,50.29
accept Serpent Wild##4865 |goto 44.64,50.29
step
Enter the building |goto 45.94,51.06 < 7 |walk
talk Rau Cliffrunner##4722
|tip Inside the building.
turnin The Sacred Flame##1197 |goto 46.14,51.71
step
click Wanted Poster - Arnak Grimtotem
accept Wanted - Arnak Grimtotem##5147 |goto 46.00,50.84
step
Ride an elevator down |goto 45.95,49.78 < 10 |only if walking
Follow the road |goto 44.57,46.45 < 30 |only if walking
talk Motega Firemane##10428
|tip He walks around this area.
turnin Serpent Wild##4865 |goto 21.54,32.35
accept Sacred Fire##5062 |goto 21.54,32.35
step
Follow the path up |goto 31.24,36.88 < 10 |only if walking
Cross the hanging bridge |goto 33.13,35.33 < 7 |only if walking
Cross the hanging bridge |goto 31.97,31.32 < 7 |only if walking
Cross the hanging bridge |goto 33.27,28.56 < 7 |only if walking
Cross the hanging bridge |goto 34.94,31.85 < 7 |only if walking
Enter the building |goto  34.11,39.49 < 7 |walk
click Document Chest
|tip Inside the building.
collect Secret Note #2##12766 |q 5064/2 |goto 33.78,39.97
step
Cross the hanging bridge |goto 35.71,39.40 < 7 |only if walking
Enter the building |goto 38.97,41.15 < 7 |walk
click Document Chest
|tip Inside the building.
collect Secret Note #3##12768 |q 5064/3 |goto 39.32,41.52
step
Cross the hanging bridge |goto 38.32,40.38 < 7 |c |q 5064
step
Kill enemies around this area
Reach Level 28 |ding 28 |goto 33.59,36.84
step
Cross the hanging bridge |goto 33.26,36.30 < 7 |only if walking
click Document Chest
collect Secret Note #1##12765 |q 5064/1 |goto 31.80,32.59
step
Jump down carefully here |goto 32.00,31.98 < 7 |only if walking
Cross the hanging bridge |goto 32.90,32.49 < 7 |only if walking
Follow the path down |goto 33.08,35.53 < 10 |only if walking
click Incendia Agave+
|tip They look like yellow-brown spikey plants on the ground around the water, and underwater, around this area.
collect 10 Incendia Agave##12732 |q 5062/1 |goto 33.37,32.86
You can find more around: |notinsticky
[35.62,35.09]
[36.84,37.54]
step
talk Magatha Grimtotem##4046
|tip Inside the tent.
turnin Sacred Fire##5062 |goto Thunder Bluff 69.86,30.92
accept Arikara##5088 |goto Thunder Bluff 69.86,30.92
step
talk Cliffwatcher Longhorn##10537
|tip He walks around this area.
turnin Grimtotem Spying##5064 |goto Thousand Needles 45.65,50.80
step
Enter the building |goto 45.94,51.07 < 7 |walk
talk Innkeeper Abeqwa##11116
|tip Inside the building.
home Freewind Post |goto 46.07,51.51
step
Ride an elevator down |goto 45.95,49.78 < 10 |only if walking
Follow the path up |goto 31.24,36.88 < 10 |only if walking
Cross the hanging bridge |goto 33.13,35.33 < 7 |only if walking
Cross the hanging bridge |goto 31.97,31.32 < 7 |only if walking
Cross the hanging bridge |goto 33.24,28.50 < 7 |only if walking
Cross the hanging bridge |goto 35.67,30.99 < 7 |only if walking
Cross the hanging bridge |goto 37.15,33.10 < 7 |only if walking
click Sacred Fire of Life
|tip Clear the area of enemies first.
Light the Sacred Fire of Life |q 5088/2 |goto 38.02,35.32
step
kill Arikara##10882
collect Arikara Serpent Skin##12925 |q 5088/1 |goto 38.29,35.54
step
Cross the hanging bridge |goto 37.72,35.00 < 7 |only if walking
Cross the hanging bridge |goto 37.62,31.50 < 7 |only if walking
kill Arnak Grimtotem##10896
|tip He walks around this area.
collect Arnak's Hoof##12884 |q 5147/1 |goto 38.08,26.85
step
talk Lakota Windsong##10646
|tip This is an escort quest.
|tip If she's not here, someone else may be escorting her.
|tip Wait until she respawns.
accept Free at Last##4904 |goto 37.99,26.59 |noautoaccept
step
Watch the dialogue
|tip Follow Lakota Windsong and protect her as she walks.
|tip Try to clear the path in front of her, as much as you can.
|tip You will be attacked by 2 enemies that spawn on each plateau as you walk.
|tip She eventually walks to this location.
|tip If you have trouble, try to get someone to help you, or skip the quest.
Escort Lakota Windsong from the Darkcloud Pinnacle |q 4904/1 |goto 30.97,37.09
step
talk Motega Firemane##10428
turnin Arikara##5088 |goto 21.55,32.35
step
Follow the path up |goto 14.75,32.83 < 10 |only if walking
click Highperch Wyvern Egg+
|tip They look like large eggs with blue spots on them on the ground around this area.
collect 10 Highperch Wyvern Egg##12356 |q 4767/1 |goto 11.22,36.01
step
Follow the path up |goto 13.17,39.51 < 10 |only if walking
talk Pao'ka Swiftmountain##10427
|tip This is an escort quest.
|tip If he's not here, someone else may be escorting him.
|tip Wait until he respawns.
accept Homeward Bound##4770 |goto 17.89,40.57 |noautoaccept
step
Watch the dialogue
|tip Follow Pao'ka Swiftmountain and protect him as he walks.
|tip Try to clear the path as he walks, as much as you can.
|tip A group of 3 wyverns will ambush you once you reach the wide open area, so be ready.
|tip He eventually walks to this location.
|tip If you find it too difficult, try to get someone to help you, or skip the quest.
Escort Pao'ka Swiftmountain to Safety |q 4770/1 |goto 15.16,32.67
step
map Thousand Needles
path	follow loose;	loop;	ants curved;	dist 30
path	18.21,26.63		17.18,29.62		14.66,30.75		11.08,22.60
path	13.29,19.81		14.83,19.58		17.19,18.92		18.71,24.78
kill Steelsnap##4548
|tip He looks like a brown hyena that walks around this area with 2 purple hyena guards.
|tip If you need to, kite him away from his bodyguards, so you can fight him alone.
collect Steelsnap's Rib##5837 |q 1131/1
step
map Thousand Needles
path	follow loose;	loop;	ants curved;	dist 30
path	18.02,26.90		22.84,31.56		25.28,34.25		29.62,33.67
path	31.58,30.56		33.09,30.70		35.02,28.28		33.92,25.74
path	30.81,23.83		27.60,23.15		25.09,23.65		20.54,22.11
path	15.80,23.14		15.22,25.55
kill Galak Messenger##10617
|tip He looks like a black centaur that runs quickly around this area in a large clockwise path.
|tip If you don't want to run around trying to find him, just stand on the road near the bottom of the big elevator lifts on the border of Thousand Needles and The Barrens.
|tip He will eventually run near there.
collect Assassination Note##12564 |q 4881 |future
step
use the Assassination Note##12564
accept Assassination Plot##4881
step
talk Motega Firemane##10428
|tip He walks around this area.
turnin Homeward Bound##4770 |goto 21.55,32.35
step
talk Kanati Greycloud##10638
turnin Assassination Plot##4881 |goto 21.26,32.07
accept Protect Kanati Greycloud##4966 |goto 21.26,32.07
|tip You will be attacked by a group of 3 enemies, so be ready.
step
Kill the enemies that attack
Protect Kanati Greycloud |q 4966/1 |goto 21.10,31.21
step
talk Kanati Greycloud##10638
turnin Protect Kanati Greycloud##4966 |goto 21.26,32.07
step
talk Thalia Amberhide##10645
|tip Inside the building.
turnin Free at Last##4904 |goto 45.97,51.61
step
talk Cliffwatcher Longhorn##10537
|tip He walks around this area.
turnin Wanted - Arnak Grimtotem##5147 |goto 45.65,50.80
step
talk Elu##10377
|tip He walks around this area.
turnin Wind Rider##4767 |goto Thousand Needles 44.93,48.93
step
talk Melor Stonehoof##3441
turnin Steelsnap##1131 |goto Thunder Bluff 61.53,80.90
accept Frostmaw##1136 |goto Thunder Bluff 61.53,80.90
step
Enter the building |goto 45.78,58.83 < 7 |walk
talk Torn##2996
|tip Inside the building.
|tip Put these items in the bank.
bank Kodo Skin Scroll##5838 |goto 47.62,58.57 |q 1136
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Hillsbrad Foothills (29-30)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hillsbrad Foothills",
condition_suggested=function() return level >= 29 and level <= 30 and not completedq(567) end,
next="Leveling Guides\\Classic (12-58)\\Arathi Highlands (30-30)",
},[[
step
Enter Undercity |goto Tirisfal Glades 61.86,65.03 < 15 |only if walking
talk Michael Garrett##4551
fpath Undercity |goto Undercity 63.28,48.58
|only if not Rogue or Shaman
step
Leave Undercity |goto 66.19,0.63 < 10 |walk
Follow the road |goto Tirisfal Glades 56.17,65.88 < 30|only if walking
Continue following the road |goto Silverpine Forest 58.14,12.21 < 30 |only if walking
Cross the bridge |goto Silverpine Forest 49.75,28.82 < 15 |only if walking
Follow the road |goto Silverpine Forest 48.71,38.60 < 30 |only if walking
talk Karos Razok##2226
fpath The Sepulcher |goto Silverpine Forest 45.62,42.59
|only if not Rogue or Shaman
step
talk Apothecary Renferrel##1937
accept Journey to Hillsbrad Foothills##493 |goto Silverpine Forest 42.80,40.86
|only if not Rogue or Shaman
step
Follow the road |goto Silverpine Forest 46.48,41.31 < 20 |only if walking
Continue following the road |goto Silverpine Forest 52.85,43.92 < 30 |only if walking
Continue following the road |goto Silverpine Forest 53.88,73.53 < 30 |only if walking
Enter Hillsbrad Foothills |goto Silverpine Forest 66.87,80.22 < 30 |only if walking
talk Deathstalker Lesh##2214
accept Time To Strike##494 |goto Hillsbrad Foothills 20.78,47.40
|only if not Rogue or Shaman
step
talk Zarise##2389
fpath Tarren Mill |goto 60.14,18.62
|only if not Rogue or Shaman
step
Enter the building |goto Hillsbrad Foothills 61.49,19.43 < 7 |walk
talk Apothecary Lydon##2216
|tip Inside the building.
turnin Journey to Hillsbrad Foothills##493 |goto 61.44,19.06 |only if havequest(493) or completedq(493)
accept Elixir of Pain##501 |goto 61.44,19.06
accept Elixir of Agony##509 |goto 61.44,19.06
step
talk High Executor Darthalia##2215
|tip She walks around this area.
turnin Time To Strike##494 |goto 62.33,20.46
accept Battle of Hillsbrad##527 |goto 62.33,20.46
step
click Dangerous!
|tip It looks like a wanted poster on the doorway of the building.
accept Dangerous!##567 |goto 62.55,19.69
step
Enter the building |goto 62.51,19.63 < 7 |walk
talk Innkeeper Shay##2388
|tip Inside the building.
home Tarren Mill |goto 62.78,19.02
step
talk Novice Thaivand##2429
accept Helcular's Revenge##552 |goto Hillsbrad Foothills 63.88,19.66
step
click Mudsnout Blossom+
|tip They look like large white and blue mushrooms on the ground around this area.
collect 6 Mudsnout Blossoms##3502 |q 509/1 |goto 64.26,61.28
step
kill Feral Mountain Lion##2385+
|tip They share spawn points with the spiders, so kill those also, to get more lions to spawn.
collect 10 Mountain Lion Blood##3496 |q 501/1 |goto 61.77,67.12
You can find more around: |notinsticky
[65.74,73.75]
[59.34,58.73]
[67.58,63.61]
step
Enter the building |goto 61.49,19.43 < 7 |walk
talk Apothecary Lydon##2216
|tip Inside the building.
turnin Elixir of Pain##501 |goto 61.44,19.06
accept Elixir of Pain##502 |goto 61.44,19.06
turnin Elixir of Agony##509 |goto 61.44,19.06
step
Kill Yeti enemies around this area
|tip Inside and outside the cave.
collect Helcular's Rod##3708 |q 552/1 |goto 46.21,31.86
step
talk Novice Thaivand##2429
|tip Leave the cave, if you went in there for the previous guide step.
turnin Helcular's Revenge##552 |goto 63.88,19.66
accept Helcular's Revenge##553 |goto 63.88,19.66
step
Enter the cave |goto 46.21,31.86 < 10 |walk
Follow the path down |goto 44.35,31.15 < 10 |walk
Follow the path |goto 45.00,28.07 < 10 |walk
click Flame of Veraz
|tip Downstairs inside the cave.
Charge the Flame of Veraz |q 553/2 |goto 44.04,26.56
step
Follow the path |goto 44.92,28.21 < 10 |walk
Follow the path up |goto 44.11,28.54 < 10 |walk
Follow the path |goto 45.42,30.93 < 10 |c |q 553
step
click Flame of Azel
|tip Upstairs inside the cave.
Charge the Flame of Azel |q 553/1 |goto 43.90,28.05
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 30 |ding 30 |goto 46.27,31.94
stickystart "Kill_Citizen_Wilkes"
stickystart "Kill_Hillsbrad_Farmers"
stickystart "Kill_Hillsbrad_Farmhands"
step
kill Farmer Kalaba##2451 |q 567/4 |goto 34.68,46.04
|tip She walks around this area carrying a pitchfork.
|tip Leave the cave, if you ended up in there in the previous guide step.
step
kill Farmer Getz##2403 |q 527/4 |goto 36.74,39.44
|tip Inside the building.
He can also be: |notinsticky
Inside the barn at [35.13,37.54]
In the field around [35.35,40.80]
step
talk Stanley##2274
|tip He looks like a small wolf that walks around this area in front of the building.
|tip After you turn in the quest, he will become enraged and attack you.
turnin Elixir of Pain##502 |goto 32.66,35.32
step
kill Farmer Ray##232 |q 527/3 |goto 33.68,35.42
He can also be upstairs inside the building at [33.22,34.76]
step
Run up the stairs |goto 31.64,42.26 < 15 |only if walking
Enter the building |goto 30.46,42.20 < 10 |walk
kill Clerk Horrace Whitesteed##2448 |q 567/1 |goto 29.81,42.42
|tip Inside the building.
|tip Try to pull enemies out of the building, to avoid having to fight them all at once.
step
Follow the path |goto 31.66,42.28 < 20 |c |q 567
step
label "Kill_Citizen_Wilkes"
kill Citizen Wilkes##2449 |q 567/2 |goto 32.60,35.89
|tip He walks on the path between the eastern small house and the northern large house carrying a lantern.
You can also check for him around: |notinsticky
[32.53,39.96]
[34.76,38.61]
[36.34,39.40]
step
label "Kill_Hillsbrad_Farmers"
Leave the building |goto 32.92,35.24 < 7 |walk
kill 6 Hillsbrad Farmer##2266 |q 527/1 |goto 31.24,37.49
You can find more around [34.79,40.52]
step
label "Kill_Hillsbrad_Farmhands"
kill 6 Hillsbrad Farmhand##2360 |q 527/2 |goto 31.24,37.49
You can find more around [34.79,40.52]
step
Enter the mine |goto 26.51,58.61 < 7 |q 567
step
label "Kill_Miner_Hackett"
Follow the path |goto 28.35,57.21 < 10 |walk
kill Miner Hackett##2450 |q 567/3 |goto 31.12,58.62
|tip Inside the mine.
|tip He can spawn in multiple locations inside the mine.
He can also be around: |notinsticky
[30.60,56.38]
[31.97,52.28]
[29.70,56.02]
step
talk High Executor Darthalia##2215
|tip She walks around this area.
turnin Battle of Hillsbrad##527 |goto 62.33,20.46
turnin Dangerous!##567 |goto 62.33,20.46
step
Enter the building |goto 62.91,20.56 < 7 |walk
talk Krusk##2229
|tip Inside the building.
accept Regthar Deathgate##1361 |goto 63.24,20.65
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Arathi Highlands (30-30)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Arathi Highlands",
condition_suggested=function() return level == 30 end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (30-31)",
},[[
step
Enter Arathi Highlands |goto Hillsbrad Foothills 81.93,56.88 < 20 |only if walking
Follow the road to Hammerfall |goto Arathi Highlands 74.56,37.94 < 15 |only if walking
talk Gor'mul##2792
|tip He walks around this area.
accept Hammerfall##655 |goto Arathi Highlands 72.67,34.12
step
talk Tor'gan##2706
turnin Hammerfall##655 |goto 74.71,36.29
accept Raising Spirits##672 |goto 74.71,36.29
step
Follow the path |goto 74.56,37.95 < 15 |only if walking
kill Highland Strider##2559+
collect 10 Highland Raptor Eye##4512 |q 672/1 |goto 68.04,35.31
You can find more around [60.44,43.32]
step
Follow the path |goto 74.59,37.95 < 15 |only if walking
talk Tor'gan##2706
turnin Raising Spirits##672 |goto 74.71,36.29
accept Raising Spirits##674 |goto 74.71,36.29
step
talk Gor'mul##2792
|tip He walks around this area.
turnin Raising Spirits##674 |goto 72.67,34.12
accept Raising Spirits##675 |goto 72.67,34.12
step
talk Tor'gan##2706
turnin Raising Spirits##675 |goto 74.71,36.29
step
talk Urda##2851
|tip She walks around this area.
fpath Hammerfall |goto 73.06,32.68
step
Enter the building |goto Orgrimmar 54.04,68.86 < 7 |walk
talk Innkeeper Gryshka##6929
|tip Inside the building.
home Orgrimmar |goto Orgrimmar 54.09,68.42
step
Enter the building |goto 49.93,70.62 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Put these items in the bank.
bank Rod of Helcular##3710 |goto 49.58,69.13 |q 553
step
Enter the building |goto Orgrimmar 76.56,32.87 < 10 |walk
talk Sorek##3354
|tip Inside the building.
accept The Islander##1718 |goto Orgrimmar 80.40,32.37
|only if Warrior
step
Leave the building |goto Orgrimmar 76.56,32.87 < 10 |walk
talk Klannoc Macleod##6236
turnin The Islander##1718 |goto The Barrens 68.62,49.17
accept The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
Step on the Grate to Begin the Affray |q 1719/1 |goto 68.61,48.72
|only if Warrior
step
kill Affray Challenger##6240+
|tip You will have to kill six of them before Big Will will appear.
|tip They will fight them one at a time.
kill Big Will##6238 |q 1719/2 |goto 68.61,48.72
|tip It may take a while before he appears.
|only if Warrior
step
talk Klannoc Macleod##6236
turnin The Affray##1719 |goto 68.62,49.17
|only if Warrior
step
Enter the building |goto Orgrimmar 40.25,36.98 < 10 |walk
talk Searn Firewarder##5892
|tip Inside the building.
accept Call of Air##1531 |goto Orgrimmar 37.97,37.73
|only if Shaman
step
Leave the building |goto 40.25,36.98 < 10 |walk
Follow the path up |goto Thousand Needles 54.68,44.78 < 15 |only if walking
talk Prate Cloudseer##5905
turnin Call of Air##1531 |goto 53.54,42.65
|only if Shaman
step
Ride the elevator up |goto 46.73,48.05 < 10 |c |q 583
|only if Shaman
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (30-31)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 31 and level <= 31 and not completedq(194) end,
next="Leveling Guides\\Classic (12-58)\\Thousand Needles (31-32)",
},[[
step
talk Thysta##1387
fpath Grom'gol |goto Stranglethorn Vale 32.54,29.35
step
Follow the road |goto 38.47,23.16 < 30 |only if walking
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto 35.66,10.53
step
talk Hemet Nesingwary##715
turnin Welcome to the Jungle##583 |goto 35.66,10.81
accept Raptor Mastery##194 |goto 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##185 |goto 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##190 |goto 35.55,10.55
step
Collect Green Hills of Stranglethorn Pages
|tip These can drop from Humanoid enemies in Stranglethorn Vale.
|tip Just keep any that you find while questing.
|tip You can sell any duplicates you find on the Auction House.
|tip You can buy any missing pages that you need from the Auction House, usually.
|tip Check the main Horde Auction House in a major city, as well as the Neutral Auction House in Booty Bay, later.
|tip If you manage to collect them all, accept the quest in this camp and complete it.
Click Here to Continue |confirm |q 338 |future
step
kill 10 Young Stranglethorn Tiger##681 |q 185/1 |goto 35.23,12.83
You can find more around: |notinsticky
[33.42,11.47]
[31.79,9.19]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##185 |goto 35.61,10.62
accept Tiger Mastery##186 |goto 35.61,10.62
step
kill 10 Young Panther##683 |q 190/1 |goto 41.70,12.28
You can find more around: |notinsticky
[42.40,10.56]
[41.06,8.26]
step
Follow the path up |goto 43.88,14.22 < 20 |only if walking
kill 10 Stranglethorn Tiger##682 |q 186/1 |goto 45.28,14.27
You can find more around: |notinsticky
[47.77,13.18]
[46.73,16.86]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##186 |goto 35.61,10.62
accept Tiger Mastery##187 |goto 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##190 |goto 35.55,10.55
accept Panther Mastery##191 |goto 35.55,10.55
step
Kill enemies around this area
Reach Level 31 |ding 31 |goto 35.23,12.83
You can find more around: |notinsticky
[33.42,11.47]
[31.79,9.19]
step
Follow the path up |goto 30.79,8.27 < 20 |only if walking
kill 10 Panther##736 |q 191/1 |goto 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
step
kill 10 Stranglethorn Raptor##685 |q 194/1 |goto 26.04,16.19
step
Follow the path down |goto 30.49,8.61 < 20 |only if walking
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##191 |goto 35.55,10.55
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##194 |goto 35.66,10.81
accept Raptor Mastery##195 |goto 35.66,10.81
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Thousand Needles (31-32)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Thousand Needles",
condition_suggested=function() return level >= 31 and level <= 32 and not completedq(1175) end,
next="Leveling Guides\\Classic (12-58)\\Desolace (32-34)",
},[[
step
talk Korran##3428
accept The Swarm Grows##1145 |goto The Barrens 51.07,29.63
step
talk Regthar Deathgate##3389
|tip Upstairs inside the building.
turnin Regthar Deathgate##1361 |goto 45.34,28.41
accept The Kolkar of Desolace##1362 |goto 45.34,28.41
step
Ride an elevator down |goto Thousand Needles 45.96,49.72 < 10 |only if walking
Follow the path |goto Thousand Needles 66.81,55.88 < 50 |only if walking
talk Kravel Koalbeard##4452
accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
accept Hemet Nesingwary##5762 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Salt Flat Venom##1104 |goto 78.06,77.13
step
talk Wizzle Brassbolts##4453
accept Hardened Shells##1105 |goto 78.14,77.12
step
talk Pozzik##4630
accept Load Lightening##1176 |goto 80.18,75.89
step
talk Trackmaster Zherin##4629
accept A Bump in the Road##1175 |goto 81.64,77.95
stickystart "Collect_Hollow_Vulture_Bones"
stickystart "Collect_Hardened_Tortoise_Shells"
stickystart "Collect_Salty_Scorpid_Venom"
stickystart "Kill_Saltstone_Basilisks"
stickystart "Collect_Rocket_Car_Parts"
stickystart "Kill_Saltstone_Crystalhides"
step
label "Collect_Hollow_Vulture_Bones"
Kill Salt Flats enemies around this area
|tip They look like vultures.
|tip You can rarely find individual ones all around Shimmering Flats.
|tip However, this is the only location where there are multiple of them.
collect 10 Hollow Vulture Bone##5848 |q 1176/1 |goto 87.45,65.73
|tip Work on other quests in the northern part of Shimmering Flats, and keep revisiting this area until you have them all.
step
label "Collect_Hardened_Tortoise_Shells"
Kill Sparkleshell enemies around this area
|tip They look like turtles.
collect 9 Hardened Tortoise Shell##5795 |q 1105/1 |goto 82.53,55.37
You can find more around: |notinsticky
[77.41,53.72]
[73.05,56.51]
[74.82,63.33]
step
label "Collect_Salty_Scorpid_Venom"
Kill Scorpid enemies around this area
|tip They look like scorpions.
collect 6 Salty Scorpid Venom##5794 |q 1104/1 |goto 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
label "Kill_Saltstone_Basilisks"
kill 10 Saltstone Basilisk##4147 |q 1175/1 |goto 77.73,59.22
You can find more around: |notinsticky
[73.41,57.27]
[70.97,66.69]
[77.48,52.40]
step
label "Collect_Rocket_Car_Parts"
click Rocket Car Rubble##19868+
|tip They look like various machine parts scattered on the ground.
|tip You can find them all throughout the Shimmering Flats.
collect 30 Rocket Car Parts##5798 |q 1110/1 |goto 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
talk Kravel Koalbeard##4452
turnin Rocket Car Parts##1110 |goto 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Salt Flat Venom##1104 |goto 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin Hardened Shells##1105 |goto 78.14,77.12
step
talk Pozzik##4630
turnin Load Lightening##1176 |goto 80.18,75.88
accept Goblin Sponsorship##1178 |goto 80.18,75.88
step
Kill enemies around this area
|tip Grinding the last couple of bars before turning in quests will allow you to get a large chunk of experience into the next level right away, when you turn in the quests.
Reach Level 32 |ding 32 |goto 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
step
kill 6 Saltstone Gazer##4150 |q 1175/3 |goto 77.51,87.20
step
label "Kill_Saltstone_Crystalhides"
kill 10 Saltstone Crystalhide##4151 |q 1175/2 |goto 77.51,87.20
step
talk Trackmaster Zherin##4629
turnin A Bump in the Road##1175 |goto 81.63,77.95
step
Follow the path up |goto 74.20,93.41 < 15 |only if walking
Continue following the path |goto Tanaris 51.41,22.34 < 15 |only if walking
talk Bulkrek Ragefist##7824
fpath Gadgetzan |goto Tanaris 51.60,25.44
step
talk Cliffwatcher Longhorn##10537
|tip He walks around this area.
accept Family Tree##5361 |goto Thousand Needles 45.65,50.80
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Desolace (32-34)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Desolace",
condition_suggested=function() return level >= 32 and level <= 34 and not completedq(6142) end,
next="Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (34-34)",
},[[
step
Enter the building |goto Orgrimmar 53.62,64.65 < 7 |walk
talk Auctioneer Thathung##8673
collect 4 Elixir of Water Breathing##5996 |goto 55.68,62.83 |q 1482 |future
|tip Buy them from the Auction House.
|tip These are needed for underwater quests in Desolace soon.
|only if not Undead
step
Enter the building |goto 49.93,70.62 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Put these items in the bank.
bank Kravel's Parts Order##5799 |goto 49.58,69.13 |q 1111
bank Kravel's Crate##14542 |goto 49.58,69.13 |q 5762
step
talk Belgrom Rockmaul##4485
turnin The Swarm Grows##1145 |goto Orgrimmar 75.23,34.23
accept The Swarm Grows##1146 |goto Orgrimmar 75.23,34.23
step
talk Craven Drok##5639
|tip He walks around this area inside the Cleft of Shadow.
accept Alliance Relations##1431 |goto 46.76,50.43
step
Enter the building |goto 22.28,53.78 < 7 |walk
talk Keldran##5640
|tip He walks around inside the building.
turnin Alliance Relations##1431 |goto 22.56,52.63
accept Alliance Relations##1432 |goto 22.56,52.63
step
talk Valusha##17355
accept Destroy the Legion##9534 |goto Ashenvale/0 73.23,60.39
step
Follow the path |goto 73.52,63.51 < 15 |only if walking
kill Sharptalon##12676
|tip He looks like a large blue bird that flies low to the ground around this area.
collect Sharptalon's Claw##16305 |goto 73.12,70.56 |q 2 |future
Also check around: |notinsticky
[71.49,70.10]
[75.87,69.74]
[76.51,68.03]
[78.15,65.74]
step
use Sharptalon's Claw##16305
accept Sharptalon's Claw##2
stickystart "Kill_Mannoroc_Lashers"
stickystart "Kill_Searing_Infernals"
stickystart "Kill_Roaming_Felguards"
step
Kill enemies around this area
collect Diabolical Plans##23797 |n
|tip If you don't find it before you finish the other quests in this area, skip it.
use the Diabolical Plans##23797
accept Diabolical Plans##9535 |goto 81.31,66.33
You can find more around [82.42,70.23]
step
label "Kill_Mannoroc_Lashers"
kill 6 Mannoroc Lasher##11697 |q 9534/1 |goto 81.31,66.33
|tip They share spawn points with other demons, so kill those too, if you can't find any. |notinsticky
You can find more around [82.42,70.23]
step
label "Kill_Searing_Infernals"
kill 6 Searing Infernal##6073 |q 9534/3 |goto 81.31,66.33
|tip They share spawn points with other demons, so kill those too, if you can't find any. |notinsticky
You can find more around [82.42,70.23]
step
label "Kill_Roaming_Felguards"
kill 6 Roaming Felguard##6115 |q 9534/2 |goto 81.31,66.33
|tip They share spawn points with other demons, so kill those too, if you can't find any. |notinsticky
You can find more around [82.42,70.23]
step
Follow the path |goto 73.51,63.52 < 15 |only if walking
talk Senani Thunderheart##12696
turnin Sharptalon's Claw##2 |goto 73.78,61.46
accept The Hunt Completed##247 |goto 73.78,61.46
step
talk Valusha##17355
turnin Destroy the Legion##9534 |goto 73.23,60.39
turnin Diabolical Plans##9535 |goto 73.23,60.39
step
Follow the path up |goto Stonetalon Mountains 44.63,61.97 < 15 |only if walking
Follow the path down |goto Stonetalon Mountains 43.52,65.44 < 15 |only if walking
Continue down the path |goto Stonetalon Mountains 41.22,70.58 < 15 |only if walking
Follow the path |goto Stonetalon Mountains 37.82,67.94 < 20 |only if walking
Follow the path up |goto Stonetalon Mountains 30.23,75.72 < 15 |only if walking
Follow the road |goto Desolace 53.38,6.02 < 30 |only if walking
Continue following the road |goto Desolace 66.13,36.13 < 30 |only if walking
talk Smeed Scrabblescrew##11596
accept Kodo Roundup##5561 |goto Desolace 60.86,61.86
step
use the Kodo Kombobulator##13892
|tip Use it on Kodo enemies around this area.
|tip You can find more all around this bone graveyard area.
Tame #5# Kodos |q 5561/1 |goto 54.45,63.19
|tip You must bring them back to Smeed Scrabblescrew to tame them.
|tip Talk to the kodos after you bring them to Smeed Scrabblescrew.
Bring the Kodos back to [60.73,61.96]
step
talk Smeed Scrabblescrew##11596
turnin Kodo Roundup##5561 |goto 60.86,61.86
step
Follow the path up |goto 57.60,56.38 < 20 |only if walking
talk Felgur Twocuts##5395
turnin The Kolkar of Desolace##1362 |goto 56.20,59.57
accept Khan Dez'hepah##1365 |goto 56.20,59.57
step
talk Gurda Wildmane##5412
accept Gelkis Alliance##1368 |goto 56.29,59.68
step
talk Nataka Longhorn##11259
turnin Family Tree##5361 |goto 55.41,55.81
accept Catch of the Day##5386 |goto 55.41,55.81
step
Cross the bridge |goto 54.70,55.06 < 7 |only if walking
talk Takata Steelblade##5641
turnin Alliance Relations##1432 |goto 52.57,54.39
accept Alliance Relations##1433 |goto 52.57,54.39
accept Befouled by Satyr##1434 |goto 52.57,54.39
step
talk Maurin Bonesplitter##4498
turnin Alliance Relations##1433 |goto 52.24,53.44
accept The Burning of Spirits##1435 |goto 52.24,53.44
step
Follow the road |goto 49.72,45.57 < 30 |only if walking
Enter the building |goto 73.24,42.41 < 7 |walk
kill Khan Dez'hepah##5600
|tip Inside the building.
|tip If you have trouble, try to get someone to help you.
collect Khan Dez'hepah's Head##6066 |q 1365/1 |goto 73.38,41.62
He can also spawn in the tent at [74.68,48.84]
step
Follow the road |goto 67.81,51.41 < 30 |only if walking
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind.
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards.
Reach Friendly Reputation with the Gelkis Clan Centaur |condition rep('Gelkis Clan Centaur') >= Friendly |goto 68.10,69.86 |q 1368
|tip Press "U" to open your reputation list.
|tip Select the "Gelkis Clan Centaur" reputation, and select "Show as Experience Bar".
|tip This will show you a progress bar for this reputation, similar to your experience bar.
|tip You will have to kill at least one enemy before you can see the reputation.
step
Kill enemies around this area
Reach Level 33 |ding 33 |goto 68.10,69.86
step
Follow the path up |goto 57.70,56.35 < 15 |only if walking
talk Felgur Twocuts##5395
turnin Khan Dez'hepah##1365 |goto 56.20,59.56
accept Centaur Bounty##1366 |goto 56.20,59.56
step
Follow the road |goto 50.33,75.54 < 30 |only if walking
talk Uthek the Wise##5397
turnin Gelkis Alliance##1368 |goto 36.23,79.25
accept Stealing Supplies##1370 |goto 36.23,79.25
step
Follow the path up |goto 26.27,74.83 < 15 |only if walking
talk Roon Wildmane##11877
accept Hunting in Stranglethorn##5763 |goto 25.05,72.28
step
talk Taiga Wisemane##11624
accept Hand of Iruxos##5381 |goto 25.81,68.22
step
Enter the building |goto 24.54,68.64 < 7 |walk
talk Innkeeper Sikewa##11106
|tip Inside the building.
home Shadowprey Village |goto 24.09,68.22
step
talk Drulzegar Skraghook##12340
accept Other Fish to Fry##6143 |goto 23.32,72.87
step
talk Mai'Lahii##12031
|tip Inside the building.
accept Clam Bait##6142 |goto 22.65,71.97
step
talk Thalon##6726
fpath Shadowprey Village |goto 21.60,74.13
step
use an Elixir of Water Breathing##5996
|tip If you don't have any, swim next to the bubbling gray rock mounds on the ground underwater around this area.
|tip They will allow you to breath underwater.
click Shellfish Trap+
|tip They look like yellow wooden cages on the ground underwater around this area.
|tip Some of them may be empty, or cause an enemy to appear.
|tip They respawn pretty quickly, and may contain Shellfish again.
collect 10 Shellfish##13545 |goto 19.80,76.23 |q 5386
step
talk Jinar'Zillen##11317
|tip On the dock.
|tip Turn in the "Fish in a Bucket" quest twice.
collect 2 Bloodbelly Fish##13546 |q 5386/1 |goto 22.45,73.12
|tip Be careful not to accidentally sell these to a vendor.
step
_Destroy These Items:_
|tip They are no longer needed.
trash Shellfish##13545
step
Swim along the coast |goto 22.00,69.48 < 30 |only if walking
Continue swimming along the coast |goto 28.45,37.26 < 30 |only if walking
click Rackmore's Log
accept Claim Rackmore's Treasure!##6161 |goto 36.07,30.41
step
Follow the path |goto 41.59,34.00 < 15 |only if walking
talk Azore Aldamort##11863
accept Sceptre of Light##5741 |goto 38.88,27.17
stickystart "Collect_Infused_Burning_Gems"
stickystart "Collect_Flayed_Demon_Skin"
step
Follow the path up |goto 55.56,32.51 < 30 |only if walking
Follow the path |goto 56.06,29.54 < 15 |only if walking
kill Burning Blade Seer##13019
|tip At the top of the tower.
collect Sceptre of Light##15750 |q 5741/1 |goto 55.17,30.15
step
label "Collect_Infused_Burning_Gems"
use the Burning Gem##6436
|tip Use it on Burning Blade enemies around this area when they are low health.
collect 15 Infused Burning Gem##6435 |q 1435/1 |goto 55.20,28.90
step
label "Collect_Flayed_Demon_Skin"
Kill Burning Blade enemies around this area
collect Flayed Demon Skin##20310 |n
use the Flayed Demon Skin##20310
accept The Corrupter##1480 |goto 56.06,29.54
step
Follow the path |goto 56.07,29.58 < 15 |only if walking
Follow the path up |goto 56.03,53.54 < 10 |only if walking
talk Nataka Longhorn##11259
turnin Catch of the Day##5386 |goto 55.42,55.81
step
Cross the bridge |goto 54.72,55.08 < 10 |only if walking
talk Maurin Bonesplitter##4498
turnin The Burning of Spirits##1435 |goto 52.24,53.44
turnin The Corrupter##1480 |goto 52.24,53.44
accept The Corrupter##1481 |goto 52.24,53.44
stickystart "Kill_Hatefury_Rogues"
stickystart "Kill_Hatefury_Felsworns"
stickystart "Kill_Hatefury_Betrayers"
stickystart "Kill_Hatefury_Hellcallers"
step
Follow the road |goto 49.72,45.57 < 30 |only if walking
kill Hatefury Shadowstalker##4674+
collect Shadowstalker Scalp##6441 |q 1481/1 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Kill_Hatefury_Rogues"
kill 7 Hatefury Rogue##4670 |q 1434/1 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Kill_Hatefury_Felsworns"
kill 7 Hatefury Felsworn##4672 |q 1434/2 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Kill_Hatefury_Betrayers"
kill 7 Hatefury Betrayer##4673 |q 1434/3 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Kill_Hatefury_Hellcallers"
kill 7 Hatefury Hellcaller##4675 |q 1434/4 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
accept Bone Collector##5501 |goto 62.33,38.98
step
Follow the path up |goto 55.89,53.49 < 10 |only if walking
Cross the bridge |goto 54.73,55.09 < 10 |only if walking
talk Takata Steelblade##5641
turnin Befouled by Satyr##1434 |goto 52.57,54.38
accept Alliance Relations##1436 |goto 52.57,54.38
step
talk Maurin Bonesplitter##4498
turnin The Corrupter##1481 |goto 52.25,53.45
accept The Corrupter##1482 |goto 52.25,53.45
step
Follow the path |goto 48.97,40.77 < 40 |only if walking
Continue following the path |goto 42.14,33.16 < 30 |only if walking
talk Azore Aldamort##11863
turnin Sceptre of Light##5741 |goto 38.89,27.17
accept Book of the Ancients##6027 |goto 38.89,27.17
stickystart "Collect_Softshelled_Clam_Meats"
step
use an Elixir of Water Breathing##5996
|tip If you don't have any, swim next to the bubbling gray rock mounds on the ground underwater around this area.
|tip They will allow you to breath underwater.
Kill Drysnap enemies around this area
|tip They look like lobster underwater around this area.
collect Rackmore's Silver Key##15878 |q 6161/1 |goto 32.78,31.37
stickystart "Collect_Rackmores_Golden_Key"
stickystart "Kill_Slitherblade_Nagas"
stickystart "Kill_Slitherblade_Sorceresses"
step
label "Collect_Softshelled_Clam_Meats"
click Giant Softshell Clam+
|tip They look like large white clam shells on the ground underwater around this area.
kill Enraged Reef Crawler##12347+
|tip They look like crabs underwater around this area.
collect Soft-shelled Clam##15874 |n
use the Soft-shelled Clam##15874+
collect 10 Soft-shelled Clam Meat##15924 |q 6142/1 |goto 33.70,27.83
stickystart "Collect_Oracle_Crystal"
stickystart "Kill_Slitherblade_Myrmidons"
step
label "Collect_Rackmores_Golden_Key"
Kill Slitherblade enemies around this area
|tip Underwater.
collect Rackmore's Golden Key##15881 |q 6161/2 |goto 35.20,24.86
stickystop "Kill_Slitherblade_Nagas"
stickystop "Kill_Slitherblade_Sorceresses"
stickystop "Collect_Oracle_Crystal"
stickystop "Kill_Slitherblade_Myrmidons"
step
Follow the path up |goto 41.13,28.36 < 15 |only if walking
Kill enemies around this area
|tip You are about to have to kill higher level nagas.
|tip It will help to be one level higher.
Reach Level 34 |ding 34 |goto 46.40,30.94
stickystart "Kill_Slitherblade_Nagas"
stickystart "Kill_Slitherblade_Sorceresses"
stickystart "Collect_Oracle_Crystal"
stickystart "Kill_Slitherblade_Myrmidons"
step
click Rackmore's Chest
|tip On the ground at the base of the tree.
turnin Claim Rackmore's Treasure!##6161 |goto 30.00,8.70
step
click Serpent Statue
|tip A level 38 enemy will appear, so be prepared to fight.
kill Lord Kragaru##12369
|tip If you have trouble, try to get someone to help you.
collect Book of the Ancients##15803 |q 6027/1 |goto 28.19,6.62
step
label "Collect_Oracle_Crystal"
kill Slitherblade Oracle##4718+
|tip Underwater and on the islands around this area.
|tip They share spawn points with the other nagas, so kill them too, if you can't find any Oracles.
collect Oracle Crystal##6442 |q 1482/1 |goto 28.19,6.43
You can find more around: |notinsticky
[27.89,14.09]
[33.97,10.16]
[31.74,15.64]
[32.93,21.73]
[39.90,15.11]
step
label "Kill_Slitherblade_Myrmidons"
kill 7 Slitherblade Myrmidon##4714 |q 6143/1 |goto 32.12,18.59
|tip Underwater and on the islands around this area.
step
label "Kill_Slitherblade_Nagas"
kill 7 Slitherblade Naga##4711 |q 6143/2 |goto 35.20,24.86
|tip Underwater and on the islands around this area.
step
label "Kill_Slitherblade_Sorceresses"
kill 5 Slitherblade Sorceress##4712 |q 6143/3 |goto 35.20,24.86
|tip Underwater and on the islands around this area.
step
Follow the path up |goto 40.99,28.91 < 15 |only if walking
talk Azore Aldamort##11863
turnin Book of the Ancients##6027 |goto 38.89,27.17
step
Follow the path up |goto 55.89,53.49 < 10 |only if walking
Cross the bridge |goto 54.72,55.08 < 10 |only if walking
talk Maurin Bonesplitter##4498
turnin The Corrupter##1482 |goto 52.25,53.44
step
Watch the dialogue
talk Maurin Bonesplitter##4498
accept The Corrupter##1484 |goto 52.25,53.44
step
talk Takata Steelblade##5641
turnin The Corrupter##1484 |goto 52.57,54.38
step
click Kodo Bones
|tip They look like large white horned animal skulls on the ground around this area.
|tip If a Kodo Apparition appears and attacks you, run away until it leaves you alone, if you can't kill them.
|tip If you still have trouble, try to get someone to help you.
collect 10 Kodo Bone##13703 |q 5501/1 |goto 51.31,58.04
stickystart "Collect_Centaur_Ears"
stickystart "Reach_Friendly_Reputation_With_The_Gelkis_Clan_Centaur"
step
Follow the path |goto 67.13,66.06 < 20 |only if walking
click Sack of Meat+
|tip They look like tan leather bags on the ground near the buildings around this area.
|tip Not all of the tan bags you see will be clickable.
collect 6 Crudely Dried Meat##6069 |q 1370/1 |goto 70.90,75.47
step
label "Collect_Centaur_Ears"
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind. |notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards. |notinsticky
collect 15 Centaur Ear##6067 |q 1366/1 |goto 70.30,73.77
step
label "Reach_Friendly_Reputation_With_The_Gelkis_Clan_Centaur"
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind. |notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards. |notinsticky
Reach Friendly Reputation with the Gelkis Clan Centaur |q 1370/2 |goto 70.30,73.77
|tip You should already be Friendly from completing a quest earlier in the guide.
step
Follow the path up |goto 57.68,56.38 < 15 |only if walking
talk Felgur Twocuts##5395
turnin Centaur Bounty##1366 |goto 56.19,59.56
step
Cross the bridge |goto 54.74,55.09 < 10 |only if walking
Follow the road |goto 49.70,45.64 < 30 |only if walking
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
turnin Bone Collector##5501 |goto 62.33,38.98
step
Follow the path |goto 56.05,29.53 < 10 |only if walking
Enter the building |goto 55.35,27.54 < 10 |walk
click Hand of Iruxos Crystal
|tip Inside the building.
|tip Kill all of the enemies in this room before clicking it.
|tip A level 37 enemy will appear, so be prepared to fight.
kill Demon Spirit##11876
collect Demon Box##13542 |q 5381/1 |goto 54.97,26.65
step
talk Taiga Wisemane##11624
turnin Hand of Iruxos##5381 |goto 25.81,68.22
step
Follow the path |goto 27.16,75.91 < 30 |only if walking
talk Uthek the Wise##5397
turnin Stealing Supplies##1370 |goto 36.23,79.25
step
Follow the path |goto 26.58,75.48 < 30 |only if walking
talk Drulzegar Skraghook##12340
turnin Other Fish to Fry##6143 |goto 23.32,72.87
step
talk Mai'Lahii##12031
|tip Inside the building.
turnin Clam Bait##6142 |goto 22.64,71.97
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (34-35)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow Marsh",
condition_suggested=function() return level >= 34 and level <= 35 and not completedq(1111) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (35-36)",
},[[
step
Follow the road |goto The Barrens 46.86,65.67 < 30 |only if walking
Enter Dustwallow Marsh |goto The Barrens 49.94,78.42 < 30 |only if walking
click Hoofprints##21015
accept Suspicious Hoofprints##1268 |goto Dustwallow Marsh 29.70,47.63
step
click Theramore Guard Badge
|tip It looks like a tiny metal object on the floor.
accept Lieutenant Paval Reethe##1269 |goto 29.83,48.24
step
click Black Shield
accept The Black Shield##1251 |goto 29.63,48.59
step
talk Krog##4926
turnin Suspicious Hoofprints##1268 |goto 36.42,31.88
turnin Lieutenant Paval Reethe##1269 |goto 36.42,31.88
turnin The Black Shield##1251 |goto 36.42,31.88
accept The Black Shield##1321 |goto 36.42,31.88
step
talk Do'gol##5087
turnin The Black Shield##1321 |goto 36.53,30.80
step
talk Shardi##11899
fpath Brackenwall Village |goto 35.56,31.88
step
Enter the building |goto The Barrens 62.89,36.52 < 7 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23
accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Belgrom's Sealed Note##5850 |goto 62.64,37.42 |q 1146
bank Elixir of Water Breathing##5996 |goto 62.64,37.42 |q 1111
|tip If you have any.
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Kravel's Parts Order##5799 |goto 62.64,37.42 |q 1111
collect Kravel's Crate##14542 |goto 62.64,37.42	|q 5762
step
talk Wharfmaster Dizzywig##3453
turnin Wharfmaster Dizzywig##1111 |goto 63.35,38.45
accept Parts for Kravel##1112 |goto 63.35,38.45
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (35-36)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 35 and level <= 36 and not completedq(582) end,
next="Leveling Guides\\Classic (12-58)\\Arathi Highlands (36-37)",
},[[
step
talk Wharfmaster Lozgil##4631
turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.34,73.56
accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.34,73.56
step
Enter the building |goto 27.08,77.62 < 5 |walk
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Singing Blue Shards##605 |goto 27.12,77.21
step
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Investigate the Camp##201 |goto 26.95,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Bloodscalp Ears##189 |goto 27.00,77.12
accept Hostile Takeover##213 |goto 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1181 |goto 27.23,76.87
accept Goblin Sponsorship##1182 |goto 27.23,76.87
step
talk Gringer##2858
|tip Upstairs on the balcony of the building.
fpath Booty Bay |goto 26.87,77.10
step
talk Commander Aggro'gosh##2464
|tip He walks around this area.
accept The Defense of Grom'gol##568 |goto 32.17,28.90
step
talk Far Seer Mok'thardin##2465
accept Mok'thardin's Enchantment##570 |goto 32.12,29.24
step
talk Nemeth Hawkeye##17094
accept Bloodscalp Insight##9436 |goto 31.97,28.61
step
talk Nimboya##2497
accept Hunt for Yenniku##581 |goto 32.16,27.73
step
talk Kin'weelay##2519
accept Bloody Bone Necklaces##596 |goto 32.27,27.71
accept The Vile Reef##629 |goto 32.27,27.71
step
Follow the path up |goto 26.92,19.17 < 15 |only if walking
kill Crystal Spine Basilisk##689+
collect 10 Singing Crystal Shard##3918 |q 605/1 |goto 27.06,18.51
You can find more around [25.11,17.42]
stickystart "Collect_Bloodscap_Tusks"
stickystart "Collect_Bloodscalp_Ears"
stickystart "Collect_Bloody_Bone_Necklaces"
step
kill Bloodscalp Shaman##697+
|tip You can find a few more along the path in the outskirts circling this camp. |notinsticky
collect Bloodscalp Totem##23679 |q 9436/1 |goto 29.36,19.97
You can find more around: |notinsticky
[33.85,15.53]
[31.68,12.65]
step
label "Collect_Bloodscap_Tusks"
Kill Bloodscalp enemies around this area
|tip You can find a few more along the path in the outskirts circling this camp. |notinsticky
collect 9 Bloodscalp Tusk##3901 |q 581/1 |goto 29.36,19.97
You can find more around: |notinsticky
[33.85,15.53]
[31.68,12.65]
step
label "Collect_Bloodscalp_Ears"
Kill Bloodscalp enemies around this area
|tip You can find a few more along the path in the outskirts circling this camp. |notinsticky
collect 15 Bloodscalp Ear##1519 |q 189/1 |goto 29.36,19.97
You can find more around: |notinsticky
[33.85,15.53]
[31.68,12.65]
step
label "Collect_Bloody_Bone_Necklaces"
Kill Bloodscalp enemies around this area
|tip You can find a few more along the path in the outskirts circling this camp. |notinsticky
collect 25 Bloody Bone Necklace##3915 |q 596/1 |goto 29.36,19.97
You can find more around: |notinsticky
[33.85,15.53]
[31.68,12.65]
step
kill 10 Elder Stranglethorn Tiger##1085 |q 187/1 |goto 33.27,18.77
You can find more around [31.47,16.21]
stickystart "Kill_Lashtail_Raptors"
step
kill 10 Lashtail Raptor##686 |q 195/1 |goto 30.50,23.96
You can find more around: |notinsticky
[32.63,23.93]
[35.83,25.97]
[38.79,25.47]
[38.31,20.32]
step
label "Kill_Lashtail_Raptors"
kill 15 Lashtail Raptor##686 |q 568/1 |goto 30.50,23.96
You can find more around: |notinsticky
[32.63,23.93]
[35.83,25.97]
[38.79,25.47]
[38.31,20.32]
step
talk Commander Aggro'gosh##2464
|tip He walks around this area.
turnin The Defense of Grom'gol##568 |goto 32.17,28.91
accept The Defense of Grom'gol##569 |goto 32.17,28.91
step
talk Nemeth Hawkeye##17094
turnin Bloodscalp Insight##9436 |goto 31.97,28.61
accept An Unusual Patron##9457 |goto 31.97,28.61
step
talk Nimboya##2497
turnin Hunt for Yenniku##581 |goto 32.16,27.72
accept Headhunting##582 |goto 32.16,27.72
step
talk Kin'weelay##2519
turnin Bloody Bone Necklaces##596 |goto 32.27,27.70
step
click Gri'lek the Wanderer
|tip It looks like a stone tablet.
|tip Underwater.
collect Tablet Shard##4094 |q 629/1 |goto 24.83,23.03
step
use the Gift of Naias##23680
kill Naias##17207
collect Heart of Naias##23681 |q 9457/1 |goto 19.77,22.61
step
kill Bloodscalp Headhunter##671+
collect 20 Shrunken Head##1532 |goto 20.29,12.82 |q 582
You can find more: |notinsticky
Up the path that starts at [21.42,10.11]
Up the path that starts at [23.81,10.66]
step
Locate the Hunters' Camp |q 201/1 |goto 35.55,10.55
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##192 |goto 35.55,10.55
step
talk Ajeck Rouack##717
turnin Tiger Mastery##187 |goto 35.62,10.62
accept Tiger Mastery##188 |goto 35.62,10.62
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##195 |goto 35.66,10.81
accept Raptor Mastery##196 |goto 35.66,10.81
turnin Hemet Nesingwary##5762 |goto 35.66,10.81
turnin Hunting in Stranglethorn##5763 |goto 35.66,10.81
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
Follow the path up |goto 31.81,16.83 < 10 |only if walking
kill Sin'Dall##729
|tip He looks like an orange tiger that walks around this area.
|tip He's usually on top of this hill, though.
collect Paw of Sin'Dall##3879 |q 188/1 |goto 32.21,17.39
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto 35.62,10.62
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
stickystart "Collect_Tumbled_Crystals"
step
Follow the path up |goto 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
collect Cozzle's Key##5851 |goto 42.65,18.35 |q 1182
step
Enter the building |goto 43.45,20.36 < 7 |walk
click Cozzle's Footlocker
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto 43.34,20.34
step
label "Collect_Tumbled_Crystals"
kill Venture Co. Geologist##1096+
collect 8 Tumbled Crystal##4106 |q 213/1 |goto 44.63,21.45
stickystart "Collect_Shadowmaw_Claws"
stickystart "Kill_Shadowmaw_Panthers"
step
Follow the path up |goto 46.93,22.91 < 15 |only if walking
kill Stranglethorn Tigress##772+
|tip They share spawn points with Shadowmaw Panthers, so kill those too, to get more Stranglethorn Tigresses to spawn.
collect Pristine Tigress Fang##3839|q 570/2 |goto 49.23,22.66
You can find more around [46.42,27.34]
step
label "Collect_Shadowmaw_Claws"
kill Shadowmaw Panther##684+
|tip They are stealthed around this area.
|tip They share spawn points with Stranglethorn Tigresses, so kill those too, to get more Shadowmaw Panthers to spawn.
collect 8 Shadowmaw Claw##3838 |q 570/1 |goto 49.23,22.66
You can find more around [46.42,27.34]
step
label "Kill_Shadowmaw_Panthers"
kill 10 Shadowmaw Panther##684 |q 192/1 |goto 49.23,22.66
|tip They are stealthed around this area. |notinsticky
You can find more around [46.42,27.34]
stickystart "Kill_Moshogg_Witch_Doctors"
step
kill 10 Mosh'Ogg Brute##1142 |q 569/1 |goto 37.40,31.30
step
label "Kill_Moshogg_Witch_Doctors"
kill 5 Mosh'Ogg Witch Doctor##1144 |q 569/2 |goto 37.40,31.30
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##192 |goto 35.56,10.55
accept Panther Mastery##193 |goto 35.56,10.55
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Singing Blue Shards##605 |goto 27.12,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Bloodscalp Ears##189 |goto 27.00,77.13
turnin Hostile Takeover##213 |goto 27.00,77.13
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Investigate the Camp##201 |goto 26.94,77.21
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto 27.23,76.87
accept Goblin Sponsorship##1183 |goto 27.23,76.87
step
talk Commander Aggro'gosh##2464
|tip He walks around this area.
turnin The Defense of Grom'gol##569 |goto 32.17,28.90
step
talk Far Seer Mok'thardin##2465
turnin Mok'thardin's Enchantment##570 |goto 32.12,29.24
step
talk Nemeth Hawkeye##17094
turnin An Unusual Patron##9457 |goto 31.97,28.61
step
talk Nimboya##2497
turnin Headhunting##582 |goto 32.16,27.73
step
_Destroy These Items:_
|tip They are no longer needed.
trash Shrunken Head##1532
step
talk Kin'weelay##2519
turnin The Vile Reef##629 |goto 32.27,27.71
step
Watch the dialogue
talk Nimboya##2497
accept Trollbane##638 |goto 32.16,27.73
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Arathi Highlands (36-37)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Arathi Highlands",
condition_suggested=function() return level >= 36 and level <= 37 and not completedq(678) end,
next="Leveling Guides\\Classic (12-58)\\Alterac Mountains (37-38)",
},[[
step
talk Genavie Callow##4486
accept To Steal From Thieves##1164 |goto Undercity 63.83,49.45
step
talk William Montague##4549
|tip Put these items in the bank.
bank Fuel Regulator Blueprints##5852 |goto 65.95,45.06 |q 1183
bank Kravel's Parts##5800 |goto 65.95,45.06 |q 1112
step
talk William Montague##4549
|tip Collect these items from the bank.
collect Rod of Helcular##3710 |goto 65.95,45.06 |q 553
step
talk Tallow##2770
accept The Hammer May Fall##676 |goto Hillsbrad Foothills 61.87,19.58
step
Enter the building |goto Arathi Highlands 73.79,33.00 < 7 |walk
talk Innkeeper Adegwa##9501
|tip Inside the building.
home Hammerfall |goto Arathi Highlands 73.84,32.47
step
talk Zengu##2703
turnin Trollbane##638 |goto 73.80,33.95
step
talk Tor'gan##2706
accept Foul Magics##671 |goto 74.71,36.29
accept Guile of the Raptor##701 |goto 74.71,36.29
step
Follow the path |goto 74.57,37.92 < 15 |only if walking
click Shards of Myzrael
accept The Princess Trapped##642 |goto 62.54,33.75
step
Kill Drywhisker enemies around this area
|tip You can find more in the cave at the top of the path referenced below.
collect 12 Mote of Myzrael##4435 |q 642/1 |goto 76.13,44.11
You can find more: |notinsticky
Around [78.07,35.28]
Up the path that starts at [80.84,39.91]
step
Follow the path up |goto 80.90,39.96 < 10 |only if walking
Enter the cave |goto 82.66,36.16 < 15 |walk
Follow the path |goto 83.87,33.30 < 15 |walk
Follow the path up |goto 87.13,31.39 < 10 |walk
Follow the path |goto 84.73,28.93 < 10 |walk
click Iridescent Shards
|tip Upstairs inside the cave.
turnin The Princess Trapped##642 |goto 84.31,30.92
accept Stones of Binding##651 |goto 84.31,30.92
step
Follow the path |goto 83.77,33.75 < 15 |walk
Leave the cave |goto 82.69,36.21 < 15 |walk
Follow the path |goto 73.48,41.26 < 30 |only if walking
click Stone of East Binding
collect Cresting Key##4484 |q 651/2 |goto 66.75,29.75
step
kill Kenata Dabyrie##4480
|tip Inside the building.
collect Kenata's Head##5830 |q 1164/1 |goto 56.37,36.08
step
kill Marcel Dabyrie##4481
|tip Inside the building.
collect Marcel's Head##5832 |q 1164/2 |goto 54.14,38.16
step
kill Fardel Dabyrie##4479
collect Fardel's Head##58312 |q 1164/3 |goto 56.54,38.70
step
click Stone of Outer Binding
collect Thundering Key##4485 |q 651/3 |goto 52.06,50.69
step
kill Highland Fleshstalker##2561+
collect 12 Raptor Heart##4513 |q 701/1 |goto 52.35,66.84
You can find more around [47.45,77.65]
stickystart "Kill_Boulderfist_Ogres"
step
Follow the road |goto 45.09,58.72 < 30 |only if walking
kill 10 Boulderfist Enforcer##2564 |q 676/2 |goto 34.81,44.14
|tip Inside the cave.
step
Leave the cave |goto 34.82,44.15 < 15 |c |q 676
step
label "Kill_Boulderfist_Ogres"
kill 8 Boulderfist Ogre##2562 |q 676/1 |goto 36.32,43.60
You can find more around: |notinsticky
[32.61,40.22]
[33.17,48.05]
step
Kill Syndicate enemies around this area
|tip Some of them are stealthed, so be careful.
|tip They are also inside the buildings.
|tip You can find more stealthed along the small hill ridges surrounding this village.
collect 10 Bloodstone Amulet##4495 |q 671/1 |goto 32.67,29.22
step
click Stone of West Binding
collect Burning Key##4483 |q 651/1 |goto 25.52,30.12
step
click Stone of Inner Binding
turnin Stones of Binding##651 |goto 36.19,57.37
step
talk Drum Fel##2771
turnin The Hammer May Fall##676 |goto 74.24,33.91
step
talk Tor'gan##2706
turnin Foul Magics##671 |goto 74.71,36.29
turnin Guile of the Raptor##701 |goto 74.71,36.29
accept Guile of the Raptor##702 |goto 74.71,36.29
step
talk Gor'mul##2792
|tip He walks around this area.
turnin Guile of the Raptor##702 |goto 72.55,34.01
step
Watch the dialogue
talk Gor'mul##2792
|tip He walks around this area.
accept Guile of the Raptor##847 |goto 72.55,34.01
step
talk Tor'gan##2706
turnin Guile of the Raptor##847 |goto 74.71,36.29
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Alterac Mountains (37-38)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Alterac Mountains",
condition_suggested=function() return level >= 37 and level <= 38 and not completedq(1164) end,
next="Leveling Guides\\Classic (12-58)\\Thousand Needles (38-38)",
},[[
step
Enter the building |goto Hillsbrad Foothills 61.58,20.61 < 7 |walk
talk Magus Wordeen Voidglare##2410
|tip Inside the building.
accept Prison Break In##544 |goto Hillsbrad Foothills 61.60,20.84
step
talk Keeper Bel'varil##2437
accept Stone Tokens##556 |goto 61.50,20.93
step
Follow the path up |goto Alterac Mountains 49.43,69.37 < 15 |only if walking
Kill Mountain Lion enemies around this area
collect Fresh Carcass##5810 |goto Alterac Mountains 47.09,77.02 |q 1136
You can find more around [Alterac Mountains 39.03,87.28]
step
Follow the path |goto 41.79,77.11 < 20 |only if walking
Enter the cave |goto 37.55,68.05 < 15 |walk
click Flame of Uzel
|tip Inside the cave.
Charge the Flame of Uzel |q 553/3 |goto 37.54,66.26
step
use the Fresh Carcass##5810
|tip Inside the cave.
kill Frostmaw##4504
|tip He walks to the entrance of the cave.
collect Frostmaw's Mane##5811 |q 1136/1 |goto 37.54,66.26
stickystart "Collect_Worn_Stone_Tokens"
step
kill Ricter##2411
|tip He walks around this area.
collect Bloodstone Marble##3689 |q 544/2 |goto 20.20,84.08
step
Enter the building |goto 20.46,86.09 < 7 |walk
kill Alina##2412
|tip She walks around inside the building.
collect Bloodstone Shard##3690 |q 544/3 |goto 20.35,86.35
step
kill Dermot##2413
|tip He walks around inside the building.
collect Bloodstone Wedge##3691 |q 544/1 |goto 20.01,86.13
step
Enter the building |goto 18.65,84.41 < 7 |walk
kill Kegan Darkmar##2414
|tip Upstairs inside the building.
collect Bloodstone Oval##3688 |q 544/4 |goto 17.78,83.20
step
label "Collect_Worn_Stone_Tokens"
Kill Dalaran enemies around this area
|tip They can also be in the buildings around this area.
collect 10 Worn Stone Token##3714 |q 556/1 |goto 19.33,82.59
You can find more around [16.58,76.69]
step
Avoid Southshore |goto Hillsbrad Foothills 54.96,49.07 < 20 |only if walking
Follow the path and be careful to avoid the guards |goto 53.54,52.18 < 20 |only if walking
click Helcular's Grave
turnin Helcular's Revenge##553 |goto Hillsbrad Foothills 52.78,53.38
step
Enter the building |goto 61.58,20.61 < 7 |walk
talk Magus Wordeen Voidglare##2410
|tip Inside the building.
turnin Prison Break In##544 |goto 61.60,20.84
step
talk Keeper Bel'varil##2437
|tip Inside the building.
turnin Stone Tokens##556 |goto 61.50,20.94
step
talk Genavie Callow##4486
turnin To Steal From Thieves##1164 |goto Undercity 63.84,49.45
step
talk William Montague##4549
|tip Collect these items from the bank.
collect Belgrom's Sealed Note##5850 |goto 65.95,45.06 |q 1146
collect Fuel Regulator Blueprints##5852 |goto 65.95,45.06 |q 1183
collect Kravel's Parts##5800 |goto 65.95,45.06 |q 1112
collect Kodo Skin Scroll##5838 |goto 65.95,45.06 |q 1136
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Thousand Needles (38-38)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Thousand Needles",
condition_suggested=function() return level == 38 and not completedq(1148) end,
next="Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (38-40)",
},[[
step
Enter the building |goto Orgrimmar/0 22.29,53.67 < 7 |walk
talk Keldran##5640
|tip Inside the building.
turnin Alliance Relations##1436 |goto Orgrimmar/0 22.56,52.65
step
talk Melor Stonehoof##3441
turnin Frostmaw##1136 |goto Thunder Bluff 61.53,80.90
accept Deadmire##1205 |goto Thunder Bluff 61.53,80.90
step
_Destroy This Item:_
|tip It is no longer needed.
trash Kodo Skin Scroll##5838
step
Ride an elevator down |goto Thousand Needles 45.96,49.74 < 10 |only if walking
talk Moktar Krin##4483
turnin The Swarm Grows##1146 |goto Thousand Needles 67.58,63.94
accept The Swarm Grows##1147 |goto Thousand Needles 67.58,63.94
step
talk Kravel Koalbeard##4452
turnin Parts for Kravel##1112 |goto 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Delivery to the Gnomes##1114 |goto 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Delivery to the Gnomes##1114 |goto 78.06,77.12
accept Martek the Exiled##1106 |goto 78.06,77.12
step
talk Kravel Koalbeard##4452
accept The Rumormonger##1115 |goto 77.79,77.27
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto 80.18,75.88
accept The Eighteenth Pilot##1186 |goto 80.18,75.88
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto 80.33,76.09
accept Razzeric's Tweaking##1187 |goto 80.33,76.09
stickystart "Kill_Silithid_Hive_Drones"
stickystart "Kill_Silithid_Invaders"
stickystart "Accept_Parts_Of_The_Swarm"
stickystart "Collect_Silithid_Heart"
stickystart "Collect_Silithid_Talons"
stickystart "Collect_Intact_Silithid_Carapaces"
step
kill 5 Silithid Searcher##4130 |q 1147/1 |goto 70.52,83.14
|tip These can mostly only be found on the outskirts of these ruins.
You can find more around: |notinsticky
[67.24,82.00]
step
label "Kill_Silithid_Hive_Drones"
kill 5 Silithid Hive Drone##4133 |q 1147/2 |goto 69.50,84.74
You can find more inside the cave at [66.32,86.18]
step
label "Kill_Silithid_Invaders"
kill 5 Silithid Invader##4131 |q 1147/3 |goto 66.32,86.18
|tip Inside the cave. |notinsticky
|tip They share spawn points with Silithid Hive Drones inside the cave. |notinsticky
|tip Kill those also, if you can't find any Silithid Invaders. |notinsticky
step
Leave the cave |goto 66.32,86.18 < 10 |c |q 1147
step
label "Accept_Parts_Of_The_Swarm"
Kill Silithid enemies around this area
collect Cracked Silithid Carapace##5877 |n
use the Cracked Silithid Carapace##5877
accept Parts of the Swarm##1148 |goto 69.50,84.74
step
label "Collect_Silithid_Heart"
Kill Silithid enemies around this area
collect Silithid Heart##5855 |q 1148/1 |goto 69.50,84.74
You can find more inside the cave at [66.32,86.18]
|only if havequest(1148) or completedq(1148)
step
label "Collect_Silithid_Talons"
Kill Silithid enemies around this area
collect 5 Silithid Talon##5854 |q 1148/2 |goto 69.50,84.74
|only if havequest(1148) or completedq(1148)
step
label "Collect_Intact_Silithid_Carapaces"
Kill Silithid enemies around this area
collect 3 Intact Silithid Carapace##5853 |q 1148/3 |goto 69.50,84.74
|only if havequest(1148) or completedq(1148)
step
talk Moktar Krin##4483
turnin The Swarm Grows##1147 |goto 67.58,63.95
step
Ride an elevator up |goto 47.71,49.06 < 20 |only if walking
talk Korran##3428
turnin Parts of the Swarm##1148 |goto The Barrens 51.07,29.63
accept Parts of the Swarm##1184 |goto The Barrens 51.07,29.63
step
_Destroy This Item:_
|tip It is no longer needed.
trash Cracked Silithid Carapace##5877
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (38-39)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow Marsh",
condition_suggested=function() return level >= 38 and level <= 39 and not completedq(571) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (39-40)",
},[[
step
talk Nazeer Bloodpike##4791
accept Theramore Spies##1201 |goto Dustwallow Marsh 35.21,30.66
accept Check Up on Tabetha##11213 |goto Dustwallow Marsh/0 35.21,30.66
step
talk Do'gol##5087
accept The Black Shield##1322 |goto 36.52,30.80
step
Enter the cave |goto 36.83,32.46 < 15 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
accept The Hermit of Witch Hill##11225 |goto 37.15,33.09
step
talk "Little" Logok##24208
home Brackenwall Village |goto 36.89,32.34
step
talk Mudcrush Durtfeet##4503
accept Hungry!##1177 |goto 35.15,38.25
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 37.05,38.41 |count 1
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 38.04,37.41 |count 2
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 38.05,34.07 |count 3
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 40.52,33.39 |count 4
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 40.64,35.29 |count 5
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 41.77,26.62 |count 6
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 42.11,25.92 |count 7
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 41.65,25.20 |count 8
|tip It walks around this small area stealthed.
step
kill Theramore Infiltrator##4834 |q 1201/1 |goto 39.62,23.80 |count 9
|tip It walks around this small area stealthed.
step
Avoid the tower and follow the road |goto 46.39,21.72 < 50 |only if walking
talk "Swamp Eye" Jarl##4792
turnin The Hermit of Swamplight Manor##11225 |goto 55.44,26.27
accept Marsh Frog Legs##1218 |goto 55.44,26.27
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
accept What's Haunting Witch Hill?##11180 |goto 55.58,26.14
step
click the Loose Dirt##209627
accept The Lost Report##1238 |goto 55.43,25.92
stickystart "Gather_Information"
step
kill Giant Marsh Frog##23979+
|tip Reduce the "Ground Clutter" graphics setting to make them much easier to see.
collect 10 Marsh Frog Leg##33202 |q 1218/1 |goto 55.52,24.96
You can find more around [57.23,26.98]
step
label "Gather_Information"
Kill Risen enemies around this area
Gather #10# Information |q 11180/1 |goto 57.15,23.52
step
talk "Swamp Eye" Jarl##4792
turnin Marsh Frog Legs##1218 |goto 55.44,26.27
accept Jarl Needs Eyes##1206 |goto 55.44,26.27
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
turnin What's Haunting Witch Hill?##11180 |goto 55.58,26.14
accept The Witch's Bane##11181 |goto 55.58,26.14
step
click Witchbane##186423
|tip They look like green plants with purple flowers in the middle of them on the ground around this area.
collect 9 Witchbane##33112 |q 11181/1 |goto 57.82,24.43
You can find more around:
[56.34,28.14]
[54.48,25.37]
[53.32,20.90]
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
turnin The Witch's Bane##11181 |goto 55.58,26.14
accept Cleansing Witch Hill##11183 |goto 55.58,26.14
step
use the Witchbane Torch##33113
|tip Use it while standing at the end of the dock right outside.
Watch the dialogue
kill Zelfrax##23864
Cleanse Witch Hill |q 11183/1 |goto 55.21,26.64
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
turnin Cleansing Witch Hill##11183 |goto 55.58,26.14
step
talk "Stinky" Ignatz##4880
|tip This is an escort quest.
|tip Kill the raptors near him before accpeting the quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Stinky's Escape##1270 |goto 46.88,17.52 |noautoaccept
step
Watch the dialogue
|tip Follow "Stinky" Ignatz and protect him as he walks.
|tip He eventually walks to this location.
Help Stinky Find Bogbean Leaves |q 1270/1 |goto 48.86,24.65
stickystart "Collect_Unpopped_Darkmist_Eyes"
step
Avoid the nearby tower |goto 46.69,22.30 < 30 |only if walking
Kill Darkmist enemies around this area
|tip Inside and outside the mine.
collect 5 Acidic Venom Sac##5959 |q 1322/1 |goto 33.22,22.76
step
label "Collect_Unpopped_Darkmist_Eyes"
Kill Darkmist enemies around this area
|tip Inside and outside the mine.
collect 20 Unpopped Darkmist Eye##5884 |q 1206/1 |goto 33.22,22.76
step
talk Nazeer Bloodpike##4791
turnin Theramore Spies##1201 |goto 35.21,30.66
accept The Theramore Docks##1202 |goto 35.21,30.66
turnin The Lost Report##1238 |goto 35.21,30.66
step
talk Do'gol##5087
turnin The Black Shield##1322 |goto 36.53,30.80
accept The Black Shield##1323 |goto 36.53,30.80
step
talk Krog##4926
turnin The Black Shield##1323 |goto 36.42,31.88
step
Kill enemies around this area
|tip You are about to have to complete a quest that can be difficult for some classes.
|tip It will help to be a level higher.
Reach Level 39 |ding 39 |goto 42.26,23.51
step
Enter the building |goto 46.66,24.01 < 7 |walk
talk Ithania##17119
|tip Inside the building.
Tell her _"Balandar sent me to get you out of here and reclaim his cargo. He's waiting for you in Brackenwall Village."_
Watch the dialogue
Rescue Ithania from North Point Tower |q 9437/1 |goto 46.63,24.47
step
click Warped Crates
|tip At the top of the tower.
collect Dawn Runner Cargo##23657 |q 9437/2 |goto 46.62,24.55
step
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##1206 |goto 55.43,26.27
accept Jarl Needs a Blade##1203 |goto 55.43,26.27
step
_Destroy These Items:_
|tip They are no longer needed.
trash Unpopped Darkmist Eye##5884
step
click Loose Dirt
accept The Severed Head##1239 |goto 55.44,25.93
stickystart "Collect_Mirefin_Heads"
step
Follow the path down |goto 57.75,19.91 < 15 |only if walking
kill Razorspine##23841
|tip He looks like and orange murloc that walks up and down this path.
collect Razorspine's Sword##33110 |q 1203/1 |goto 57.84,19.03
step
label "Collect_Mirefin_Heads"
Kill Mirefin enemies around this area
collect 8 Mirefin Head##5847 |q 1177/1 |goto 57.99,15.64
You can find more around [54.19,15.20]
step
Follow the path up |goto 57.88,18.47 < 20 |only if walking
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs a Blade##1203 |goto 55.43,26.27
step
Follow the path |goto 63.08,42.27 < 30 |only if walking
Continue following the path |goto 67.53,43.20 < 30 |only if walking
click Captain's Footlocker
|tip Underwater.
collect Captain's Documents##5882 |q 1202/1 |goto 71.56,51.17
step
talk Balandar Brightstar##17095
turnin Twilight of the Dawn Runner##9437 |goto 35.86,31.74
step
talk Nazeer Bloodpike##4791
turnin The Theramore Docks##1202 |goto 35.21,30.66
turnin The Severed Head##1239 |goto 35.21,30.66
accept The Troll Witchdoctor##1240 |goto 35.21,30.66
accept Help Mudsprocket##11215 |goto 35.21,30.66
step
talk Mudcrush Durtfeet##4503
turnin Hungry!##1177 |goto 35.15,38.26
step
Enter the building |goto 45.89,57.21 < 7 |walk
talk Tabetha##6546
|tip Inside the building.
turnin Check Up on Tabetha##11213 |goto 46.05,57.09
step
talk Apprentice Garion##23601
|tip Inside the building.
accept The Reagent Thief##11173 |goto 46.05,57.24
step
talk Apprentice Morlann##23600
|tip He walks around this area.
accept Direhorn Raiders##11156 |goto 46.10,57.44
accept The Zeppelin Crash##11172 |goto 46.10,57.44
stickystart "Collect_Marsh_Venom"
step
kill Deadmire##4841
|tip He looks like a white crocodile that walks in the water around this area.
|tip He wanders in the water all around this area.
collect Deadmire's Tooth##5945 |q 1205/1 |goto 42.64,49.15
You can also find him around: |notinsticky
[43.76,49.96]
[45.66,52.97]
[47.47,54.70]
[47.72,55.92]
[46.97,58.63]
[45.93,61.11]
[44.99,62.10]
[50.2, 52.7]
step
label "Collect_Marsh_Venom"
Kill enemies around this area
|tip Mottled Drywallow Crocolisks will not drop the quest item.
collect 6 Marsh Venom##33103 |q 11173/1 |goto 40.26,56.22
You can find more around: |notinsticky
[41.48,51.89]
[44.15,53.53]
stickystart "Kill_Direhorn_Grimtotems"
step
kill Apothecary Cylla##23881
|tip Inside the building.
collect Sealed Letter##33115 |n
use the Sealed Letter##33115
accept Signs of Treachery?##11186 |goto 47.22,46.59
step
label "Kill_Direhorn_Grimtotems"
Kill Grimtotem enemies around this area
Kill #12# Direhorn Grimtotems |q 11156/1 |goto 46.68,48.10
step
talk Moxie Steelgrille##23797
turnin The Zeppelin Crash##11172 |goto 53.58,56.91
accept Corrosion Prevention##11174 |goto 53.58,56.91
accept Secure the Cargo!##11207 |goto 53.58,56.91
stickystart "Dissolve_Oozes"
stickystart "Collect_Zeppelin_Cargo"
step
click Gizmorium Shipping Crate
collect Seaforium Booster##5862 |q 1187/1 |goto 54.07,56.49
step
label "Dissolve_Oozes"
use the Ooze Buster##33108
|tip Use it on green and blue oozes around this area, while you have the "Energized!" buff.
|tip Stand next to the blue lightning structures around this area to get the "Energized!" buff.
Dissolve #10# Oozes |q 11174/1 |goto 53.1,56.0
step
label "Collect_Zeppelin_Cargo"
click the Zeppelin Cargo##186450
|tip They look like brown wooden boxes on the ground around this area.
collect 8 Zeppelin Cargo##33163 |q 11207/1 |goto 53.1,56.0
step
talk Moxie Steelgrille##23797
turnin Corrosion Prevention##11174 |goto 53.58,56.91
turnin Secure the Cargo!##11207 |goto 53.58,56.91
accept Delivery for Drazzit##11208 |goto 53.58,56.91
step
talk Apprentice Morlann##23600
|tip He walks around this area.
turnin Direhorn Raiders##11156 |goto 46.10,57.44
step
Enter the building |goto 45.89,57.21 < 7 |walk
talk Apprentice Garion##23601
|tip Inside the building.
turnin The Reagent Thief##11173 |goto 46.05,57.24
step
talk Dyslix Silvergrub##40358
fpath Mudsprocket |goto 42.82,72.43
step
Enter the building |goto 42.09,72.95 < 7 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin Delivery for Drazzit##11208 |goto 42.33,72.93
turnin Help Mudsprocket##11215 |goto 42.33,72.93
step
talk Nazeer Bloodpike##4791
turnin Signs of Treachery?##11186 |goto 35.22,30.66
step
talk Melor Stonehoof##3441
turnin Deadmire##1205 |goto Thunder Bluff 61.54,80.91
step
talk Torn##2996
|tip Inside the building.
|tip Put these items in the bank.
bank Seaforium Booster##5862 |goto 47.62,58.58 |q 1187
step
talk Mebok Mizzyrix##3446
turnin Stinky's Escape##1270 |goto The Barrens 62.37,37.62
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (39-39)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 39 and level <= 40 and not completedq(571) end,
next="Leveling Guides\\Classic (12-58)\\Swamp of Sorrows (40-41)",
},[[
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.10,76.22
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Scaring Shaky##606 |goto 27.78,77.07
step
Enter the building |goto 27.08,77.62 < 5 |walk
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin The Rumormonger##1115 |goto 26.94,77.21
accept Dream Dust in the Swamp##1116 |goto 26.94,77.21
step
talk Far Seer Mok'thardin##2465
accept Mok'thardin's Enchantment##572 |goto 32.12,29.24
step
talk Kin'weelay##2519
turnin The Troll Witchdoctor##1240 |goto 32.27,27.71
step
Watch the dialogue
talk Kin'weelay##2519
accept The Vile Reef##629 |goto 32.27,27.71
step
click Bubbling Cauldron
accept Marg Speaks##1261 |goto 32.22,27.65
stickystart "Kill_Jungle_Stalkers"
step
kill Jungle Stalker##687+
collect 10 Jungle Stalker Feather##3863 |q 572/1 |goto 33.70,38.83
You can find more around: |notinsticky
[31.79,41.74]
[28.91,44.29]
[27.19,49.65]
step
label "Kill_Jungle_Stalkers"
kill 10 Jungle Stalker##687 |q 196/1 |goto 33.70,38.83
You can find more around: |notinsticky
[31.79,41.74]
[28.91,44.29]
[27.19,49.65]
step
talk Far Seer Mok'thardin##2465
turnin Mok'thardin's Enchantment##572 |goto 32.12,29.24
accept Mok'thardin's Enchantment##571 |goto 32.12,29.24
step
Follow the path up |goto 45.77,28.58 < 20 |only if walking
kill Bhag'thera##728
|tip He looks like an unstealthed black panther.
|tip He can spawn in multiple locations.
collect Fang of Bhag'thera##3876 |q 193/1 |goto 46.37,29.05
Cross this tree bridge to get to the other locations: [48.92,28.04]
You can also find him around: |notinsticky
[49.60,24.03]
[48.99,20.20]
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##196 |goto 35.66,10.81
accept Raptor Mastery##197 |goto 35.66,10.81
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto 35.55,10.55
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
Enter the tunnel |goto 27.92,73.71 < 10 |only if walking
Leave the tunnel |goto 29.59,72.43 < 10 |only if walking
click Bloodsail Correspondence
turnin The Bloodsail Buccaneers##595 |goto 27.28,69.52
accept The Bloodsail Buccaneers##597 |goto 27.28,69.52
stickystart "Collect_Mistvale_Giblets"
step
Follow the road |goto 29.68,72.23 < 30 |only if walking
kill Elder Mistvale Gorilla##1557+
collect Aged Gorilla Sinew##3862 |q 571/1 |goto 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
label "Collect_Mistvale_Giblets"
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 606/1 |goto 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Enter the tunnel |goto 29.56,72.51 < 10 |only if walking
Leave the tunnel |goto 27.95,73.67 < 10 |only if walking
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##606 |goto 26.90,73.59
accept Return to MacKinley##607 |goto 26.90,73.59
step
talk First Mate Crazz##2490
turnin The Bloodsail Buccaneers##597 |goto 28.10,76.21
accept The Bloodsail Buccaneers##599 |goto 28.10,76.21
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Return to MacKinley##607 |goto 27.78,77.07
step
Enter the building |goto 27.08,77.62 < 5 |walk
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building.
turnin The Bloodsail Buccaneers##599 |goto 27.17,77.01
step
talk Far Seer Mok'thardin##2465
turnin Mok'thardin's Enchantment##571 |goto 32.12,29.24
accept Mok'thardin's Enchantment##573 |goto 32.12,29.24
step
Enter the building |goto 31.32,29.57 < 7 |walk
talk Innkeeper Thulbek##5814
|tip Inside the building.
home Grom'gol Base Camp |goto 31.49,29.75
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Swamp of Sorrows (39-40)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Swamp of Sorrows",
condition_suggested=function() return level >= 40 and level <= 41 and not completedq(1184) end,
next="Leveling Guides\\Classic (12-58)\\Badlands (41-42)",
},[[
step
Avoid Darkshire |goto Duskwood 78.37,53.04 < 20 |only if walking
Follow the road |goto Duskwood 82.17,45.36 < 20 |only if walking
talk Deathstalker Zraedus##5418
accept Nothing But The Truth##1372 |goto Duskwood 87.81,35.63
step
talk Apothecary Faustin##5414
turnin Nothing But The Truth##1372 |goto 87.46,35.25
step
Follow the road |goto 87.73,40.68 < 30 |only if walking
Follow the road |goto Deadwind Pass 52.04,43.41 < 20 |only if walking
Kill Whelp enemies around this area
collect 10 Speck of Dream Dust##5803 |q 1116/1 |goto Swamp of Sorrows 14.74,60.20
step
path	follow strict;	loop;	ants curved;	dist 30
path	32.39,35.38		33.15,43.58		37.34,46.76		42.24,33.84
path	47.11,38.83		49.86,40.28		54.02,39.21		55.84,35.85
kill Noboru the Cudgel##5477
|tip He looks like a larger Lost One creature that walks around this area with 2 bodyguards.
collect Noboru's Cudgel##6196 |q 1392 |future
step
use Noboru's Cudgel##6196
accept Noboru the Cudgel##1392
step
talk Magtoor##1776
turnin Noboru the Cudgel##1392 |goto 25.99,31.40
accept Draenethyst Crystals##1389 |goto 25.99,31.40
step
Enter the building |goto 45.26,55.32 < 7 |walk
talk Dar##5591
|tip Inside the building.
accept Lack of Surplus##698 |goto 44.70,57.20
step
talk Breyk##6026
fpath Stonard |goto 46.07,54.82
step
Enter the building |goto 46.92,54.03 < 7 |walk
talk Cersei Dusksinger##17109
|tip Inside the building.
accept Little Morsels##9440 |goto 47.82,54.95
step
talk Fel'zerul##1443
|tip Upstairs inside the building.
accept Pool of Tears##1424 |goto 47.93,54.80
step
talk Helgrum the Swift##1442
|tip Upstairs inside the building.
accept Neeka Bloodscar##1418 |goto 47.75,55.20
step
use an Elixir of Water Breathing##5996
click Atal'ai Artifact+
|tip They look like various small objects on the ground underwater around this area.
|tip You can find them all around this large lake.
collect 10 Atal'ai Artifact##6175 |q 1424/1 |goto 67.14,58.70
step
Kill Sawtooth enemies around this area
|tip They look like crocodiles.
collect 8 Unprepared Sawtooth Flank##6169 |q 698/1 |goto 75.12,18.47
You can find more around [83.03,33.42]
step
talk Tok'Kar##5592
turnin Lack of Surplus##698 |goto 81.32,80.97
step
Kill enemies around this area
Reach Level 41 |ding 41 |goto 75.12,18.47
You can find more around [83.03,33.42]
stickystart "Collect_Draenethyst_Crystals"
step
use the Fel-Tainted Morsels##23659
|tip Use them on the Captured Jaguar.
|tip Inside the cage.
Feed the Captured Jaguar |q 9440/2 |goto 65.31,22.63
step
use the Fel-Tainted Morsels##23659
|tip Use them on the Captured Tarantula.
|tip Inside the cage.
Feed the Captured Tarantula |q 9440/3 |goto 62.79,23.66
step
use the Fel-Tainted Morsels##23659
|tip Use them on the Captured Crocolisk.
|tip Inside the cage.
Feed the Captured Crocolisk |q 9440/1 |goto 60.48,22.36
step
label "Collect_Draenethyst_Crystals"
click Draenethyst Crystal+
|tip They look like large clusters of blue crystals on the ground around this area.
collect 6 Draenethyst Crystal##6071 |q 1389/1 |goto 55.74,27.60
You can find more around [63.50,22.72]
step
talk Magtoor##1776
turnin Draenethyst Crystals##1389 |goto 25.99,31.40
step
Enter the building |goto 46.92,54.03 < 7 |walk
talk Cersei Dusksinger##17109
|tip Inside the building.
turnin Little Morsels##9440 |goto 47.82,54.95
step
talk Fel'zerul##1443
|tip Upstairs inside the building.
turnin Pool of Tears##1424 |goto 47.93,54.79
accept The Atal'ai Exile##1429 |goto 47.93,54.79
step
talk Belgrom Rockmaul##4485
turnin Parts of the Swarm##1184 |goto Orgrimmar 75.23,34.24
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Badlands (41-42)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Badlands",
condition_suggested=function() return level >= 41 and level <= 42 and not completedq(703) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (42-43)",
},[[
step
Enter the building |goto Orgrimmar 53.63,64.63 < 7 |walk
talk Auctioneer Thathung##8673
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip These items will be used to complete a few easy quests in the Badlands for a lot of quick experience.
|tip If you can't get them, that's okay, but you will have to skip some quests later in the guide.
collect Frost Oil##3829 |goto Orgrimmar 55.69,62.82 |q 713 |future
collect Gyrochronatom##4389 |goto Orgrimmar 55.69,62.82 |q 714 |future
collect Healing Potion##929 |goto Orgrimmar 55.69,62.82 |q 715 |future
collect Lesser Invisibility Potion##3823 |goto Orgrimmar 55.69,62.82 |q 715 |future
collect Patterned Bronze Bracers##2868 |goto Orgrimmar 55.69,62.82 |q 716 |future
collect 9 Blue Pearl##4611 |goto Orgrimmar 55.69,62.82 |q 705 |future
step
Enter the tunnel |goto Wetlands 50.14,71.53 < 7 |only if walking
Enter the tunnel |goto Wetlands 50.62,82.57 < 7 |only if walking
Enter the tunnel |goto Wetlands 55.65,84.87 < 7 |only if walking
Avoid Thelsamar |goto Loch Modan 32.93,52.96 < 30 |only if walking
Enter the Badlands |goto Loch Modan 47.35,82.06 < 30 |only if walking
Follow the path |goto Badlands 45.70,51.41 < 30 |only if walking
talk Rigglefuzz##2817
accept Pearl Diving##705 |goto Badlands 42.39,52.93
accept Barbecued Buzzard Wings##703 |goto Badlands 42.39,52.93
step
talk Rigglefuzz##2817
turnin Pearl Diving##705 |goto 42.39,52.93
step
talk Martek the Exiled##4618
turnin Martek the Exiled##1106 |goto 42.22,52.69
accept Indurium##1108 |goto 42.22,52.69
step
Follow the path |goto 48.69,53.36 < 30 |only if walking
Kill Stonevault enemies around this area
collect 10 Indurium Flake##5797 |q 1108/1 |goto 50.51,69.96
step
Follow the path |goto 48.69,53.36 < 30 |only if walking
talk Martek the Exiled##4618
turnin Indurium##1108 |goto 42.21,52.70
step
Watch the dialogue
talk Martek the Exiled##4618
accept News for Fizzle##1137 |goto 42.21,52.70
step
talk Lotwil Veriatus##2921
accept Study of the Elements: Rock##710 |goto 25.95,44.87
accept Coolant Heads Prevail##713 |goto 25.95,44.87
step
talk Lotwil Veriatus##2921
turnin Coolant Heads Prevail##713 |goto 25.95,44.87
accept Gyro... What?##714 |goto 25.95,44.87
step
talk Lotwil Veriatus##2921
turnin Gyro... What?##714 |goto 25.95,44.87
step
talk Lucien Tosselwrench##2920
accept Liquid Stone##715 |goto 25.82,44.24
step
talk Lucien Tosselwrench##2920
turnin Liquid Stone##715 |goto 25.82,44.24
step
kill Lesser Rock Elemental##2735+
collect 10 Small Stone Shard##4626 |q 710/1 |goto 19.46,43.02
You can find more around [13.98,39.71]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##710 |goto 25.95,44.87
accept Study of the Elements: Rock##711 |goto 25.95,44.87
step
talk Gorrik##2861
fpath Kargath |goto 3.99,44.78
step
talk Neeka Bloodscar##5394
|tip At the top of the tower.
turnin Neeka Bloodscar##1418 |goto 6.48,47.18
accept Coyote Thieves##1419 |goto 6.48,47.18
accept Report to Helgrum##1420 |goto 6.48,47.18
step
Enter the building |goto 3.83,46.98 < 7 |walk
talk Jarkal Mossmeld##6868
|tip Upstairs inside the building.
accept Badlands Reagent Run##2258 |goto 2.42,46.06
step
kill Lesser Rock Elemental##2735+
collect 5 Rock Elemental Shard##7848 |q 2258/3 |goto 19.46,43.02
You can find more around [13.98,39.71]
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Buzzard_Wings"
stickystart "Collect_Crag_Coyote_Fangs"
stickystart "Collect_Coyote_Jawbones"
step
kill Rock Elemental##92+
collect 3 Large Stone Slab##4627 |q 711/1 |goto 39.30,77.11
You can find more around [43.56,84.04]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##711 |goto 25.95,44.87
accept Study of the Elements: Rock##712 |goto 25.95,44.87
step
label "Collect_Buzzard_Gizzards"
Kill Buzzard enemies around this area
collect 5 Buzzard Gizzard##7847 |q 2258/1 |goto 16.82,59.84
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Buzzard_Wings"
Kill Buzzard enemies around this area
collect 4 Buzzard Wing##3404 |q 703/1 |goto 16.82,59.84
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Crag_Coyote_Fangs"
Kill Coyote enemies around this area
collect 10 Crag Coyote Fang##7846 |q 2258/2 |goto 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
label "Collect_Coyote_Jawbones"
Kill Coyote enemies around this area
collect 30 Coyote Jawbone##6166 |q 1419/1 |goto 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
Kill enemies around this area
Reach Level 42 |ding 42 |goto 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
Follow the path |goto 13.20,83.48 < 15 |only if walking
kill Greater Rock Elemental##2736+
collect 5 Bracers of Rock Binding##4628 |q 712/1 |goto 15.36,88.40
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##712 |goto 25.95,44.87
accept This Is Going to Be Hard##734 |goto 25.95,44.87
step
talk Lucien Tosselwrench##2920
turnin This Is Going to Be Hard##734 |goto 25.82,44.25
accept This Is Going to Be Hard##777 |goto 25.82,44.25
accept Stone Is Better than Cloth##716 |goto 25.82,44.24
step
talk Lucien Tosselwrench##2920
turnin Stone Is Better than Cloth##716 |goto 25.82,44.24
step
talk Lotwil Veriatus##2921
turnin This Is Going to Be Hard##777 |goto 25.95,44.86
accept This Is Going to Be Hard##778 |goto 25.95,44.86
|tip A Level 45 elemental will appear and attack you, so be prepared.
step
kill Fam'retor Guardian##2919
|tip If you have trouble, try to find someone to help you.
collect Lotwil's Shackles of Elemental Binding##4847 |q 778/1 |goto 26.10,46.81
step
talk Lotwil Veriatus##2921
|tip He walks back to this location.
turnin This Is Going to Be Hard##778 |goto 25.95,44.86
step
Enter the building |goto 3.85,47.00 < 7 |walk
talk Jarkal Mossmeld##6868
|tip Upstairs inside the building.
turnin Badlands Reagent Run##2258 |goto 2.42,46.06
step
_Destroy These Items:_
|tip They are no longer needed.
trash Crag Coyote Fang##7846
step
talk Neeka Bloodscar##5394
|tip At the top of the tower.
turnin Coyote Thieves##1419 |goto 6.48,47.18
step
talk Rigglefuzz##2817
turnin Barbecued Buzzard Wings##703 |goto 42.39,52.93
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Buzzard Wing##3404
step
Enter the building |goto Swamp of Sorrows 46.92,54.03 < 7 |walk
talk Helgrum the Swift##1442
|tip Upstairs inside the building.
turnin Report to Helgrum##1420 |goto Swamp of Sorrows 47.75,55.20
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (42-43)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 42 and level <= 43 and not completedq(576) end,
next="Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (43-44)",
},[[
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Dream Dust in the Swamp##1116 |goto Stranglethorn Vale 26.94,77.21
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
accept Up to Snuff##587 |goto 26.92,77.35
step
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Venture Company Mining##600 |goto 27.12,77.21
accept Zanzil's Secret##621 |goto 27.12,77.21
step
talk Viznik Goldgrubber##2625
|tip Put these items in the bank.
bank Bundle of Atal'ai Artifacts##6193 |goto 26.54,76.57 |q 1429
step
talk Privateer Bloads##2494
|tip He walks around this area.
accept Akiris by the Bundle##617 |goto 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Voodoo Dues##609 |goto 27.78,77.07
step
Run up the ramp |goto 27.86,76.76 < 7 |only if walking
Follow the path |goto 28.36,75.76 < 7 |only if walking
talk Dizzy One-Eye##2493
accept Keep An Eye Out##576 |goto 28.59,75.90
stickystart "Collect_Snuff"
stickystart "Collect_Dizzys_Eye"
stickystart "Kill_Bloodsail_Swashbucklers"
step
Enter the tunnel |goto 27.95,73.61 < 10 |only if walking
Leave the tunnel |goto 29.54,72.53 < 10 |only if walking
Follow the path |goto 32.89,73.75 < 30 |only if walking
click Bloodsail Charts
|tip It looks like a brown piece of paper.
|tip It can spawn on any of the objects in these 2 small camps.
collect Bloodsail Charts##3920 |q 604/2 |goto 29.59,80.83
Also check around [27.15,82.69]
step
click Bloodsail Orders
|tip It looks like a white unrolled scroll.
|tip It can spawn on any of the objects in these 2 small camps.
collect Bloodsail Orders##3921 |q 604/3 |goto 29.59,80.80
Also check around: |notinsticky
[27.18,82.66]
[27.74,83.13]
step
label "Collect_Snuff"
Kill Bloodsail enemies around this area
collect 15 Snuff##3910 |q 587/1 |goto 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Collect_Dizzys_Eye"
Kill Bloodsail enemies around this area
collect Dizzy's Eye##3897 |q 576/1 |goto 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Kill_Bloodsail_Swashbucklers"
kill 10 Bloodsail Swashbuckler##1563 |q 604/1 |goto 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
stickystart "Collect_Akiris_Reeds"
stickystart "Kill_Naga_Explorers"
step
Follow the path |goto 32.75,73.65 < 30 |only if walking
Follow the path up |goto 29.71,66.37 < 20 |only if walking
Jump down here |goto 27.85,67.41 < 15 |only if walking
Follow the path up |goto 24.87,63.68 < 15 |only if walking
Follow the path up |goto 25.76,63.47 < 10 |only if walking
Follow the path |goto 27.35,62.99 < 15 |only if walking
click The Holy Spring
collect Holy Spring Water##737 |q 573/2 |goto 28.92,61.96
step
label "Collect_Akiris_Reeds"
kill Naga Explorer##1907+
collect 10 Akiris Reed##4029 |q 617/1 |goto 27.88,62.75
You can find more around: |notinsticky
[27.00,63.02]
[25.43,62.88]
[26.04,60.45]
step
label "Kill_Naga_Explorers"
kill 10 Naga Explorer##1907 |q 573/1 |goto 27.88,62.75
You can find more around: |notinsticky
[27.00,63.02]
[25.43,62.88]
[26.04,60.45]
stickystart "Collect_Zanzils_Mixture"
step
Cross the bridge |goto 27.19,58.95 < 15 |only if walking
kill Jon-Jon the Crow##2536
collect Jon-Jon's Golden Spyglass##3925 |q 609/2 |goto 34.93,51.85
step
kill Maury "Club Foot" Wilkins##2535
collect Maury's Clubbed Foot##3924 |q 609/1 |goto 35.25,51.26
step
Follow the path |goto 33.73,53.77 < 20 |only if walking
kill Chucky "Ten Thumbs"##2537
collect Chucky's Huge Ring##3926 |q 609/3 |goto 40.00,58.24
step
label "Collect_Zanzils_Mixture"
Kill Zanzil enemies around this area
collect 12 Zanzil's Mixture##4016 |q 621/1 |goto 40.00,58.24
You can find more around [34.12,51.96]
step
Follow the road |goto 33.44,53.67 < 30 |only if walking
Kill Venture Co. enemies around this area
collect 10 Singing Blue Crystal##3917 |q 600/1 |goto 41.22,43.95
step
Follow the path |goto 38.45,40.55 < 30 |only if walking
kill Tethis##730
|tip He looks like a blue raptor that walks around this area.
collect Talon of Tethis##3877 |q 197/1 |goto 32.22,40.89
You can also find him around: |notinsticky
[31.17,43.40]
[28.74,44.84]
step
Follow the path |goto 32.79,40.42 < 100 |only if walking
talk Far Seer Mok'thardin##2465
turnin Mok'thardin's Enchantment##573 |goto 32.12,29.24
step
talk Auctioneer Auctioneer O'reely##15681
|tip Buy these items from the Auction House.
|tip If you have any Green Hills of Stranglethorn pages in your bank, get them out before buying any of these pages.
|tip If you can't get all of the pages, just sell them on the Auction House and skip the quest.
collect Green Hills of Stranglethorn - Page 1##2725 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 4##2728 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 6##2730 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 8##2732 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 10##2734 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 11##2735 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 14##2738 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 16##2740 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 18##2742 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 20##2744 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 21##2745 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 24##2748 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 25##2749 |goto Stranglethorn Vale 26.59,76.36 |q 342 |future
collect Green Hills of Stranglethorn - Page 26##2750 |goto Stranglethorn Vale 26.59,76.36 |q 342 |future
collect Green Hills of Stranglethorn - Page 27##2751 |goto Stranglethorn Vale 26.59,76.36 |q 342 |future
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##197 |goto 35.66,10.81
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Venture Company Mining##600 |goto 27.12,77.21
turnin Zanzil's Secret##621 |goto 27.12,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Rumors for Kravel##1117 |goto 26.94,77.21
accept Tran'rek##2864 |goto 26.94,77.21
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
turnin Up to Snuff##587 |goto 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##604 |goto 27.17,77.01
step
talk Viznik Goldgrubber##2625
|tip Put these items in the bank.
bank Goblin Rumors##5804 |goto 26.54,76.57 |q 1117
step
talk Privateer Bloads##2494
|tip He walks around this area.
turnin Akiris by the Bundle##617 |goto 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Voodoo Dues##609 |goto 27.78,77.07
accept Stoley's Debt##2872 |goto 27.78,77.07
step
Run up the ramp |goto 27.86,76.76 < 7 |only if walking
Follow the path |goto 28.36,75.76 < 7 |only if walking
talk Dizzy One-Eye##2493
turnin Keep An Eye Out##576 |goto 28.59,75.90
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (43-44)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow Marsh",
condition_suggested=function() return level >= 43 and level <= 44 and not completedq(1205) end,
next="Leveling Guides\\Classic (12-58)\\Tanaris (44-45)",
},[[
step
talk Overlord Mok'Morokk##4500
accept Overlord Mok'Morokk's Concern##1166 |goto Dustwallow Marsh 36.30,31.42
step
Enter the cave |goto 36.83,32.41 < 10 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
accept Identifying the Brood##1169 |goto 37.15,33.08
step
talk Tharg##4502
accept Army of the Black Dragon##1168 |goto 37.37,31.39
step
talk Ogron##4983
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Questioning Reethe##1273 |goto 40.96,36.69
step
Watch the dialogue
|tip Follow Ogron and protect him as he walks.
|tip He eventually walks to this location.
Kill the enemies that attack
|tip A group of 4 enemies will attack.
Question Reethe with Ogron |q 1273/1 |goto 42.65,38.07
step
talk Krog##4926
turnin Questioning Reethe##1273 |goto 36.42,31.88
step
click Wanted Poster##184945
accept WANTED: Goreclaw the Ravenous##11184 |goto 41.75,73.11
step
Enter the building |goto 41.87,73.36 < 7 |walk
talk Brogg##23579
|tip Inside the building.
accept Bloodfen Feathers##11158 |goto 41.86,73.96
step
talk Gizzix Grimegurgle##23570
accept Catch a Dragon by the Tail##11217 |goto 41.54,72.98
stickystart "Collect_Bloodfen_Feathers"
step
Follow the road |goto 40.56,68.71 < 30 |only if walking
kill Goreclaw the Ravenous##23873 |q 11184/1 |goto 32.25,65.44
|tip He looks like a big purple and green raptor that walks around this area.
step
label "Collect_Bloodfen_Feathers"
Kill Bloodfen enemies around this area
collect 5 Bloodfen Feather##33085 |q 11158/1 |goto 33.46,64.72
step
Enter the building |goto 42.09,72.94 < 7 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin WANTED: Goreclaw the Ravenous##11184 |goto 42.33,72.93
step
Enter the building |goto 41.88,73.36 < 7 |walk
talk Brogg##23579
|tip Inside the building.
turnin Bloodfen Feathers##11158 |goto 41.86,73.96
accept Banner of the Stonemaul##11160 |goto 41.86,73.96
accept The Essence of Enmity##11161 |goto 41.86,73.96
stickystart "Collect_Searing_Tongues"
stickystart "Collect_Searing_Hearts"
step
click Wyrmtail##186463+
|tip They look like green balls of vines on the ground around this area.
collect 8 Wyrmtail##33175 |q 11217/1 |goto 45.34,79.03
step
label "Collect_Searing_Tongues"
Kill Searing enemies around this area
|tip They look like small flying dragons.
collect 7 Searing Tongue##5840 |q 1169/1 |goto 42.24,76.34
You can find more around: |notinsticky
[42.58,80.29]
[47.01,81.34]
step
label "Collect_Searing_Hearts"
Kill Searing enemies around this area
|tip They look like small flying dragons.
collect 7 Searing Heart##5841 |q 1169/2 |goto 42.24,76.34
You can find more around: |notinsticky
[42.58,80.29]
[47.01,81.34]
step
talk Gizzix Grimegurgle##23570
turnin Catch a Dragon by the Tail##11217 |goto 41.54,72.98
step
Enter the building |goto 41.88,73.36 < 7 |walk
talk Axle##23995
|tip He walks around this area.
|tip Inside the building.
home Mudsprocket |goto 41.90,73.89
stickystart "Collect_Black_Dragonkin_Essences"
stickystart "Kill_Firemane_Scalebanes"
stickystart "Kill_Firemane_Scouts"
stickystart "Kill_Firemane_Ash_Tails"
step
click Mok'Morokk's Snuff
collect Mok'Morokk's Snuff##5834 |q 1166/1 |goto 44.53,66.04
step
Follow the path |goto 39.68,66.83 < 10 |only if walking
click Mok'Morokk's Grog
collect Mok'Morokk's Grog##5835 |q 1166/2 |goto 38.67,65.58
step
Enter the cave |goto 38.41,66.04 < 10 |walk
click Stonemaul Banner##6957
|tip Inside the cave.
collect Stonemaul Banner##33086 |q 11160/1 |goto 38.12,69.43
step
Follow the path |goto 38.39,68.16 < 7 |walk
click Mok'Morokk's Strongbox
|tip Inside the cave.
collect Mok'Morokk's Strongbox##5836 |q 1166/3 |goto 36.64,69.57
step
label "Kill_Firemane_Scalebanes"
kill 5 Firemane Scalebane##4328 |q 1168/3 |goto 38.38,66.07
|tip Inside the cave. |notinsticky
|tip They share spawn points with other Firemane enemies, so kill those too, if you can't find any. |notinsticky
step
Leave the cave |goto 38.38,66.07 < 10 |c |q 1168
step
label "Collect_Black_Dragonkin_Essences"
Kill Firemane enemies around this area
|tip Inside and outside the cave. |notinsticky
use Brogg's Totem##33088
|tip Use it on their corpses.
collect 10 Black Dragonkin Essence##33087 |q 11161/1 |goto 38.50,65.93
stickystop "Kill_Firemane_Scouts"
stickystop "Kill_Firemane_Ash_Tails"
step
Follow the path |goto 39.68,66.82 < 10 |only if walking
Enter the building |goto 41.88,73.36 < 7 |walk
talk Brogg##23579
|tip Inside the building.
turnin Banner of the Stonemaul##11160 |goto 41.86,73.97
turnin The Essence of Enmity##11161 |goto 41.86,73.97
accept Spirits of Stonemaul Hold##11159 |goto 41.86,73.97
stickystart "Kill_Firemane_Scouts"
stickystart "Kill_Firemane_Ash_Tails"
step
click Ogre Remains##233818+
|tip They look like large bone rib cages on the ground around this area.
kill Stonemaul Spirit##23786+
Lay #10# Stonemaul Spirits to Rest |q 11159/1 |goto 42.87,66.93
You can find more around: |notinsticky
[44.70,65.94]
[46.60,65.90]
step
label "Kill_Firemane_Ash_Tails"
kill 10 Firemane Ash Tail##4331 |q 1168/2 |goto 39.33,65.51
You can find more around: |notinsticky
[42.59,66.78]
[44.80,65.91]
step
label "Kill_Firemane_Scouts"
kill 10 Firemane Scout##4329 |q 1168/1 |goto 39.33,65.51
You can find more around: |notinsticky
[42.59,66.78]
[44.80,65.91]
step
Follow the path down |goto 55.12,58.64 < 15 |only if walking
Kill Muckshell enemies around this area
|tip Underwater.
collect Jeweled Pendant##5942 |q 1261/1 |goto 56.97,61.32
You can find more around: |notinsticky
[55.05,63.62]
[59.71,67.50]
[60.49,61.94]
step
talk Brogg##23579
|tip Inside the building.
turnin Spirits of Stonemaul Hold##11159 |goto 41.86,73.97
accept Challenge to the Black Flight##11162 |goto 41.86,73.97
step
use the Stonemaul Banner##33095
|tip Use it at the foot of the stone ramp at the entrance to Onyxia's Lair.
Watch the dialogue
kill Smolderwing##23789
Avenge the Stonemaul Clan |q 11162/1 |goto 52.11,75.73
step
Enter the building |goto 41.87,73.35 < 7 |walk
talk Brogg##23579
|tip Inside the building.
turnin Challenge to the Black Flight##11162 |goto 41.86,73.97
step
talk Nazeer Bloodpike##4791
turnin Marg Speaks##1261 |goto 35.21,30.66
accept Report to Zor##1262 |goto 35.21,30.66
step
talk Overlord Mok'Morokk##4500
turnin Overlord Mok'Morokk's Concern##1166 |goto 36.29,31.41
step
Enter the cave |goto 36.83,32.42 < 10 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
turnin Identifying the Brood##1169 |goto 37.15,33.08
step
Watch the dialogue
|tip Inside the cave.
talk Draz'Zilb##4501
accept The Brood of Onyxia##1170 |goto 37.15,33.08
step
talk Tharg##4502
turnin Army of the Black Dragon##1168 |goto 37.37,31.39
step
talk Overlord Mok'Morokk##4500
turnin The Brood of Onyxia##1170 |goto 36.30,31.42
accept The Brood of Onyxia##1171 |goto 36.30,31.42
step
Enter the cave |goto 36.83,32.42 < 10 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
turnin The Brood of Onyxia##1171 |goto 37.15,33.08
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Tanaris (44-45)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tanaris",
condition_suggested=function() return level >= 44 and level <= 45 and not completedq(1691) end,
next="Leveling Guides\\Classic (12-58)\\Feralas (45-46)",
},[[
step
talk Tran'rek##7876
turnin Tran'rek##2864 |goto Tanaris 51.57,26.76
step
click Wanted Poster
accept WANTED: Caliph Scorpidsting##2781 |goto 51.84,27.02
accept WANTED: Andre Firebeard##2875 |goto 51.84,27.02
step
Enter the building |goto 52.38,27.91 < 7 |walk
talk Innkeeper Fizzgrimble##7733
|tip Inside the building.
home Gadgetzan |goto 52.51,27.91
step
talk Spigot Operator Luglunket##7408
accept Water Pouch Bounty##1707 |goto 52.48,28.44
step
talk Chief Engineer Bilgewhizzle##7407
accept Wastewander Justice##1690 |goto 52.46,28.51
step
Enter the building |goto 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Jeweled Pendant##5942 |goto 52.30,28.91 |q 1262
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Goblin Rumors##5804 |goto 52.30,28.91 |q 1117
collect Seaforium Booster##5862 |goto 52.30,28.91 |q 1187
step
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto 50.21,27.48
step
talk Kravel Koalbeard##4452
turnin Rumors for Kravel##1117 |goto Thousand Needles 77.79,77.27
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Back to Booty Bay##1118 |goto 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin News for Fizzle##1137 |goto 78.06,77.13
step
talk Razzeric##4706
turnin Razzeric's Tweaking##1187 |goto 80.33,76.10
accept Safety First##1188 |goto 80.33,76.10
step
talk Pozzik##4630
accept Keeping Pace##1190 |goto 80.18,75.88
step
talk Zamek##4709
|tip Click "Complete Quest" to complete "Zamek's Distraction".
Click Here After Completing Zamek's Distraction |confirm |goto 79.81,77.02 |q 1190
step
Enter the building |goto 77.52,77.60 < 7 |walk
click Rizzle's Unguarded Plans
|tip Inside the building.
|tip Wait for Rizzle Brassbolts to run out of the building.
turnin Keeping Pace##1190 |goto 77.22,77.42
accept Rizzle's Schematics##1194 |goto 77.22,77.42
step
talk Pozzik##4630
turnin Rizzle's Schematics##1194 |goto 80.18,75.88
step
_Destroy This Item:_
|tip It is no longer needed.
trash Sample of Indurium Ore##5866
step
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 50.96,27.24
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
Kill Wastewander enemies around this area
collect 5 Wastewander Water Pouch##8483 |q 1707/1 |goto 59.82,24.34
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Bandits"
kill 10 Wastewander Bandit##5618 |q 1690/1 |goto 59.82,24.34
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Thives"
kill 10 Wastewander Thief##5616 |q 1690/2 |goto 59.82,24.34
You can find more around [63.51,30.31]
step
talk Haughty Modiste##15165
accept Pirate Hats Ahoy!##8365 |goto 66.56,22.27
step
talk Yeh'kinya##8579
accept Screecher Spirits##3520 |goto 66.99,22.36
step
Enter the building |goto 66.99,23.87 < 7 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
accept Southsea Shakedown##8366 |goto 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Debt##2872 |goto 67.11,23.98
accept Stoley's Shipment##2873 |goto 67.11,23.98
step
path	follow loose;	loop;	ants curved;	dist 30
path	63.84,31.89		63.30,37.23		62.29,37.83		59.52,41.19
path	58.71,38.17		61.87,33.42
kill Caliph Scorpidsting##7847
|tip He walks in a counter-clockwise pattern, so this path will help you find him faster.
|tip He walks with 2 stealthed guards with him, so be careful.
|tip Kite him away from his guards, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Caliph Scorpidsting's Head##8723 |q 2781/1
stickystart "Collect_Southsea_Pirate_Hats"
stickystart "Kill_Southsea_Pirates"
stickystart "Kill_Southsea_Freebooters"
stickystart "Kill_Southsea_Dock_Workers"
stickystart "Kill_Southsea_Swashbucklers"
step
Enter the tunnel |goto 68.62,41.45 < 10 |only if walking
Follow the path |goto 73.18,45.56 < 15 |only if walking
Enter the building |goto 72.61,46.82 < 7 |walk
click Stolen Cargo
|tip Upstairs inside the building.
collect Stoley's Shipment##9244 |q 2873/1 |goto 72.19,46.77
step
Leave the building |goto 72.61,46.82 < 7 |walk
kill Andre Firebeard##7883
|tip Kite him away from the other enemies, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Firebeard's Head##9246 |q 2875/1 |goto 73.37,47.14
step
label "Collect_Southsea_Pirate_Hats"
Kill Southsea enemies around this area
collect 20 Southsea Pirate Hat##20519 |q 8365/1 |goto 73.26,46.42
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Pirates"
kill 10 Southsea Pirate##7855 |q 8366/1 |goto 73.26,46.42
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Freebooters"
kill 10 Southsea Freebooter##7856 |q 8366/2 |goto 73.26,46.42
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Dock_Workers"
kill 10 Southsea Dock Worker##7857 |q 8366/3 |goto 73.76,47.42
|tip You can find more up on the wooden platforms nearby.
step
label "Kill_Southsea_Swashbucklers"
kill 10 Southsea Swashbuckler##7858 |q 8366/4 |goto 75.19,45.96
You can find more in the buildings around [72.96,47.07]
step
talk Spigot Operator Luglunket##7408
turnin Water Pouch Bounty##1707 |goto 52.48,28.44
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Wastewander Water Pouch##8483
trash Gadgetzan Water Co. Care Package##8484
step
talk Chief Engineer Bilgewhizzle##7407
turnin WANTED: Caliph Scorpidsting##2781 |goto 52.46,28.51
turnin Wastewander Justice##1690 |goto 52.46,28.51
accept More Wastewander Justice##1691 |goto 52.46,28.51
step
use the Untapped Dowsing Widget##8584
|tip Use it in the water.
|tip Once you get the Tapped Dowsing Widget, run away to safety immediately.
|tip Multiple higher level enemies appear after using the item.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto 39.09,29.17
step
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto 50.21,27.48
step
talk Haughty Modiste##15165
turnin Pirate Hats Ahoy!##8365 |goto 66.56,22.27
step
Enter the building |goto 66.99,23.87 < 7 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
turnin WANTED: Andre Firebeard##2875 |goto 67.06,23.89
turnin Southsea Shakedown##8366 |goto 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Shipment##2873 |goto 67.11,23.97
accept Deliver to MacKinley##2874 |goto 67.11,23.97
stickystart "Kill_Wastewander_Assassins"
stickystart "Kill_Wastewander_Shadow_Mages"
step
kill 8 Wastewander Rogue##5615 |q 1691/1 |goto 60.87,32.74
|tip They are stealthed around this area.
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Assassins"
kill 6 Wastewander Assassin##5623 |q 1691/2 |goto 60.87,32.74
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Shadow_Mages"
kill 10 Wastewander Shadow Mage##5617 |q 1691/3 |goto 60.87,32.74
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
talk Chief Engineer Bilgewhizzle##7407
turnin More Wastewander Justice##1691 |goto 52.46,28.51
step
Enter the building |goto 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Kravel's Scheme##5826 |goto 52.30,28.91 |q 1118
bank Stoley's Bottle##9245 |goto 52.30,28.91 |q 2874
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Feralas (45-46)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Feralas",
condition_suggested=function() return level >= 45 and level <= 46 and not completedq(3128) end,
next="Leveling Guides\\Classic (12-58)\\Azshara (46-47)",
},[[
step
Ride an elevator down |goto Thousand Needles 45.95,49.76 < 10 |only if walking
Follow the road up |goto Thousand Needles 7.58,10.54 < 20 |only if walking
talk Krueg Skullsplitter##4544
accept A New Cloak's Sheen##2973 |goto Feralas 75.94,42.74
step
talk Rok Orhan##7777
|tip She walks around this area wearing red armor.
accept The Ogres of Feralas##2975 |goto 76.01,43.51
Also check around [73.46,45.68]
step
talk Orwin Gizzmick##8021
accept Gordunni Cobalt##2987 |goto 75.70,44.30
step
talk Shyn##8020
fpath Camp Mojache |goto 75.45,44.36
step
talk Hadoken Swiftstrider##7875
accept War on the Woodpaw##2862 |goto 74.91,42.47
step
Enter the building |goto 74.69,43.00 < 7 |walk
talk Jangdor Swiftstrider##7854
|tip Inside the building.
accept The Mark of Quality##2822 |goto 74.43,42.91
step
talk Witch Doctor Uzer'i##8115
accept A Strange Request##3121 |goto 74.42,43.36
step
Enter the building |goto 74.63,44.69 < 7 |walk
talk Innkeeper Greul##7737
home Camp Mojache |goto 74.80,45.18
stickystart "Collect_Gordunni_Cobalt"
stickystart "Kill_Gordunni_Ogres"
stickystart "Kill_Gordunni_Ogre_Mages"
stickystart "Kill_Gordunni_Brutes"
step
Follow the path |goto 78.46,42.32 < 30 |only if walking
Follow the path up |goto 74.89,35.26 < 10 |only if walking
Follow the path |goto 76.29,32.90 < 10 |only if walking
click Gordunni Scroll
collect Gordunni Scroll##9370 |goto 75.13,29.73 |q 2978 |future
It can also spawn at [75.21,28.71]
step
use the Gordunni Scroll##9370
accept The Gordunni Scroll##2978
step
label "Collect_Gordunni_Cobalt"
Follow the path |goto 76.50,30.97 < 20 |only if walking
use Orwin's Shovel##9466
|tip Use it next to glowing blue circles on the ground around this area.
click Gordunni Dirt Mound+
|tip They look like piles of dirt that appear on the ground after using Orwin's Shovel.
|tip The dirt mounds will glow blue if they contain the quest item.
collect 12 Gordunni Cobalt##9463 |q 2987/1 |goto 75.74,33.79
You can find more further along the paths that start at: |notinsticky
[76.00,34.20]
[76.30,33.02]
step
label "Kill_Gordunni_Ogres"
kill 10 Gordunni Ogre##5229 |q 2975/1 |goto 75.74,33.79
You can find more further along the paths that start at: |notinsticky
[76.00,34.20]
[76.30,33.02]
step
label "Kill_Gordunni_Ogre_Mages"
kill 10 Gordunni Ogre Mage##5237 |q 2975/2 |goto 75.74,33.79
You can find more further along the paths that start at: |notinsticky
[76.00,34.20]
[76.30,33.02]
step
label "Kill_Gordunni_Brutes"
kill 5 Gordunni Brute##5232 |q 2975/3 |goto 75.74,33.79
You can find more further along the paths that start at: |notinsticky
[76.00,34.20]
[76.30,33.02]
step
Kill Woodpaw enemies around this area
collect 10 Woodpaw Gnoll Mane##9237 |q 2862/1 |goto 72.68,36.94
You can find more around [72.71,39.53]
step
kill Sprite Darter##5278+
collect 10 Iridescent Sprite Darter Wing##9369 |q 2973/1 |goto 70.01,47.07
You can find more around: |notinsticky
[67.77,47.94]
[66.20,47.56]
[64.37,48.63]
step
talk Hadoken Swiftstrider##7875
turnin War on the Woodpaw##2862 |goto 74.91,42.47
accept Alpha Strike##2863 |goto 74.91,42.47
step
talk Orwin Gizzmick##8021
turnin Gordunni Cobalt##2987 |goto 75.70,44.31
step
talk Krueg Skullsplitter##4544
turnin A New Cloak's Sheen##2973 |goto 75.94,42.74
accept A Grim Discovery##2974 |goto 75.94,42.74
step
_Destroy These Items:_
|tip They are no longer needed.
trash Iridescent Sprite Darter Wing##9369
step
talk Rok Orhan##7777
|tip She walks around this area wearing red armor.
turnin The Ogres of Feralas##2975 |goto 76.01,43.51
accept The Ogres of Feralas##2980 |goto 76.01,43.51
turnin The Gordunni Scroll##2978 |goto 76.01,43.51
accept Dark Ceremony##2979 |goto 76.01,43.51
Also check around [73.46,45.68]
step
Jump down here |goto 72.73,48.58 < 20 |only if walking
kill Woodpaw Alpha##5258 |q 2863/1 |goto 74.34,54.96 |count 1
|tip There should be a Woodpaw Alpha in this small camp.
step
kill Woodpaw Alpha##5258 |q 2863/1 |goto 75.48,56.48 |count 2
|tip There should be a Woodpaw Alpha in this small camp.
step
kill Woodpaw Alpha##5258 |q 2863/1 |goto 73.27,56.17 |count 3
|tip There should be a Woodpaw Alpha in this small camp.
step
kill Woodpaw Alpha##5258 |q 2863/1 |goto 72.40,56.55 |count 4
|tip There should be a Woodpaw Alpha in this small camp.
step
kill Woodpaw Alpha##5258 |q 2863/1 |goto 71.42,55.92 |count 5
|tip There should be a Woodpaw Alpha in this small camp.
step
Follow the road |goto 71.33,48.68 < 40 |only if walking
talk Hadoken Swiftstrider##7875
turnin Alpha Strike##2863 |goto 74.91,42.46
accept Woodpaw Investigation##2902 |goto 74.91,42.46
step
click Woodpaw Battle Map
turnin Woodpaw Investigation##2902 |goto 71.63,55.92
accept The Battle Plans##2903 |goto 71.63,55.92
step
Kill Grimtotem enemies around this area
collect 20 Grimtotem Horn##9460 |q 2974/1 |goto 67.85,46.40
You can find more around [69.66,39.93]
step
Follow the road |goto 71.87,48.64 < 30 |only if walking
talk Hadoken Swiftstrider##7875
turnin The Battle Plans##2903 |goto 74.91,42.47
accept Zukk'ash Infestation##7730 |goto 74.91,42.47
accept Stinglasher##7731 |goto 74.91,42.47
step
talk Krueg Skullsplitter##4544
turnin A Grim Discovery##2974 |goto 75.94,42.74
accept A Grim Discovery##2976 |goto 75.94,42.74
stickystart "Collect_Zukkash_Carapaces"
step
kill Stinglasher##14661
|tip He looks like a flying green bug, flying around this area, with a small green cloud below him.
|tip He sometimes temporarily goes inside the bug caves around this area, but most of the time he's outside.
collect Stinglasher's Glands##18962 |q 7731/1 |goto 76.98,61.55
He can also be around [73.73,63.06]
step
label "Collect_Zukkash_Carapaces"
Kill Zukk'ash enemies around this area
|tip You can find more inside the bug caves around this area.
collect 20 Zukk'ash Carapace##18961 |q 7730/1 |goto 74.55,62.08
step
Kill enemies around this area
Reach Level 46 |ding 46 |goto 74.55,62.08
step
Follow the road |goto 69.23,49.51 < 30 |only if walking
kill Rogue Vale Screecher##5308+
use Yeh'kinya's Bramble##10699
|tip Use it on their corpses.
talk Screecher Spirit##8612+
|tip They appear after using Yeh'kinya's Bramble on the corpses.
Collect #3# Screecher Spirits |q 3520/1 |goto 60.77,49.94
You can find more around: |notinsticky
[58.94,51.11]
[56.89,47.94]
[55.67,46.84]
[53.22,46.90]
[52.27,49.13]
stickystart "Kill_Gordunni_Warlocks"
step
kill 5 Gordunni Mauler##5234 |q 2980/3 |goto 61.00,55.61
You can find more around [60.77,57.89]
stickystart "Kill_Gordunni_Shamans"
step
kill Gordunni Mage-Lord##5239+
collect Gordunni Orb##9371 |q 2979/1 |goto 59.67,66.85
step
label "Kill_Gordunni_Shamans"
kill 10 Gordunni Shaman##5236 |q 2980/1 |goto 59.67,66.85
step
label "Kill_Gordunni_Warlocks"
kill 10 Gordunni Warlock##5240 |q 2980/2 |goto 59.22,64.15
You can find more around [61.03,55.64]
step
Follow the path up |goto 53.95,68.44 < 30 |only if walking
Follow the path up |goto 57.33,75.52 < 10 |only if walking
click Hippogryph Egg
collect Hippogryph Egg##8564 |goto 56.66,75.90 |q 2741 |future
|tip You will use this for a future quest.
|tip Be careful not to accidentally sell this to a vendor.
step
Kill Feral Scar enemies around this area
|tip They look like yetis.
collect 10 Thick Yeti Hide##8973 |q 2822/1 |goto 56.20,57.02
You can find more through the tunnel at [55.14,56.36]
step
Enter the building |goto 74.69,43.00 < 7 |walk
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin The Mark of Quality##2822 |goto 74.43,42.91
step
talk Hadoken Swiftstrider##7875
turnin Zukk'ash Infestation##7730 |goto 74.91,42.47
turnin Stinglasher##7731 |goto 74.91,42.47
accept Zukk'ash Report##7732 |goto 74.91,42.47
step
talk Rok Orhan##7777
|tip She walks around this area wearing red armor.
turnin The Ogres of Feralas##2980 |goto 76.01,43.51
turnin Dark Ceremony##2979 |goto 76.01,43.51
accept The Gordunni Orb##3002 |goto 76.01,43.51
Also check around [73.46,45.68]
step
Enter the building |goto Orgrimmar 49.95,70.74 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Put these items in the bank.
bank Yeh'kinya's Bramble##10699 |goto Orgrimmar 49.58,69.13 |q 3520
step
talk Karus##3309
|tip Inside the building.
|tip Collect these items from the bank.
collect Jeweled Pendant##5942 |goto 49.58,69.13 |q 1262
step
Run up the stairs |goto 56.33,56.94 < 10 |only if walking
Enter the building |goto 57.05,45.87 < 7 |walk
talk Zilzibin Drumlore##7010
|tip Inside the building.
turnin Zukk'ash Report##7732 |goto 56.28,46.67
step
Enter the building |goto 58.91,37.66 < 7 |walk
talk Dran Droffers##6986
|tip Inside the building.
accept Ripple Recovery##649 |goto 59.48,36.59
step
talk Malton Droffers##6987
|tip Inside the building.
turnin Ripple Recovery##649 |goto 59.64,36.92
accept Ripple Recovery##650 |goto 59.64,36.92
step
talk Belgrom Rockmaul##4485
turnin A Grim Discovery##2976 |goto 75.23,34.24
accept Betrayed##3504 |goto 75.23,34.24
step
talk Neeru Fireblade##3216
|tip Inside the tent, inside the Cleft of Shadow.
turnin A Strange Request##3121 |goto 49.47,50.59
accept Return to Witch Doctor Uzer'i##3122 |goto 49.47,50.59
step
Enter the building |goto 40.27,36.98 < 7 |walk
talk Zor Lonetree##4047
|tip Inside the building.
turnin Report to Zor##1262 |goto 38.93,38.38
accept Service to the Horde##7541 |goto 38.93,38.38
step
Enter the building |goto 38.73,83.29 < 7 |walk
talk Uthel'nay##7311
|tip Inside the building.
turnin The Gordunni Orb##3002 |goto 39.16,86.24
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Azshara (46-47)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azshara",
condition_suggested=function() return level >= 46 and level <= 47 and not completedq(238) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (47-47)",
},[[
step
talk Loh'atu##11548
accept Spiritual Unrest##5535 |goto Azshara 11.37,78.16
accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.16
stickystart "Kill_Highborne_Lichlings"
step
Follow the path up |goto 13.45,73.32 < 20 |only if walking
kill 6 Highborne Apparition##6116 |q 5535/1 |goto 14.66,72.47
You can find more around [17.21,68.82]
step
label "Kill_Highborne_Lichlings"
kill 6 Highborne Lichling##6117 |q 5535/2 |goto 17.21,68.82
You can find more around [14.66,72.47]
stickystart "Kill_Haldarr_Trickster"
stickystart "Kill_Haldarr_Felsworns"
step
Follow the path up |goto 19.36,62.52 < 20 |only if walking
kill 6 Haldarr Satyr##6125 |q 5536/1 |goto 19.82,61.38
step
label "Kill_Haldarr_Trickster"
kill 2 Haldarr Trickster##6126 |q 5536/2 |goto 19.82,61.38
step
label "Kill_Haldarr_Felsworns"
kill 2 Haldarr Felsworn##6127 |q 5536/3 |goto 19.82,61.38
step
talk Loh'atu##11548
turnin Spiritual Unrest##5535 |goto 11.37,78.17
turnin A Land Filled with Hatred##5536 |goto 11.37,78.17
step
talk Ag'tor Bloodfist##8576
turnin Betrayed##3504 |goto 22.26,51.48
step
talk Kroum##8610
fpath Valormok |goto 21.96,49.62
step
Follow the path down |goto Undercity 52.86,77.57 < 7 |walk
talk Chemist Cuely##8390
accept Seeping Corruption##3568 |goto Undercity 48.71,71.42
step
talk Apothecary Zinge##5204
accept Errand for Apothecary Zinge##232 |goto 50.13,67.99
step
Follow the path up |goto 47.90,76.49 < 7 |walk
Follow the path |goto 52.84,77.65 < 7 |walk
talk Alessandro Luca##7683
turnin Errand for Apothecary Zinge##232 |goto 58.62,54.67
accept Errand for Apothecary Zinge##238 |goto 58.62,54.67
step
Follow the path down |goto 52.86,77.57 < 7 |walk
talk Apothecary Zinge##5204
turnin Errand for Apothecary Zinge##238 |goto 50.13,67.99
accept Into the Field##243 |goto 50.13,67.99
step
talk William Montague##4549
|tip Put these items in the bank.
bank Hippogryph Egg##8564 |goto 65.95,45.06 |q 2741 |future
bank Box of Empty Vials##10695 |goto 65.95,45.06 |q 3568
bank Neeru's Herb Pouch##9628 |goto 65.95,45.06 |q 3122
step
talk William Montague##4549
|tip Collect these items from the bank.
collect Kravel's Scheme##5826 |goto 65.95,45.06 |q 1118
collect Stoley's Bottle##9245 |goto 65.95,45.06 |q 2874
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (47-47)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level == 47 and not completedq(608) end,
next="Leveling Guides\\Classic (12-58)\\Searing Gorge (47-48)",
},[[
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
accept The Bloodsail Buccaneers##608 |goto Stranglethorn Vale 27.17,77.00
step
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Back to Booty Bay##1118 |goto 27.12,77.21
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Deliver to MacKinley##2874 |goto 27.78,77.07
step
Enter the tunnel |goto 27.95,73.59 < 10 |only if walking
Leave the tunnel |goto 29.56,72.46 < 10 |only if walking
Follow the path |goto 31.58,72.33 < 30 |only if walking
click Half-Buried Bottle+
|tip They look like tiny green bottle on the ground around this area.
|tip You can find them next to the water along this whole beach.
collect Carefully Folded Note##4098 |n
use the Carefully Folded Note##4098
accept Message in a Bottle##594 |goto 35.07,72.90
You can find more around: |notinsticky
[37.00,65.47]
[29.71,83.17]
step
talk Princess Poobah##2634
turnin Message in a Bottle##594 |goto 38.53,80.58
accept Message in a Bottle##630 |goto 38.53,80.58
step
Follow the path |goto 39.59,80.59 < 30 |only if walking
kill King Mukla##1559
|tip He looks like a huge grey and black gorilla that walks around this area.
collect Shackle Key##4103 |q 630/1 |goto 40.51,83.02
step
Follow the path |goto 39.59,80.59 < 30 |only if walking
talk Princess Poobah##2634
turnin Message in a Bottle##630 |goto 38.53,80.58
step
Run up the ramp |goto 33.66,87.48 < 7 |only if walking
kill Captain Stillwater##2550 |q 608/1 |goto 32.87,88.20
|tip Downstairs inside the ship.
|tip On the middle floor.
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto 33.39,88.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
step
Run up the ramp |goto 30.17,89.43 < 7 |only if walking
kill Fleet Master Firallon##2546 |q 608/3 |goto 30.58,90.64
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto 30.64,90.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
step
Run up the ramp |goto 29.89,89.33 < 7 |only if walking
kill Captain Keelhaul##2548 |q 608/2 |goto 29.20,88.34
|tip He walks around this area, downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto 29.20,88.60 |q 624 |future |or
|tip If you still can't find it, skip the quest.
step
use Cortello's Riddle##4056
accept Cortello's Riddle##624
step
talk Auctioneer O'reely##15681
|tip Buy these items from the Auction House.
|tip If you can't find any on the neutral Auction House, buy it from the Orgrimmar Auction House.
collect 15 Silk Cloth##4306 |goto 26.60,76.37 |q 4449 |future
|tip Be careful not to accidentally sell these to a vendor.
step
Enter the building |goto 27.08,77.63 < 5 |walk
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##608 |goto 27.17,77.00
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Searing Gorge (47-48)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Searing Gorge",
condition_suggested=function() return level >= 47 and level <= 48 and not completedq(3481) end,
next="Leveling Guides\\Classic (12-58)\\Swamp of Sorrows (48-48)",
},[[
step
Follow the path |goto Searing Gorge 68.22,53.86 < 30 |only if walking
Follow the path up |goto Searing Gorge 62.77,64.32 < 30 |only if walking
click Wooden Outhouse
accept Caught!##4449 |goto Searing Gorge 65.54,62.24
step
kill 8 Dark Iron Geologist##5839 |q 4449/1 |goto 63.13,60.28
|tip They share spawn points with the Dark Iron Watchmen, so kill those too.
step
Follow the path up |goto 62.77,64.32 < 30 |only if walking
click Wooden Outhouse
turnin Caught!##4449 |goto 65.54,62.24
accept Ledger from Tanaris##4450 |goto 65.54,62.24
step
click Goodsteel Ledger
|tip It appears on the ground.
collect Goodsteel Ledger##11727 |q 4450/1 |goto 65.50,62.19
step
kill Glassweb Spider##5856+
collect 20 Solid Crystal Leg Shaft##11725 |q 4450/2 |goto 62.51,71.05
You can find more around: |notinsticky
[60.99,53.10]
[66.89,52.46]
[67.95,36.35]
[73.30,18.44]
step
Follow the path |goto 66.79,34.56 < 30 |only if walking
talk Kalaran Windblade##8479
accept Divine Retribution##3441 |goto 39.05,38.99
step
talk Kalaran Windblade##8479
Ask him _"Tell me what drives this vengeance?"_
Listen to Kalaran's Story |q 3441/1 |goto 39.05,38.99
step
talk Kalaran Windblade##8479
turnin Divine Retribution##3441 |goto 39.05,38.99
accept The Flawless Flame##3442 |goto 39.05,38.99
step
Follow the path up |goto 31.52,33.54 < 15 |only if walking
talk Grisha##3305
fpath Thorium Point |goto 34.85,30.87
step
click Wanted/Missing/Lost & Found
accept WANTED: Overseer Maltorius##7701 |goto 37.63,26.53
accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto 37.63,26.53
accept JOB OPPORTUNITY: Culling the Competition##7729 |goto 37.63,26.53
step
talk Hansel Heavyhands##14627
accept Curse These Fat Fingers##7723 |goto 38.57,27.80
accept Fiery Menace!##7724 |goto 38.57,27.80
accept Incendosaurs? Whateverosaur is More Like It##7727 |goto 38.57,27.80
step
talk Master Smith Burninate##14624
accept What the Flux?##7722 |goto 38.80,28.49
stickystart "Collect_Smithing_Tuyere"
stickystart "Collect_Grimesilt_Outhouse_Key"
stickystart "Collect_Golem_Oil"
stickystart "Collect_Hearts_Of_Flame"
stickystart "Kill_Greater_Lava_Spiders"
stickystart "Kill_Heavy_War_Golems"
stickystart "Kill_Dark_Iron_Taskmasters"
stickystart "Kill_Dark_Iron_Slavers"
step
kill Dark Iron Lookout##8566+
|tip They are around the watch towers on the cliff surrounding the huge pit.
collect Lookout's Spyglass##18960 |q 7728/2 |goto 33.03,53.44
You can find more around: |notinsticky
[35.40,59.82]
[43.47,63.52]
[52.47,57.97]
step
label "Collect_Smithing_Tuyere"
kill Dark Iron Steamsmith##5840+
|tip They have a roughly 5 minute respawn time.
|tip Work on the other quests around this area while waiting for them to respawn.
collect Smithing Tuyere##18959 |q 7728/1 |goto 39.13,49.64
You can find more around [42.86,51.59]
step
label "Collect_Grimesilt_Outhouse_Key"
Kill Dark Iron enemies around this area
collect Grimesilt Outhouse Key##11818 |goto 39.13,49.64 |q 4451 |future
You can find more around: |notinsticky
[42.59,50.65]
[43.93,40.43]
step
use the Grimesilt Outhouse Key##11818
accept The Key to Freedom##4451
step
label "Collect_Golem_Oil"
Kill enemies around this area
|tip Only Tempered War Golems, Heavy War Golems, and Magma Elementals will drop the quest item.
collect 4 Golem Oil##10511 |q 3442/2 |goto 48.59,38.32
You can find more around: |notinsticky
[43.27,39.20]
[36.56,40.58]
[32.26,46.19]
[25.43,53.98]
[31.52,72.23]
step
label "Collect_Hearts_Of_Flame"
Kill Elemental enemies around this area
|tip Heavy War Golems will not drop this quest item.
collect 4 Heart of Flame##10509 |q 3442/1 |goto 42.58,38.58
You can find more around: |notinsticky
[39.22,41.58]
[31.18,43.67]
[25.43,53.98]
[31.52,72.23]
step
talk Kalaran Windblade##8479
turnin The Flawless Flame##3442 |goto 39.05,38.99
accept Forging the Shaft##3443 |goto 39.05,38.99
stickystart "Collect_Thorium_Plated_Daggers"
step
label "Kill_Greater_Lava_Spiders"
kill 20 Greater Lava Spider##5858 |q 7724/1 |goto 28.78,44.44
You can find more around: |notinsticky
[29.23,55.00]
[29.51,72.50]
step
label "Kill_Heavy_War_Golems"
kill 20 Heavy War Golem##5854 |q 7723/1	|goto 32.42,49.43
You can find more around: |notinsticky
[37.02,42.98]
[47.99,38.64]
step
Jump down here |goto 49.32,43.74 < 15 |only if walking
Enter the cave |goto 49.58,45.49 < 10 |c |q 7701
step
Cross the bridge |goto 47.78,42.60 < 15 |walk
Follow the path |goto 42.02,35.57 < 15 |walk
kill Overseer Maltorius##14621
|tip Inside the cave.
|tip You will likely need a group to help you with this.
collect Head of Overseer Maltorius##18946 |q 7701/1 |goto 40.77,35.90
step
click Secret Plans: Fiery Flux
|tip Inside the cave.
collect Secret Plans: Fiery Flux##18922 |q 7722/1 |goto 40.44,35.74
step
label "Collect_Thorium_Plated_Daggers"
Kill Dark Iron enemies around this area
|tip Inside the cave, all throughout. |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
collect 8 Thorium Plated Dagger##10551 |q 3443/1 |goto 43.38,34.94
step
label "Kill_Dark_Iron_Taskmasters"
kill 15 Dark Iron Taskmaster##5846 |q 7729/1 |goto 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Kill_Dark_Iron_Slavers"
kill 15 Dark Iron Slaver##5844 |q 7729/2 |goto 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
Cross the bridge |goto 44.44,37.30 < 15 |walk
Jump down here |goto 47.73,41.92 < 10 |walk
kill 20 Incendosaur##9318 |q 7727/1 |goto 51.73,37.16
|tip Inside the cave.
You can find more around: |notinsticky
[50.37,24.75]
[45.03,21.73]
step
Follow the path |goto 50.59,38.45 < 15 |walk
Continue following the path |goto 47.21,42.94 < 15 |walk
Leave the cave |goto 47.53,46.72 < 15 |walk
Jump down carefully here |goto 48.98,46.87 < 10 |only if walking
Follow the path up |goto 58.08,41.10 < 15 |only if walking
talk Kalaran Windblade##8479
turnin Forging the Shaft##3443 |goto 39.06,38.99
accept The Flame's Casing##3452 |goto 39.06,38.99
step
Follow the path up |goto 31.52,33.46 < 15 |only if walking
talk Lookout Captain Lolo Longstriker##14634
turnin WANTED: Overseer Maltorius##7701 |goto 37.74,26.57
step
talk Hansel Heavyhands##14627
turnin Curse These Fat Fingers##7723 |goto 38.59,27.81
turnin Fiery Menace!##7724 |goto 38.59,27.81
turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto 38.59,27.81
step
talk Taskmaster Scrange##14626
turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto 38.98,27.51
turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto 38.98,27.51
step
talk Master Smith Burninate##14624
turnin What the Flux?##7722 |goto 38.80,28.50
step
Follow the path |goto 31.32,33.57 < 30 |only if walking
Kill Twilight enemies around this area
|tip They are elite enemies, you will likely need help with this.
|tip Try to find someone to help you.
|tip Doing this quest unlocks more quests that give easy experience, so it's important to get it done.
collect Symbol of Ragnaros##10552 |q 3452/1 |goto 24.62,35.13
You can find more inside the cave at [21.89,36.36]
You can find more up the path that starts at [24.23,33.12]
step
talk Kalaran Windblade##8479
turnin The Flame's Casing##3452 |goto 39.05,38.99
accept The Torch of Retribution##3453 |goto 39.05,38.99
step
Watch the dialogue
Witness the Creation of the Torch |q 3453/1 |goto 39.05,38.99
step
talk Kalaran Windblade##8479
turnin The Torch of Retribution##3453 |goto 39.05,38.99
accept The Torch of Retribution##3454 |goto 39.05,38.99
step
click Torch of Retribution
turnin The Torch of Retribution##3454 |goto 39.06,39.06
step
talk Kalaran Windblade##8479
accept Squire Maltrake##3462 |goto 39.05,39.00
step
talk Squire Maltrake##8509
turnin Squire Maltrake##3462 |goto 39.16,38.99
accept Set Them Ablaze!##3463 |goto 39.16,38.99
step
Run up the ramp |goto 33.50,53.64 < 15 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Northern Tower Ablaze |q 3463/4 |goto 33.31,54.49
step
Run up the ramp |goto 35.92,59.85 < 15 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Western Tower Ablaze |q 3463/1 |goto 35.67,60.68
step
Follow the path |goto 35.00,72.13 < 30 |only if walking
Run up the ramp |goto 44.10,61.85 < 15 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Southern Tower Ablaze |q 3463/2 |goto 44.03,60.91
step
Cross the hanging bridge |goto 52.48,57.95 < 15 |only if walking
Run up the ramp |goto 50.19,55.61 < 15 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Eastern Tower Ablaze |q 3463/3 |goto 50.06,54.74
step
Cross the hanging bridge |goto 51.42,55.64 < 15 |only if walking
click Wooden Outhouse
turnin The Key to Freedom##4451 |goto 65.53,62.23
step
Follow the path |goto 67.99,50.25 < 30 |only if walking
Continue following the path |goto 66.79,34.56 < 30 |only if walking
talk Squire Maltrake##8509
turnin Set Them Ablaze!##3463 |goto 39.17,39.00
step
_Destroy This Item:_
|tip It is no longer needed.
trash Torch of Retribution##10515
step
Watch the dialogue
click Hoard of the Black Dragonflight
accept Trinkets...##3481 |goto 38.86,38.99
step
click Hoard of the Black Dragonflight
turnin Trinkets...##3481 |goto 38.86,38.99
step
use the Hoard of the Black Dragonflight##10569
collect Black Dragonflight Molt##10575 |q 4022 |future
|tip Keep this, you'll need it for a future quest.
step
Follow the path |goto 32.13,47.85 < 60 |only if walking
Follow the path up |goto 33.53,75.22 < 20 |only if walking
Enter Blackrock Mountain |goto 34.87,83.98 < 15 |only if walking
Leave Blackrock Mountain and follow the road |goto Burning Steppes 33.37,50.90 < 30 |only if walking |notravel
talk Vahgruk##13177
|tip The enemies in this zone are too high for your level.
|tip If you die running here, just resurrect at the spirit healer.
|tip Getting the flight path now will save time later.
fpath Flame Crest |goto Burning Steppes 65.68,24.21
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Swamp of Sorrows (48-48)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Swamp of Sorrows",
condition_suggested=function() return level == 48 and not completedq(2801) end,
next="Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (48-49)",
},[[
step
Follow the road |goto Swamp of Sorrows 36.33,56.70 < 50 |only if walking
talk Fallen Hero of the Horde##7572
accept Fall From Grace##2784 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
Ask him _"Why are you here?"_
Listen to the Tale of Sorrow |q 2784/1 |goto 34.29,66.13
step
talk Fallen Hero of the Horde##7572
turnin Fall From Grace##2784 |goto 34.29,66.13
accept The Disgraced One##2621 |goto 34.29,66.13
step
click A Soggy Scroll
|tip Underwater, under the bridge.
turnin Cortello's Riddle##624 |goto 22.86,48.19
accept Cortello's Riddle##625 |goto 22.86,48.19
step
Enter the building |goto 46.95,54.07 < 7 |walk
talk Dispatch Commander Ruag##7623
|tip Upstairs inside the building.
turnin The Disgraced One##2621 |goto 47.79,54.95
accept The Missing Orders##2622 |goto 47.79,54.95
step
Enter the building |goto 45.25,55.33 < 7 |walk
talk Bengor##7643
|tip Inside the building.
turnin The Missing Orders##2622 |goto 44.98,57.34
accept The Swamp Talker##2623 |goto 44.98,57.34
step
Enter the cave |goto 66.22,76.75 < 15 |walk
Follow the path |goto 64.40,82.08 < 15 |walk
Continue following the path |goto 63.41,84.99 < 15 |walk
Follow the path up |goto 64.48,89.66 < 15 |walk
Continue up the path |goto 63.67,91.42 < 15 |walk
kill Swamp Talker##950
|tip Upstairs inside the cave.
|tip If he's not here, check around in other places in the cave.
|tip He can spawn in many places inside the cave.
collect Warchief's Orders##8463 |q 2623/1 |goto 62.60,88.08
step
Leave the cave |goto 66.37,76.54 < 15 |walk
kill Jarquia##9916
|tip He looks like a grey murloc that walks around this area on the beach.
collect Goodsteel's Balanced Flameberge##11723 |q 4450/4 |goto 94.77,52.05
Also check around: |notinsticky
[93.51,60.55]
[91.00,70.48]
step
Follow the road |goto 36.33,56.70 < 30 |only if walking
talk Fallen Hero of the Horde##7572
turnin The Swamp Talker##2623 |goto 34.29,66.13
accept A Tale of Sorrow##2801 |goto 34.29,66.13
step
talk Fallen Hero of the Horde##7572
Tell him _"Please continue, Hero..."_
Listen to a Tale of Sorrow |q 2801/1 |goto 34.29,66.13
step
talk Fallen Hero of the Horde##7572
turnin A Tale of Sorrow##2801 |goto 34.29,66.13
step
talk Whiskey Slim##2491
|tip Inside the building.
accept Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.13,77.45
step
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Goodsteel Ledger##11727 |goto The Barrens 62.64,37.42 |q 4450
bank Goodsteel's Balanced Flameberge##11723 |goto The Barrens 62.64,37.42 |q 4450
bank Black Dragonflight Molt##10575 |goto The Barrens 62.64,37.42 |q 4022 |future
bank Solid Crystal Leg Shaft##11725 |goto The Barrens 62.64,37.42 |q 4450
|tip You should have 20 of these.
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
bank Neeru's Herb Pouch##9628 |goto 62.64,37.42 |q 3122
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (48-49)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow Marsh",
condition_suggested=function() return level >= 48 and level <= 49 and not completedq(1173) end,
next="Leveling Guides\\Classic (12-58)\\Feralas (49-49)",
},[[
step
Enter the cave |goto Dustwallow Marsh 36.84,32.43 < 15 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
accept The Brood of Onyxia##1172 |goto Dustwallow Marsh 37.15,33.08
step
Enter the cave |goto 31.71,65.74 < 15 |walk
click Musty Scroll
|tip Inside the cave.
turnin Cortello's Riddle##625 |goto 31.10,66.15
accept Cortello's Riddle##626 |goto 31.10,66.15
step
click Damaged Crate
collect Overdue Package##11724 |q 4450/3 |goto 54.07,55.90
step
click Egg of Onyxia+
|tip They look like large brown spikey eggs grouped together.
Destroy #5# Eggs of Onyxia |q 1172/1 |goto 53.57,72.52
You can find more at: |notinsticky
[48.39,75.98]
[56.65,75.40]
step
Enter the cave |goto 36.81,32.36 < 15 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
turnin The Brood of Onyxia##1172 |goto 37.15,33.08
step
talk Overlord Mok'Morokk##4500
accept Challenge Overlord Mok'Morokk##1173 |goto 36.30,31.42
step
Watch the dialogue
kill Overlord Mok'Morokk##4500
|tip He will eventually surrender at around 30% health.
|tip If you have trouble, try to find someone to help you.
Drive Overlord Mok'Morokk from Brackenwall Village |q 1173/1 |goto 36.30,31.42
step
Enter the cave |goto 36.81,32.36 < 15 |walk
talk Draz'Zilb##4501
|tip Inside the cave.
turnin Challenge Overlord Mok'Morokk##1173 |goto 37.15,33.08
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Feralas (49-49)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Feralas",
condition_suggested=function() return level == 49 and not completedq(3063) end,
next="Leveling Guides\\Classic (12-58)\\Tanaris (49-50)",
},[[
step
talk Witch Doctor Uzer'i##8115
turnin Return to Witch Doctor Uzer'i##3122 |goto Feralas 74.42,43.36
step
Watch the dialogue
talk Witch Doctor Uzer'i##8115
accept The Sunken Temple##3380 |goto 74.42,43.36
step
Enter the building |goto 74.68,42.99 < 7 |walk
talk Jangdor Swiftstrider##7854
|tip Inside the building.
accept Improved Quality##7734 |goto 74.43,42.91
step
talk Talo Thornhoof##7776
|tip Inside the tent.
accept Dark Heart##3062 |goto 76.18,43.83
accept Vengeance on the Northspring##3063 |goto 76.18,43.83
accept The Strength of Corruption##4120 |goto 76.18,43.83
step
Enter the building |goto 74.64,44.70 < 7 |walk
talk Innkeeper Greul##7737
|tip Inside the building.
home Camp Mojache |goto 74.80,45.18
step
Follow the road |goto 69.49,49.43 < 20 |only if walking
talk Zorbin Fandazzle##14637
accept Zapped Giants##7003 |goto 44.81,43.42
accept Fuel for the Zapping##7721 |goto 44.81,43.42
stickystart "Collect_Water_Elemental_Cores"
step
use Zorbin's Ultra-Shrinker##18904
|tip Use it on Wave Striders around this area.
|tip They look like tall green giants that walks on the shore and in the water around this area.
|tip This quest item only lasts for 2 hours.
|tip If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step.
kill Zapped Wave Strider##14638+
collect 15 Miniaturization Residue##18956 |q 7003/1 |goto 44.38,50.11
You can find more around: |notinsticky
[46.63,59.79]
[45.36,67.94]
[40.03,37.38]
[36.09,33.74]
step
label "Collect_Water_Elemental_Cores"
Kill Sea enemies around this area
|tip They look like water elementals.
|tip Up and down this whole shore.
collect 10 Water Elemental Core##18958 |q 7721/1 |goto 46.73,60.23
You can find more around: |notinsticky
[46.30,52.00]
[40.71,37.59]
step
talk Zorbin Fandazzle##14637
turnin Zapped Giants##7003 |goto 44.81,43.42
turnin Fuel for the Zapping##7721 |goto 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
|tip You will get a new one in the next step, that will last an additional 2 hours.
trash Zorbin's Ultra-Shrinker##18904
step
talk Zorbin Fandazzle##14637
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 44.81,43.42 |q 7725 |future
step
talk Zorbin Fandazzle##14637
accept Again With the Zapped Giants##7725 |goto 44.81,43.42
step
Follow the path up |goto 46.28,37.56 < 20 |only if walking
Follow the path up |goto 51.42,32.47 < 15 |only if walking
Kill Rage Scar enemies around this area
|tip Inside and outside the cave.
collect 10 Rage Scar Yeti Hide##18947 |q 7734/1 |goto 53.17,31.82
step
use the Perfect Yeti Hide##18972
accept Perfect Yeti Hide##7738
|only if itemcount(18972) > 0
step
Follow the path |goto 48.99,27.00 < 30 |only if walking
Follow the path up |goto 45.62,25.69 < 15 |only if walking
use the Zorbin's Ultra-Shrinker##18904
|tip Use it on enemies around this area.
|tip They look like rock giants.
Kill enemies around this area
collect 10 Miniaturization Residue##18956 |q 7725/1 |goto 40.25,24.48
You can find more around [37.96,20.91]
stickystart "Kill_Northspring_Harpies"
stickystart "Kill_Northspring_Roguefeathers"
stickystart "Kill_Northspring_Slayers"
stickystart "Kill_Northspring_Windcallers"
step
Kill Northspring enemies around this area
|tip They look like harpies.
collect Horn of Hatetalon##9530 |goto 39.64,14.79 |q 3062
You can find more around [39.19,9.95]
step
use the Horn of Hatetalon##9530
kill Edana Hatetalon##8075
collect Edana's Dark Heart##9528 |q 3062/1 |goto 40.55,8.59
step
label "Kill_Northspring_Harpies"
kill 4 Northspring Harpy##5362 |q 3063/1 |goto 39.64,14.79
You can find more around [39.19,9.95]
step
label "Kill_Northspring_Roguefeathers"
kill 4 Northspring Roguefeather##5363 |q 3063/2 |goto 39.64,14.79
You can find more around [39.19,9.95]
step
label "Kill_Northspring_Slayers"
kill 4 Northspring Slayer##5364 |q 3063/3 |goto 39.64,14.79
You can find more around [39.19,9.95]
step
label "Kill_Northspring_Windcallers"
kill 4 Northspring Windcaller##5366 |q 3063/4 |goto 39.64,14.79
You can find more around [39.19,9.95]
step
Follow the road |goto 45.87,12.05 < 30 |only if walking
Follow the path down |goto 47.53,37.63 < 20 |only if walking
talk Zorbin Fandazzle##14637
turnin Again With the Zapped Giants##7725 |goto 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Zorbin's Ultra-Shrinker##18904
step
Enter the building |goto 74.68,43.00 < 7 |walk
talk Jangdor Swiftstrider##7854
|tip Inside the building.
turnin Improved Quality##7734 |goto 74.43,42.91
turnin Perfect Yeti Hide##7738 |goto 74.43,42.91 |only if havequest(7738) or completedq(7738)
step
talk Talo Thornhoof##7776
|tip Inside the building.
turnin Dark Heart##3062 |goto 76.18,43.83
turnin Vengeance on the Northspring##3063 |goto 76.18,43.83
step
_Destroy This Item:_
|tip It is no longer needed.
trash Horn of Hatetalon##9530
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Tanaris (49-50)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tanaris",
condition_suggested=function() return level >= 49 and level <= 50 and not completedq(113) end,
next="Leveling Guides\\Classic (12-58)\\Azshara (50-50)",
},[[
step
talk Tran'rek##7876
accept Thistleshrub Valley##3362 |goto Tanaris 51.57,26.76
accept Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Andi Lynn##11758
accept The Dunemaul Compound##5863 |goto 52.82,27.40
step
_Destroy This Item:_
|tip It is no longer needed.
trash Egg Crate##8647
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Hippogryph Egg##8564 |goto 52.30,28.91 |q 2741 |future
collect Yeh'kinya's Bramble##10699 |goto 52.30,28.91 |q 3520
collect Goodsteel Ledger##11727 |goto 52.30,28.91 |q 4450
collect Goodsteel's Balanced Flameberge##11723 |goto 52.30,28.91 |q 4450
collect 20 Solid Crystal Leg Shaft##11725 |goto 52.30,28.91 |q 4450
step
talk Chief Engineer Bilgewhizzle##7407
turnin Into the Field##243 |goto 52.46,28.51
accept Slake That Thirst##379 |goto 52.46,28.51
step
_Destroy This Item:_
|tip It is no longer needed.
trash Field Testing Kit##8523
step
click Egg-O-Matic
accept The Super Egg-O-Matic##2741 |goto 52.37,26.97
step
talk Marin Noggenfogger##7564
accept The Thirsty Goblin##2605 |goto 51.81,28.66
step
talk Krinkle Goodsteel##5411
turnin Ledger from Tanaris##4450 |goto 51.47,28.81
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Solid Crystal Leg Shaft##11725
step
talk Senior Surveyor Fizzledowser##7724
accept Noxious Lair Investigation##82 |goto 50.21,27.48
step
talk Marvon Rivetseeker##7771
turnin The Sunken Temple##3380 |goto 52.71,45.93
accept The Stone Circle##3444 |goto 52.71,45.93
accept Gahz'ridian##3161 |goto 52.71,45.93
step
Kill Centipaar enemies around this area
collect 5 Centipaar Insect Parts##8587 |q 82/1 |goto 35.74,42.06
stickystart "Kill_Dunemaul_Brutes"
stickystart "Kill_Dunemaul_Enforcers"
step
Follow the path up |goto 37.51,46.15 < 20 |only if walking
Enter the cave |goto 41.09,57.35 < 15 |walk
kill Gor'marok the Ravager##12046 |q 5863/3 |goto 41.50,57.81
|tip Inside the small cave.
step
label "Kill_Dunemaul_Brutes"
kill 10 Dunemaul Brute##5474 |q 5863/1 |goto 40.32,52.49
You can find more around [39.05,56.57] |notinsticky
step
label "Kill_Dunemaul_Enforcers"
kill 10 Dunemaul Enforcer##5472 |q 5863/2 |goto 40.32,52.49
You can find more around [39.05,56.57] |notinsticky
step
click Gahz'ridian+
|tip They look like small piles of sand on the ground around this area.
collect 30 Gahz'ridian Ornament##8443 |q 3161/1 |goto 40.45,72.67
You can find more around [46.96,65.87] |notinsticky
stickystart "Kill_Gnarled_Thistleshrubs"
stickystart "Kill_Thistleshrub_Rootshapers"
step
kill Thistleshrub Dew Collector##5481+
collect Laden Dew Gland##8428 |q 2605/1 |goto 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Gnarled_Thistleshrubs"
kill 8 Gnarled Thistleshrub##5490 |q 3362/1 |goto 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Thistleshrub_Rootshapers"
kill 8 Thistleshrub Rootshaper##5485 |q 3362/2 |goto 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
talk Tooga
|tip He looks like a turtle that walks around this area.
|tip This is an escort quest.
|tip If you can't find him, someone may be escorting him.
|tip Just keep grinding enemies around this area until you find him.
|tip If you reach 15% into level 51, and still haven't found him, skip the quest.
accept Tooga's Quest##1560 |goto 28.5,63.1 |noautoaccept
Also check around: |notinsticky
[29.97,66.48]
[30.54,64.66]
[31.79,74.15]
[29.58,74.73]
step
Lead Tooga to Torta |q 1560/1 |goto 66.57,25.67 |notravel
|tip He will follow you.
|tip Protect Tooga as you walk.
step
talk Torta##6015
|tip She walks around this area.
turnin Tooga's Quest##1560 |goto 66.57,25.67
step
Enter the building |goto 66.99,23.87 < 7 |walk
talk Yorba Screwspigot##9706
|tip Inside the building.
accept Yuka Screwspigot##4324 |goto 67.03,24.01
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto 66.99,22.36
step
Kill Wastewander enemies around this area
|tip Some of them are stealthed, so be careful.
collect 5 Wastewander Water Pouch##8483 |q 379/1 |goto 63.65,31.65
You can find more around [59.51,38.22]
step
talk Marin Noggenfogger##7564
turnin The Thirsty Goblin##2605 |goto 51.81,28.66
accept In Good Taste##2606 |goto 51.81,28.66
step
talk Chief Engineer Bilgewhizzle##7407
turnin Slake That Thirst##379 |goto 52.46,28.51
step
_Destroy These Items:_
|tip They are no longer needed.
trash Wastewander Water Pouch##8483
step
talk Sprinkle##7583
turnin In Good Taste##2606 |goto 51.06,26.87
accept Sprinkle's Secret Ingredient##2641 |goto 51.06,26.87
step
Enter the building |goto 50.98,27.00 < 7 |walk
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Noxious Lair Investigation##82 |goto 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
accept The Scrimshank Redemption##10 |goto 50.21,27.48
step
talk Tran'rek##7876
turnin Thistleshrub Valley##3362 |goto 51.57,26.76
step
talk Andi Lynn##11758
turnin The Dunemaul Compound##5863 |goto 52.82,27.40
step
talk Innkeeper Fizzgrimble##7733
|tip Inside the building.
home Gadgetzan |goto 52.51,27.92
step
talk Marvon Rivetseeker##7771
turnin Gahz'ridian##3161 |goto 52.71,45.93
step
Follow the path down |goto 55.87,70.27 < 20 |only if walking
Enter the cave |goto 55.78,68.91 < 7 |c |q 10
step
Follow the path down |goto 55.93,68.37 < 7 |walk
Continue following the path down |goto 56.17,68.34 < 7 |walk
Follow the path |goto 56.55,68.72 < 7 |walk
Follow the path up |goto 57.19,70.16 < 7 |walk
Follow the path down |goto 57.61,70.67 < 7 |walk
Follow the path |goto 57.38,71.30 < 7 |walk
click Scrimshank's Surveying Gear
|tip Inside the cave.
collect Scrimshank's Surveying Gear##8593 |q 10/1 |goto 55.97,71.18
step
talk Senior Surveyor Fizzledowser##7724
turnin The Scrimshank Redemption##10 |goto 50.21,27.48
accept Insect Part Analysis##110 |goto 50.21,27.48
step
Enter the building |goto 50.99,27.00 < 7 |walk
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Insect Part Analysis##110 |goto 50.89,26.96
accept Insect Part Analysis##113 |goto 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
turnin Insect Part Analysis##113 |goto 50.21,27.48
accept Rise of the Silithid##32 |goto 50.21,27.48
step
Enter the building |goto Orgrimmar 49.96,70.77 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Collect these items from the bank.
collect Box of Empty Vials##10695 |goto Orgrimmar 49.58,69.12 |q 3568
collect Bundle of Atal'ai Artifacts##6193 |goto Orgrimmar 49.58,69.12 |q 1429
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Azshara (50-50)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azshara",
condition_suggested=function() return level == 50 and not completedq(864) end,
next="Leveling Guides\\Classic (12-58)\\The Hinterlands (50-51)",
},[[
step
talk Jediga##8587
accept Stealing Knowledge##3517 |goto Azshara 22.56,51.42
stickystart "Collect_Tablet_Of_BethAmara"
stickystart "Collect_Tablet_Of_Jinyael"
stickystart "Collect_Tablet_Of_Saelhai"
step
click Tablet of Markri
|tip It looks like a stone rectangle with green glowing runes on it.
|tip It can spawn in multiple locations, so keep an eye out for it as you walk around this area.
collect Tablet of Markri##10540 |q 3517/3 |goto 34.66,55.62
It can also be at: |notinsticky
[35.69,56.50]
[40.00,64.17]
[37.92,47.77]
[39.85,45.88]
step
label "Collect_Tablet_Of_BethAmara"
click Tablet of Beth'Amara
|tip It looks like a stone rectangle with pink glowing runes on it.
|tip It can spawn in multiple locations, so keep an eye out for it as you walk around this area. |notinsticky
collect Tablet of Beth'Amara##10538 |q 3517/1 |goto 35.20,58.00
It can also be at: |notinsticky
[39.53,64.29]
[38.89,53.45]
[37.08,51.84]
[39.59,48.16]
step
label "Collect_Tablet_Of_Jinyael"
click Tablet of Jin'yael
|tip It looks like a stone rectangle with blue glowing runes on it.
|tip It can spawn in multiple locations, so keep an eye out for it as you walk around this area. |notinsticky
collect Tablet of Jin'yael##10539 |q 3517/2 |goto 36.44,54.02
It can also be at: |notinsticky
[38.30,53.42]
[37.41,60.66]
[36.27,62.19]
step
label "Collect_Tablet_Of_Saelhai"
click Tablet of Sael'hai
|tip It looks like a stone rectangle with yellow glowing runes on it.
|tip It can spawn in multiple locations, so keep an eye out for it as you walk around this area. |notinsticky
collect Tablet of Sael'hai##10541 |q 3517/4 |goto 35.90,53.53
It can also be at: |notinsticky
[37.31,48.10]
[38.58,54.58]
[37.15,60.54]
[41.48,65.02]
step
use the Box of Empty Vials##10695
collect Empty Vial Labeled #1##10687 |q 3568
collect Empty Vial Labeled #2##10688 |q 3568
collect Empty Vial Labeled #3##10689 |q 3568
collect Empty Vial Labeled #4##10690 |q 3568
step
Jump down here |goto 39.77,58.44 < 20 |only if walking
use the Empty Vial Labeled #1##10687
|tip Use it in the water.
collect Filled Vial Labeled #1##10691 |q 3568/1 |goto 47.70,61.05
step
use the Empty Vial Labeled #2##10688
|tip Use it in the water.
collect Filled Vial Labeled #2##10692 |q 3568/2 |goto 47.86,51.55
step
use the Empty Vial Labeled #3##10689
|tip Use it in the water.
collect Filled Vial Labeled #3##10693 |q 3568/3 |goto 48.60,48.56
step
use the Empty Vial Labeled #4##10690
|tip Use it in the water.
collect Filled Vial Labeled #4##10694 |q 3568/4 |goto 47.41,46.28
step
Follow the path up |goto 46.84,40.79 < 20 |only if walking
Follow the path |goto 45.15,37.27 < 30 |only if walking
talk Jediga##8587
turnin Stealing Knowledge##3517 |goto 22.56,51.42
accept Delivery to Magatha##3518 |goto 22.56,51.42
accept Delivery to Jes'rimon##3541 |goto 22.56,51.42
accept Delivery to Andron Gant##3542 |goto 22.56,51.42
accept Delivery to Archmage Xylem##3561 |goto 22.56,51.42
step
talk Sanath Lim-yo##8395 |goto 28.11,50.09
|tip Accept the "Meeting with the Master" quest.
Teleport Up the Mountain |goto 26.33,46.23 < 20 |noway |c |q 3561
step
Follow the path up |goto 26.53,43.88 < 10 |only if walking
Enter the building |goto 29.22,40.71 < 7 |walk
talk Archmage Xylem##8379
|tip He walks around inside the building, on multiple levels.
turnin Delivery to Archmage Xylem##3561 |goto 29.71,40.52
accept Xylem's Payment to Jediga##3565 |goto 29.71,40.52
step
Leave the building |goto 29.21,40.73 < 7 |walk
Follow the path down |goto 26.90,42.85 < 10 |only if walking
talk Nyrill##8399 |goto 26.47,46.28
|tip Accept the "Return Trip" quest.
Teleport to the Ground |goto 28.06,50.41 < 20 |noway |c |q 3565
step
talk Jediga##8587
turnin Xylem's Payment to Jediga##3565 |goto 22.56,51.42
step
talk Magatha Grimtotem##4046
|tip Inside the tent.
turnin Delivery to Magatha##3518 |goto Thunder Bluff 69.87,30.91
accept Magatha's Payment to Jediga##3562 |goto Thunder Bluff 69.87,30.91
step
Run up the stairs |goto Orgrimmar 56.42,56.92 < 10 |only if walking
Enter the building |goto Orgrimmar 57.06,45.88 < 7 |walk
talk Zilzibin Drumlore##7010
|tip Inside the building.
turnin Rise of the Silithid##32 |goto Orgrimmar 56.27,46.67
accept March of the Silithid##4494 |goto Orgrimmar 56.27,46.67
step
Enter the building |goto 56.48,35.24 < 7 |walk
talk Jes'rimon##8659
|tip Upstairs inside the building.
turnin Delivery to Jes'rimon##3541 |goto 55.51,34.09
accept Jes'rimon's Payment to Jediga##3563 |goto 55.51,34.09
accept Bone-Bladed Weapons##4300 |goto 55.51,34.09
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
home Orgrimmar |goto 54.09,68.41
step
talk Andron Gant##6522
turnin Delivery to Andron Gant##3542 |goto Undercity 54.82,76.35
accept Andron's Payment to Jediga##3564 |goto Undercity 54.82,76.35
step
Follow the path down |goto 52.92,77.65 < 7 |walk
talk Chemist Cuely##8390
turnin Seeping Corruption##3568 |goto 48.71,71.40
step
Watch the dialogue
talk Chemist Cuely##8390
accept Seeping Corruption##3569 |goto 48.71,71.40
step
talk Thersa Windsong##8393
turnin Seeping Corruption##3569 |goto 49.03,70.82
step
talk Chemist Cuely##8390
accept Seeping Corruption##3570 |goto 48.71,71.40
step
talk Apothecary Zinge##5204
accept Vivian Lagrave##4133 |goto 50.14,67.97
step
talk Chemist Fuely##10136
accept A Sample of Slime...##4293 |goto 47.47,73.35
accept ... and a Batch of Ooze##4294 |goto 47.47,73.35
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\The Hinterlands (50-51)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\The Hinterlands",
condition_suggested=function() return level >= 50 and level <= 51 and not completedq(580) end,
next="Leveling Guides\\Classic (12-58)\\Blasted Lands (51-52)",
},[[
step
Follow the path up |goto The Hinterlands 20.80,47.91 < 20 |only if walking
talk Gilveradin Sunchaser##7801
turnin Ripple Recovery##650 |goto The Hinterlands 26.71,48.59
step
Follow the path down |goto 35.81,63.99 < 20 |only if walking
Follow the path up |goto 33.50,74.12 < 10 |only if walking
Jump down here |goto 33.20,74.97 < 10 |only if walking
talk Atal'ai Exile##5598
|tip Standing on a ledge on the side of the building.
turnin The Atal'ai Exile##1429 |goto 33.75,75.21
accept Return to Fel'Zerul##1444 |goto 33.75,75.21
step
Follow the path |goto 35.80,64.05 < 30 |only if walking
click Violet Tragan+
|tip They look like large brown and white mushrooms underwater around this area.
collect Violet Tragan##8526 |q 2641/1 |goto 41.04,59.79
step
Follow the road |goto 42.86,50.96 < 50 |only if walking
Follow the path down |goto 72.48,66.10 < 20 |only if walking
Enter the building |goto 78.54,80.72 < 15 |walk
talk Lard##14731
|tip Inside the building.
accept Lard Lost His Lunch##7840 |goto 78.14,81.38
step
talk Katoom the Angler##14740
accept Snapjaws, Mon!##7815 |goto 80.33,81.53
accept Gammerita, Mon!##7816 |goto 80.33,81.53
step
talk Gorkas##4314
fpath Revantusk Village |goto 81.70,81.76
stickystart "Collect_Katooms_Best_Lure"
stickystart "Kill_Saltwater_Snapjaws"
step
click Pupellyverbos Port+
|tip They look like small dark blue bottles on the ground around this area.
|tip Reduce the "Ground Clutter" graphics setting to make them much easier to see.
collect 12 Pupellyverbos Port##3900 |q 580/1 |goto 79.60,81.61
You can find more around: |notinsticky
[76.26,85.63]
[73.71,91.28]
[78.44,75.71]
[78.49,69.25]
[79.46,62.41]
[81.08,55.81]
step
label "Collect_Katooms_Best_Lure"
kill Gammerita##7977 |goto 75.62,67.03
|tip It looks like a blue turtle that walks around this area.
collect Katoom's Best Lure##19023 |q 7816/1 |goto 75.62,67.03
You can also find it around: |notinsticky
[77.45,62.32]
[80.79,55.59]
step
click Lard's Picnic Basket
Kill the enemies that attack
collect Lard's Lunch##19034 |q 7840 |goto 84.47,41.22
step
click Cortello's Treasure
|tip Underwater.
turnin Cortello's Riddle##626 |goto 80.81,46.81
step
label "Kill_Saltwater_Snapjaws"
kill 15 Saltwater Snapjaw##2505 |q 7815/1 |goto 81.83,52.01
You can find more around [76.49,69.69]
step
Enter the building |goto 78.54,80.72 < 7 |walk
talk Lard##14731
|tip Inside the building.
turnin Lard Lost His Lunch##7840 |goto 78.14,81.38
step
talk Katoom the Angler##14740
turnin Snapjaws, Mon!##7815 |goto 80.33,81.53
turnin Gammerita, Mon!##7816 |goto 80.33,81.53
step
talk Jediga##8587
turnin Jes'rimon's Payment to Jediga##3563 |goto Azshara 22.56,51.42
turnin Magatha's Payment to Jediga##3562 |goto Azshara 22.56,51.42
turnin Andron's Payment to Jediga##3564 |goto Azshara 22.56,51.42
step
click Marvon's Chest
collect Stone Circle##10556 |q 3444/1 |goto The Barrens 62.50,38.54
step
talk Liv Rizzlefix##8496
|tip Inside the building.
accept Volcanic Activity##4502 |goto 62.45,38.74
step
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Stone Circle##10556 |goto The Barrens 62.64,37.42 |q 3444
bank Violet Tragan##8526 |goto The Barrens 62.64,37.42 |q 2641
step
Enter the building |goto Stranglethorn Vale 27.08,77.62 < 5 |walk
talk Whiskey Slim##2491
|tip Inside the building.
turnin Whiskey Slim's Lost Grog##580 |goto Stranglethorn Vale 27.13,77.45
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Blasted Lands (51-52)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Blasted Lands",
condition_suggested=function() return level >= 51 and level <= 52 and not completedq(2585) end,
next="Leveling Guides\\Classic (12-58)\\Un'Goro Crater (52-54)",
},[[
step
Enter the building |goto Swamp of Sorrows/0 47.20,54.30 < 7 |walk
talk Fel'zerul##1443
|tip Upstairs inside the building.
turnin Return to Fel'Zerul##1444 |goto Swamp of Sorrows/0 47.93,54.79
step
Follow the road |goto 35.76,59.48 < 30 |only if walking
talk Bloodmage Drazial##7505
accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Bloodmage Lynnore##7506
accept The Basilisk's Bite##2601 |goto 50.64,14.30
accept Vulture's Vigor##2603 |goto 50.64,14.30
stickystart "Collect_Blasted_Boar_Lungs"
stickystart "Collect_Scorpok_Pincers"
stickystart "Collect_Basilisk_Brains"
stickystart "Collect_Vulture_Gizzards"
step
Kill Snickerfang enemies around this area
|tip They look like hyenas.
|tip They share spawn locations with other enemies.
|tip If you can't find any at these locations, kill other enemies to get them to spawn.
collect 5 Snickerfang Jowl##8391 |goto 47.21,21.18 |q 2581
You can find more around: |notinsticky
[44.82,24.87]
[45.44,35.35]
[50.96,38.09]
step
label "Collect_Blasted_Boar_Lungs"
Kill Boar enemies around this area
|tip They share spawn locations with other enemies. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
collect 6 Blasted Boar Lung##8392 |goto 57.51,28.74 |q 2583
You can find more around: |notinsticky
[61.82,28.49]
[59.11,35.83]
[59.52,43.48]
step
label "Collect_Scorpok_Pincers"
kill Scorpok Stinger##5988+
|tip They look like scorpions.
|tip They share spawn locations with other enemies. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
collect 6 Scorpok Pincer##8393 |goto 49.10,18.12 |q 2585
You can find more around: |notinsticky
[45.29,21.33]
[44.61,29.11]
[52.04,30.03]
[56.81,21.17]
step
label "Collect_Basilisk_Brains"
Kill Redstone enemies around this area
|tip They look like basilisks.
|tip They share spawn locations with other enemies. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
collect 11 Basilisk Brain##8394 |goto 55.08,28.94 |q 2601
You can find more around: |notinsticky
[61.75,27.98]
[46.52,50.46]
[59.71,43.76]
step
label "Collect_Vulture_Gizzards"
kill Black Slayer##5982+
|tip Bonepickers will also drop the quest item.
|tip They look like vultures.
collect 14 Vulture Gizzard##8396 |goto 48.50,19.78 |q 2603
You can find more around: |notinsticky
[45.45,35.25]
[53.42,37.61]
[55.04,43.80]
[59.33,42.05]
[56.46,36.51]
[58.82,27.97]
[62.28,26.43]
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
accept Everything Counts In Large Amounts##3501 |goto 51.80,35.64
|only if itemcount(10593) > 0
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
turnin Everything Counts In Large Amounts##3501 |goto 51.80,35.64
|only if havequest(3501) or completedq(3501)
step
talk Bloodmage Lynnore##7506
turnin The Basilisk's Bite##2601 |goto 50.64,14.30
turnin Vulture's Vigor##2603 |goto 50.64,14.30
step
talk Bloodmage Drazial##7505
turnin Snickerfang Jowls##2581 |goto 50.55,14.21
turnin A Boar's Vitality##2583 |goto 50.55,14.21
turnin The Decisive Striker##2585 |goto 50.55,14.21
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Snickerfang Jowl##8391
trash Blasted Boar Lung##8392
trash Scorpok Pincer##8393
trash Basilisk Brain##8394
trash Vulture Gizzard##8396
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Un'Goro Crater (52-54)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Un'Goro Crater",
condition_suggested=function() return level >= 52 and level <= 54 and not completedq(4133) end,
next="Leveling Guides\\Classic (12-58)\\Burning Steppes (54-54)",
},[[
step
Enter the building |goto Orgrimmar 53.64,64.64 < 10 |walk
talk Auctioneer Thathung##8673
|tip Inside the building.
|tip Buy it from the Auction House.
|tip It is needed for a quest in Un'Goro Crater.
collect Mithril Casing##10561 |goto Orgrimmar 55.69,62.86 |q 4244 |future
step
Enter the building |goto 49.93,70.68 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Collect these items from the bank.
collect Stone Circle##10556 |goto 49.59,69.14 |q 3444
collect Violet Tragan##8526 |goto 49.59,69.14 |q 2641
step
talk Sprinkle##7583
turnin Sprinkle's Secret Ingredient##2641 |goto Tanaris 51.06,26.87
step
Watch the dialogue
talk Sprinkle##7583
accept Delivery for Marin##2661 |goto 51.06,26.87
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin March of the Silithid##4494 |goto 50.89,26.96
accept Bungle in the Jungle##4496 |goto 50.89,26.96
step
talk Marin Noggenfogger##7564
turnin Delivery for Marin##2661 |goto 51.81,28.66
accept Noggenfogger Elixir##2662 |goto 51.81,28.66
step
Watch the dialogue
talk Marin Noggenfogger##7564
turnin Noggenfogger Elixir##2662 |goto 51.81,28.66
step
talk Marvon Rivetseeker##7771
turnin The Stone Circle##3444 |goto 52.71,45.92
step
Follow the path down |goto 27.04,56.57 < 30 |only if walking
talk Torwa Pathfinder##9619
accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
stickystart "Collect_A_Mangled_Journal"
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
step
click Fresh Threshadon Carcass
|tip Avoid the elite t-rex that sometimes walks near this location.
collect Piece of Threshadon Carcass##11504 |q 4290/1 |goto 68.75,56.66
step
talk Karna Remtravel##9618
accept Chasing A-Me 01##4243 |goto 46.38,13.45
stickystop "Collect_A_Mangled_Journal"
stickystop "Accept_Willidens_Journal"
stickystop "Collect_Power_Crystals"
stickystop "Collect_UnGoro_Soil"
step
Follow the path up |goto 45.72,13.15 < 10 |only if walking
talk Shizzle##9998
accept Shizzle's Flyer##4503 |goto 44.24,11.59
step
click Beware of Pterrordax
accept Beware of Pterrordax##4501 |goto 43.55,8.42
step
talk Spark Nilminer##9272
accept Roll the Bones##3882 |goto 43.50,7.42
step
talk Hol'anyee Marshal##9271
accept Alien Ecology##3883 |goto 43.89,7.24
step
talk Williden Marshal##9270
turnin Williden's Journal##3884 |goto 43.95,7.14 |only if havequest(3884) or completedq(3884)
accept Expedition Salvation##3881 |goto 43.95,7.14
step
talk Gryfe##10583
fpath Marshal's Refuge |goto 45.23,5.84
step
talk Larion##9118
accept Larion and Muigin##4145 |goto 45.54,8.72
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
stickystart "Collect_A_Mangled_Journal"
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path down |goto 45.24,11.64 < 10 |only if walking
Follow the path |goto 50.36,18.06 < 30 |only if walking
Follow the path up |goto 54.83,13.49 < 10 |only if walking
kill 5 Pterrordax##9166 |q 4501/1 |goto 56.89,9.16 |count 5
stickystop "Collect_Webbed_Pterrordax_Scales"
step
Kill Tar enemies around this area
|tip Focus on killing the lower level (50-52) Tar enemies
collect 12 Super Sticky Tar##11834 |q 4504/1 |goto 59.96,30.56
You can find more around: |notinsticky
[59.75,24.49]
[63.54,23.41]
step
kill 5 Bloodpetal Flayer##6510 |q 4145/3 |goto 57.09,16.45
You can find more around [56.74,24.61]
stickystart "Collect_UnGoro_Thunderer_Pelts"
stickystart "Collect_UnGoro_Stomper_Pelts"
step
kill Un'Goro Gorilla##6514+
|tip The gorillas share spawn points.
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn.
collect 2 Un'Goro Gorilla Pelt##11478 |q 4289/1 |goto 62.73,17.93
You can find more inside the cave at [63.95,16.44]
step
label "Collect_UnGoro_Stomper_Pelts"
kill Un'Goro Stomper##6513+
|tip The gorillas share spawn points. |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Stomper Pelt##11479 |q 4289/2 |goto 62.73,17.93
You can find more inside the cave at [63.95,16.44]
step
label "Collect_UnGoro_Thunderer_Pelts"
kill Un'Goro Thunderer##6516+
|tip The gorillas share spawn points. |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Thunderer Pelt##11480 |q 4289/3 |goto 62.73,17.93
You can find more inside the cave at [63.95,16.44]
step
Enter the cave |goto 63.88,16.44 < 10 |walk
Follow the path |goto 65.87,16.75 < 7 |walk
talk A-Me 01##9623
|tip Inside the cave.
|tip She gives an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Chasing A-Me 01##4243 |goto 67.65,16.76
accept Chasing A-Me 01##4244 |goto 67.65,16.76
step
talk A-Me 01##9623
|tip Inside the cave.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Chasing A-Me 01##4244 |goto 67.65,16.76
accept Chasing A-Me 01##4245 |goto 67.65,16.76 |noautoaccept
step
Watch the dialogue
|tip Follow A-Me 01 and protect her as she walks.
|tip She eventually walks to this location.
Protect A-Me 01 Until You Reach Karna Remtravel |q 4245/1 |goto 46.32,13.68
step
talk Karna Remtravel##9618
turnin Chasing A-Me 01##4245 |goto 46.38,13.45
stickystart "Collect_Dinosaur_Bones"
stickystart "Collect_Webbed_Diemetradon_Scales"
stickystart "Collect_UnGoro_Slime_Samples"
stickystart "Kill_Bloodpetal_Lashers"
step
kill 5 Bloodpetal Thresher##6511 |q 4145/4 |goto 56.59,34.46
You can find more around: |notinsticky
[61.68,36.93]
[69.81,29.80]
step
label "Kill_Bloodpetal_Lashers"
kill 5 Bloodpetal Lasher##6509 |q 4145/1 |goto 69.81,29.80
You can find more around: |notinsticky
[61.68,36.93]
[56.59,34.46]
step
click Crate of Foodstuffs
collect Crate of Foodstuffs##11113 |q 3881/1 |goto 68.51,36.54
step
talk Torwa Pathfinder##9619
turnin The Apes of Un'Goro##4289 |goto 71.64,75.97
turnin The Fare of Lar'korwi##4290 |goto 71.64,75.97
accept The Scent of Lar'korwi##4291 |goto 71.64,75.97
accept The Mighty U'cha##4301 |goto 71.64,75.97
stickystart "Collect_White_Ravasaur_Claws"
step
kill Lar'korwi Mate##9683
|tip Stand on the pile of purple eggs to get it to appear.
collect 2 Ravasaur Pheromone Gland##11509 |q 4291/1 |goto 67.32,73.05
You can find more eggs at: |notinsticky
[62.87,80.48]
[60.92,72.23]
[66.60,66.73]
step
click A Wrecked Raft
accept It's a Secret to Everybody##3844 |goto 63.02,68.50
step
click A Small Pack
|tip Underwater.
turnin It's a Secret to Everybody##3844 |goto 63.12,69.02
accept It's a Secret to Everybody##3845 |goto 63.12,69.02
step
label "Collect_White_Ravasaur_Claws"
Kill Ravasaur enemies around this area
collect 8 White Ravasaur Claw##11477 |q 4300/1 |goto 65.60,70.85
You can find more around [67.02,59.15]
step
talk Torwa Pathfinder##9619
turnin The Scent of Lar'korwi##4291 |goto 71.63,75.97
accept The Bait for Lar'korwi##4292 |goto 71.63,75.97
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto 57.94,85.67 < 20 |only if walking
kill 10 Pterrordax##9166 |q 4501/1 |goto 56.09,89.51
stickystop "Collect_Webbed_Pterrordax_Scales"
stickystart "Collect_Gorishi_Scent_Gland"
step
Enter the cave |goto 49.95,81.70 < 7 |walk
Follow the path down |goto 49.48,83.08 < 7 |walk
use the Unused Scraping Vial##11132
|tip Inside the cave.
collect Hive Wall Sample##11131 |q 3883/1 |goto 48.74,85.21
step
Leave the cave |goto 49.94,81.65 < 7 |c |q 4496
step
label "Collect_Gorishi_Scent_Gland"
Kill Gorishi enemies around this area
|tip You can find more inside the bug cave in the ground nearby.
collect Gorishi Scent Gland##11837 |q 4496/1 |goto 50.66,77.01
stickystart "Kill_Bloodpetal_Trappers"
stickystart "Kill_Frenzied_Pterrordax"
step
click Research Equipment
collect Research Equipment##11112 |q 3881/2 |goto 38.47,66.11
step
talk Krakle##10302
accept Finding the Source##974 |goto 30.93,50.43
step
label "Kill_Bloodpetal_Trappers"
kill 5 Bloodpetal Trapper##6512 |q 4145/2 |goto 39.85,53.54
You can find more around [34.49,37.63]
stickystart "Collect_Webbed_Pterrordax_Scales"
step
label "Kill_Frenzied_Pterrordax"
kill 15 Frenzied Pterrordax##9167 |q 4501/2 |goto 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Pterrordax_Scales"
Kill Pterrordax enemies around this area
|tip They look like pterodactyls.
collect 8 Webbed Pterrordax Scale##11831 |q 4503/2 |goto 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Dinosaur_Bones"
Kill Diemetradon enemies around this area
collect 8 Dinosaur Bone##11114 |q 3882/1 |goto 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_Webbed_Diemetradon_Scales"
Kill Diemetradon enemies around this area
collect 8 Webbed Diemetradon Scale##11830 |q 4503/1 |goto 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_UnGoro_Slime_Samples"
Kill Ooze enemies around this area
|tip Keep an eye out for them and kill them as you walk around doing other quests.
collect 30 Un'Goro Slime Sample##12235 |goto 57.48,65.95 |q 4294
You can find more around: |notinsticky
[45.09,68.24]
[38.49,48.67]
[38.42,31.93]
[27.92,35.59]
[25.51,45.45]
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile+
|tip They look like piles of dark brown dirt on the ground around this area.
|tip You can find them all over the entire zone.
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect 20 Un'Goro Soil##11018 |q 3761 |future
|tip Be careful not to accidentally sell these to a vendor.
step
label "Collect_Power_Crystals"
click Power Crystal+
|tip They look clusters of red, yellow, green, or blue crystals on the ground around this area.
|tip They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
|tip You can find them all over the entire zone.
collect 7 Red Power Crystal##11186 |q 4284 |future |only if itemcount(11186) < 7
collect 7 Yellow Power Crystal##11188 |q 4284 |future |only if itemcount(11188) < 7
collect 7 Green Power Crystal##11185 |q 4284 |future |only if itemcount(11185) < 7
collect 7 Blue Power Crystal##11184 |q 4284 |future |only if itemcount(11184) < 7
|only if (itemcount(11186) < 7) or (itemcount(11188) < 7) or (itemcount(11185) < 7) or (itemcount(11184) < 7)
step
label "Collect_A_Mangled_Journal"
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect A Mangled Journal##11116 |q 3884 |future
step
label "Accept_Willidens_Journal"
use A Mangled Journal##11116
accept Williden's Journal##3884
|only if itemcount(11116) > 0
step
Kill enemies around this area
Reach Level 53 |ding 53 |goto 57.48,65.95
You can find more around: |notinsticky
[45.09,68.24]
[38.49,48.67]
[38.42,31.93]
[27.92,35.59]
[25.51,45.45]
step
Follow the path up |goto 42.96,14.36 < 20 |only if walking
talk Shizzle##9998
turnin Shizzle's Flyer##4503 |goto 44.23,11.59
step
talk Spraggle Frock##9997
turnin Beware of Pterrordax##4501 |goto 43.62,8.50
accept Lost!##4492 |goto 43.62,8.50
step
talk Spark Nilminer##9272
turnin Roll the Bones##3882 |goto 43.50,7.43
step
talk Hol'anyee Marshal##9271
turnin Alien Ecology##3883 |goto 43.89,7.24
step
talk Williden Marshal##9270
turnin Expedition Salvation##3881 |goto 43.95,7.14
turnin Williden's Journal##3884 |goto 43.95,7.14
step
Enter the cave |goto 43.47,6.81 < 10 |walk
Follow the path |goto 43.15,4.48 < 7 |walk
Continue following the path |goto 41.51,4.86 < 7 |walk
Continue following the path |goto 41.25,2.21 < 7 |walk
talk J.D. Collie##9117
|tip Inside the cave.
accept Crystals of Power##4284 |goto 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Crystals of Power##4284 |goto 41.92,2.70
accept The Northern Pylon##4285 |goto 41.92,2.70
accept The Eastern Pylon##4287 |goto 41.92,2.70
accept The Western Pylon##4288 |goto 41.92,2.70
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Red Power Crystal##11186
trash Yellow Power Crystal##11188
trash Green Power Crystal##11185
trash Blue Power Crystal##11184
step
use A Small Pack##11107
|tip You can destroy the Faded Photograph inside the pack.
|tip It's not used for anything.
collect Large Compass##11104 |q 3845/1
collect Curled Map Parchment##11105 |q 3845/2
collect Lion-headed Key##11106 |q 3845/3
step
_Destroy This Item:_
|tip It is no longer needed.
trash Faded Photograph##11108
step
Follow the path |goto 40.98,3.26 < 10 |walk
Continue following the path |goto 41.87,5.00 < 7 |walk
Continue following the path |goto 43.29,4.65 < 7 |walk
Leave the cave |goto 43.47,6.81 < 10 |walk
talk Larion##9118
turnin Larion and Muigin##4145 |goto 45.54,8.72
accept Marvon's Workshop##4147 |goto 45.54,8.72
step
talk Linken##8737
turnin It's a Secret to Everybody##3845 |goto 44.66,8.11
accept It's a Secret to Everybody##3908 |goto 44.66,8.11
stickystart "Collect_UnGoro_Ash"
step
Follow the path up |goto 52.84,42.05 < 15 |only if walking
Follow the path up |goto 52.33,45.52 < 7 |only if walking
Continue up the path |goto 51.18,47.35 < 7 |only if walking
use Krakle's Thermometer##12472
Find the Hottest Area of Fire Plume Ridge |q 974/1 |goto 49.70,45.74
step
label "Collect_UnGoro_Ash"
Kill enemies around this area
|tip They look like fire elementals on and around this volcano mountain.
|tip Avoid the elite enemy in the cave at the top of the mountain.
collect 9 Un'Goro Ash##11829 |q 4502/1 |goto 50.98,47.18
step
Enter the cave |goto 52.44,51.07 < 10 |walk
talk Ringo##9999
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin Lost!##4492 |goto 51.90,49.85
accept A Little Help From My Friends##4491 |goto 51.90,49.85 |noautoaccept
step
Leave the cave |goto 52.50,51.16 < 10 |walk
Follow the path down |goto 54.19,50.77 < 10 |only if walking
Follow the path |goto 56.72,43.18 < 30 |only if walking
Follow the path up |goto 46.04,13.45 < 10 |only if walking
Watch the dialogue
|tip Ringo will follow you, protect him as you walk.
|tip He will faint multiple times as he walks, so make sure he is with you at all times.
|tip You will see a message in your chat when he faints.
use Spraggle's Canteen##11804
|tip Use it on Ringo to revive him when he faints.
Escort Ringo to Spraggle Frock at Marshal's Refuge |q 4491/1 |goto 43.62,8.51
step
Watch the dialogue
talk Spraggle Frock##9997
turnin A Little Help From My Friends##4491 |goto 43.62,8.51
step
_Destroy This Item:_
|tip It is no longer needed.
trash Spraggle's Canteen##11804
step
Follow the path |goto 50.36,18.06 < 30 |only if walking
Follow the path up |goto 54.83,13.49 < 10 |only if walking
click Northern Crystal Pylon
Choose _"I want to examine this pylon."_
Discover and Examine the Northern Crystal Pylon |q 4285/1 |goto 56.48,12.45
step
Enter the cave |goto 63.94,16.39 < 10 |walk
Follow the path |goto 65.98,15.65 < 7 |walk
Continue following the path |goto 69.08,17.63 < 7 |walk
Continue following the path |goto 69.41,16.57 < 7 |walk
Continue following the path |goto 68.61,13.57 < 7 |walk
kill U'cha##9622
|tip Inside the cave.
collect U'cha's Pelt##11476 |q 4301/1 |goto 68.15,12.58
step
Follow the path |goto 67.12,15.31 < 7 |walk
Continue following the path |goto 64.94,16.63 < 7 |walk
Leave the cave |goto 63.88,16.43 < 10 |walk
Follow the path up |goto 76.66,48.69 < 10 |only if walking
click Eastern Crystal Pylon
Choose _"I want to examine this pylon."_
Discover and Examine the Eastern Crystal Pylon |q 4287/1 |goto 77.24,49.97
step
use Torwa's Pouch##11568
collect Preserved Threshadon Meat##11569 |q 4292
collect Preserved Pheromone Mixture##11570 |q 4292
step
use the Preserved Threshadon Meat##11569
|tip Use this first.
use the Preserved Pheromone Mixture##11570
|tip Use this second.
kill Lar'korwi##9684
|tip If you have trouble, try to find someone to help you.
collect Lar'korwi's Head##11510 |q 4292/1 |goto 79.92,49.90
step
talk Torwa Pathfinder##9619
turnin The Mighty U'cha##4301 |goto 71.63,75.96
turnin The Bait for Lar'korwi##4292 |goto 71.63,75.96
step
Follow the path up |goto 24.20,61.28 < 10 |only if walking
click Western Crystal Pylon
Choose _"I want to examine this pylon."_
Discover and Examine the Western Crystal Pylon |q 4288/1 |goto 23.79,59.19
step
talk Krakle##10302
turnin Finding the Source##974 |goto 30.93,50.44
accept The New Springs##980 |goto 30.93,50.44
step
Follow the path up |goto 43.01,14.27 < 15 |only if walking
Enter the cave |goto 43.47,6.81 < 7 |walk
Follow the path |goto 43.15,4.48 < 7 |walk
Continue following the path |goto 41.51,4.86 < 7 |walk
Continue following the path |goto 41.25,2.21 < 10 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin The Northern Pylon##4285 |goto 41.92,2.70
turnin The Eastern Pylon##4287 |goto 41.92,2.70
turnin The Western Pylon##4288 |goto 41.92,2.70
accept Making Sense of It##4321 |goto 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Making Sense of It##4321 |goto 41.92,2.70
step
_Destroy This Item:_
|tip It is no longer needed.
trash Crystal Pylon User's Manual##11482
step
Follow the path |goto 40.98,3.26 < 10 |walk
Continue following the path |goto 41.87,5.00 < 7 |walk
Continue following the path |goto 43.29,4.65 < 7 |walk
Leave the cave |goto 43.47,6.81 < 10 |walk
talk Tran'rek##7876
turnin Super Sticky##4504 |goto Tanaris 51.57,26.76
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Bungle in the Jungle##4496 |goto 50.89,26.96
step
Enter the building |goto Thunder Bluff 74.16,29.88 < 7 |walk
talk Arch Druid Hamuul Runetotem##5769
|tip Inside the building.
accept Un'Goro Soil##3761 |goto Thunder Bluff 78.59,28.55
step
talk Ghede##9076
turnin Un'Goro Soil##3761 |goto 77.45,21.98
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Un'Goro Soil##11018
step
Enter the building |goto 74.16,29.88 < 7 |walk
talk Arch Druid Hamuul Runetotem##5769
|tip Inside the building.
accept Morrowgrain Research##3782 |goto 78.59,28.57
step
talk Bashana Runetotem##9087
|tip Inside the building.
turnin Morrowgrain Research##3782 |goto 71.06,34.15
step
Enter the building |goto The Barrens 62.52,38.57 < 7 |walk
talk Liv Rizzlefix##8496
|tip Inside the building.
turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.73
turnin Marvon's Workshop##4147 |goto The Barrens 62.45,38.73
step
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Linken's Training Sword##11133 |goto 62.64,37.42 |q 3908
bank Un'Goro Slime Sample##12235 |goto 62.64,37.42 |q 4294
|tip You should have 20 of these.
bank White Ravasaur Claw##11477 |goto 62.64,37.42 |q 4300
|tip You should have 8 of these.
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Black Dragonflight Molt##10575 |goto 62.64,37.42 |q 4022 |future
step
talk Shadowmage Vivian Lagrave##9078
turnin Vivian Lagrave##4133 |goto Badlands 2.90,47.76
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Burning Steppes (54-54)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Burning Steppes",
condition_suggested=function() return level == 54 and not completedq(4062) end,
next="Leveling Guides\\Classic (12-58)\\Azshara (54-55)",
},[[
step
talk Hierophant Theodora Mulvadania##9079
accept The Rise of the Machines##4061 |goto Badlands 3.02,47.80
step
talk Thal'trak Proudtusk##9082
|tip He walks along the path near Kargath.
|tip He will only offer the quest when he's standing here.
|tip If he's not here, wait until he walks walk to this location.
accept Dreadmaul Rock##3821 |goto 3.36,48.07
step
talk Tinkee Steamboil##10267
accept Broodling Essence##4726 |goto Burning Steppes 65.24,24.00
step
talk Maxwort Uberglint##9536
accept Tablet of the Seven##4296 |goto 65.16,23.92
step
Enter the cave |goto 65.52,23.08 < 10 |walk
talk Yuka Screwspigot##9544
|tip Inside the cave.
turnin Yuka Screwspigot##4324 |goto 66.06,21.95
step
use the Draco-Incarcinatrix 900##12284
|tip Use it on Broodling enemies around this area.
|tip They look like small flying dragons.
Kill Broodling enemies around this area
click Broodling Essence+
|tip They look like red floating crystals that appear above their corpses after you kill them.
collect 8 Broodling Essence##12283 |q 4726/1 |goto 59.26,32.49
You can find more around: |notinsticky
[72.83,28.41]
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
step
Enter the cave |goto 94.11,31.92 < 10 |walk
talk Cyrus Therepentous##9459
|tip Inside the cave.
accept A Taste of Flame##4022 |goto 95.06,31.57
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
Tell him _"I present you with proof of my deeds, Cyrus."_
Present the Proof |q 4022/2 |goto 95.06,31.57
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
turnin A Taste of Flame##4022 |goto 95.06,31.57
step
Follow the path up |goto 75.39,38.29 < 10 |only if walking
click Sha'ni Proudtusk's Remains
talk Sha'ni Proudtusk##9136
|tip She appears nearby.
turnin Dreadmaul Rock##3821 |goto 79.79,45.52
accept Krom'Grul##3822 |goto 79.79,45.52
step
Enter the cave |goto 81.07,44.88 < 10 |walk
kill Krom'Grul##8977
|tip Inside the cave.
|tip He may not be here.
collect Sha'ni's Nose-Ring##11058 |q 3822/1 |goto 81.65,43.83 |or
_Or_
Click Here if He's Not in this Cave |confirm |next "West_Cave"
step
label "West_Cave"
Enter the cave |goto 77.00,47.68 < 10 |walk
kill Krom'Grul##8977
|tip Inside the cave.
|tip He may not be here.
|tip He sometimes walks around, so check this entire cave before deciding he's not in this cave.
collect Sha'ni's Nose-Ring##11058 |q 3822/1 |goto 79.01,44.34 |or
_Or_
Click Here if He's Not in this Cave |confirm |or |next "East_Cave"
step
label "East_Cave"
Leave the cave |goto 76.92,47.76 < 15 |walk
Follow the path up |goto 77.95,34.53 < 15 |only if walking
Enter the cave |goto 82.80,38.85 < 15 |walk
Follow the path |goto 81.32,41.82 < 10 |walk
Follow the path |goto 79.87,44.43 < 10 |walk
kill Krom'Grul##8977
|tip Inside the cave.
|tip He should be here, if you already checked the other 2 caves.
collect Sha'ni's Nose-Ring##11058 |q 3822/1 |goto 79.69,47.38
stickystart "Collect_Fractured_Elemental_Shards"
step
click Tablet of the Seven
Choose _"Transcribe the tablet."_
collect Tablet Transcript##11470 |q 4296/1 |goto 54.09,40.73
step
label "Collect_Fractured_Elemental_Shards"
kill War Reaver##7039+
collect 10 Fractured Elemental Shard##11266 |q 4061/1 |goto 67.95,38.14
You can find more around: |notinsticky
[63.32,41.34]
[59.91,35.25]
[53.03,38.88]
step
Follow the path up |goto 63.92,29.88 < 15 |only if walking
talk Tinkee Steamboil##10267
turnin Broodling Essence##4726 |goto 65.23,23.99
accept Felnok Steelspring##4808 |goto 65.23,23.99
step
talk Maxwort Uberglint##9536
turnin Tablet of the Seven##4296 |goto 65.15,23.91
step
talk Hierophant Theodora Mulvadania##9079
turnin The Rise of the Machines##4061 |goto Badlands 3.02,47.81
accept The Rise of the Machines##4062 |goto Badlands 3.02,47.81
step
talk Thal'trak Proudtusk##9082
|tip He walks along the path near Kargath.
|tip He will only offer the quest when he's standing here.
|tip If he's not here, wait until he walks to this location.
|tip You can't turn in the quest while he is walking.
turnin Krom'Grul##3822 |goto 3.36,48.07
step
talk Lotwil Veriatus##2921
turnin The Rise of the Machines##4062 |goto 25.94,44.87
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Azshara (54-55)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azshara",
condition_suggested=function() return level >= 54 and level <= 55 and not completedq(3507) end,
next="Leveling Guides\\Classic (12-58)\\Felwood (55-55)",
},[[
step
Enter the building |goto Orgrimmar 49.93,70.66 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Put these items in the bank.
bank Tinkee's Letter##12438 |goto Orgrimmar 49.58,69.12 |q 4808
step
talk Ag'tor Bloodfist##8576
accept Betrayed##3505 |goto Azshara 22.26,51.48
step
Follow the path up |goto 53.02,19.64 < 15 |only if walking
talk Kim'jael##8420
accept Kim'jael Indeed!##3601 |goto 53.45,21.82
stickystart "Kill_Blood_Elf_Reclaimers"
stickystart "Kill_Blood_Elf_Surveyors"
step
Follow the path up |goto 55.26,28.01 < 20 |only if walking
click Kim'jael's Equipment
|tip They look like wooden boxes on the ground around this area.
|tip Some of them may be empty.
|tip They respawn, and can contain new items, so check them repeatedly.
collect Kim'Jael's Compass##10717 |q 3601/1 |goto 56.09,30.20
collect Kim'Jael's Scope##10715 |q 3601/2 |goto 56.09,30.20
collect Kim'Jael's Stuffed Chicken##10722 |q 3601/3 |goto 56.09,30.20
collect Kim'Jael's Wizzlegoober##10718 |q 3601/4 |goto 56.09,30.20
You can find more around: |notinsticky
[56.29,28.76]
[57.03,28.30]
[58.55,29.05]
[58.76,28.71]
[59.61,30.93]
step
Find Magus Rimtori's Camp |q 3505/3 |goto 59.30,31.00
step
label "Kill_Blood_Elf_Reclaimers"
kill 10 Blood Elf Reclaimer##6199 |q 3505/1 |goto 58.98,29.54
You can find more around: |notinsticky
[57.83,26.05]
[55.24,26.84]
[56.07,29.74]
step
label "Kill_Blood_Elf_Surveyors"
kill 10 Blood Elf Surveyor##6198 |q 3505/2 |goto 58.98,29.54
You can find more around: |notinsticky
[57.83,26.05]
[55.24,26.84]
[56.07,29.74]
step
click Kaldorei Tome of Summoning
turnin Betrayed##3505 |goto 59.51,31.30
accept Betrayed##3506 |goto 59.51,31.30
step
click Arcane Focusing Crystal
Kill the enemies that attack
kill Magus Rimtori##8578
collect Head of Magus Rimtori##10597 |q 3506/1 |goto 59.55,31.52
step
Follow the path up |goto 54.29,21.21 < 10 |only if walking
talk Kim'jael##8420
turnin Kim'jael Indeed!##3601 |goto 53.45,21.82
accept Kim'jael's "Missing" Equipment##5534 |goto 53.45,21.82
step
Follow the path down |goto 45.27,37.09 < 20 |only if walking
Kill Spitelash enemies around this area
|tip They look like naga.
collect Some Rune##13815 |q 5534/1 |goto 47.65,43.93
You can find more around: |notinsticky
[46.76,53.80]
[48.51,64.11]
step
Follow the path |goto 45.02,36.72 < 30 |only if walking
Follow the path up |goto 53.02,19.64 < 15 |only if walking
talk Kim'jael##8420
turnin Kim'jael's "Missing" Equipment##5534 |goto 53.45,21.82
step
talk Ag'tor Bloodfist##8576
turnin Betrayed##3506 |goto 22.26,51.48
accept Betrayed##3507 |goto 22.26,51.48
step
Enter the building |goto Orgrimmar 49.95,70.69 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Collect these items from the bank.
collect Linken's Training Sword##11133 |goto Orgrimmar 49.59,69.14 |q 3908
collect 8 White Ravasaur Claw##11477 |goto Orgrimmar 49.59,69.14 |q 4300
collect Tinkee's Letter##12438 |goto Orgrimmar 49.59,69.14 |q 4808
step
Enter the building |goto 56.47,35.25 < 7 |walk
talk Jes'rimon##8659
|tip Upstairs on the balcony of the building.
turnin Bone-Bladed Weapons##4300 |goto 55.52,34.09
step
talk Belgrom Rockmaul##4485
turnin Betrayed##3507 |goto 75.22,34.24
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Felwood (55-55)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Felwood",
condition_suggested=function() return level == 55 and not completedq(8461) end,
next="Leveling Guides\\Classic (12-58)\\Winterspring (55-56)",
},[[
step
Follow the path |goto Ashenvale 73.52,63.51 < 15 |only if walking
Continue following the path |goto Ashenvale 66.42,61.55 < 30 |only if walking
Follow the road |goto Ashenvale 63.80,52.48 < 30 |only if walking
talk Grazle##11554
accept Timbermaw Ally##8460 |goto Felwood 50.93,85.01
stickystart "Kill_Deadwood_Pathfinders"
stickystart "Kill_Deadwood_Gardeners"
step
Follow the path |goto 49.02,89.29 < 30 |only if walking
kill 6 Deadwood Warrior##7153 |q 8460/1 |goto 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Pathfinders"
kill 6 Deadwood Pathfinder##7155 |q 8460/2 |goto 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Gardeners"
kill 6 Deadwood Gardener##7154 |q 8460/3 |goto 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Follow the path |goto 49.56,88.70 < 30 |only if walking
talk Grazle##11554
turnin Timbermaw Ally##8460 |goto 50.93,85.02
accept Speak to Nafien##8462 |goto 50.93,85.02
step
talk Greta Mosshoof##10922
|tip She walks around this area.
accept Forces of Jaedenar##5155 |goto Felwood 51.21,82.11
step
talk Gorrim##22931
fpath Emerald Sanctuary |goto 51.53,82.22
step
talk Taronn Redfeather##10921
|tip Inside the building.
accept Verifying the Corruption##5156 |goto 50.89,81.62
step
talk Maybess Riverbreeze##9529
|tip She walks around this area.
accept Cleansing Felwood##4102 |goto 46.68,82.98
step
kill Cursed Ooze##7086+
collect 30 Felwood Slime Sample##12230 |goto 41.22,71.29 |q 4293
You can find more around: |notinsticky
[38.97,72.26]
[40.06,67.15]
[41.93,67.38]
stickystart "Kill_Jaedenar_Guardians"
stickystart "Kill_Jaedenar_Adepts"
stickystart "Kill_Jaedenar_Cultists"
step
Follow the road |goto 42.64,65.46 < 30 |only if walking
Follow the path |goto 41.12,57.60 < 20 |only if walking
kill 4 Jaedenar Hound##7125 |q 5155/1 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area.
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Guardians"
kill 4 Jaedenar Guardian##7113 |q 5155/2 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Adepts"
kill 6 Jaedenar Adept##7115 |q 5155/3 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Cultists"
kill 6 Jaedenar Cultist##7112 |q 5155/4 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
Follow the road |goto 41.38,57.58 < 30 |only if walking
Follow the path |goto 40.89,50.69 < 30 |only if walking
Continue following the path |goto 37.84,49.02 < 20 |only if walking
Continue following the path |goto 35.80,49.69 < 20 |only if walking
talk Winna Hazzard##9996
accept Well of Corruption##4505 |goto 34.21,52.34
step
talk Trull Failbane##10306
accept Wild Guardians##4521 |goto 34.73,52.80
step
talk Brakkar##11900
fpath Bloodvenom Post |goto 34.44,53.96
stickystart "Kill_Entropic_Beasts"
stickystart "Kill_Entropic_Horrors"
step
Follow the path |goto 35.78,49.66 < 20 |only if walking
Explore the Craters in Shatter Scar Vale |q 5156/3 |goto 41.54,42.98
|tip Be careful to avoid the elite Infernal Sentries around this area.
step
label "Kill_Entropic_Beasts"
kill 2 Entropic Beast##9878 |q 5156/1 |goto 41.36,41.19
|tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
step
label "Kill_Entropic_Horrors"
kill 2 Entropic Horror##9879 |q 5156/2 |goto 41.36,41.19
|tip Be careful to avoid the elite Infernal Sentries around this area. |notinsticky
stickystart "Kill_Angerclaw_Grizzlies"
stickystart "Kill_Felpaw_Ravagers"
step
Follow the road |goto 38.93,38.02 < 50 |only if walking
Follow the path |goto 49.95,14.87 < 30 |only if walking
Kill Warpwood enemies around this area
|tip Inside and outside the cave.
collect 15 Blood Amber##11503 |q 4102/1 |goto 55.78,16.85
step
label "Kill_Angerclaw_Grizzlies"
kill 12 Angerclaw Grizzly##8957 |q 4120/1 |goto 53.01,15.91
You can find more around: |notinsticky
[56.24,21.15]
[56.77,25.02]
[54.68,24.72]
[53.48,28.22]
[58.13,16.84]
[61.85,17.37]
[64.07,20.11]
step
label "Kill_Felpaw_Ravagers"
kill 12 Felpaw Ravager##8961 |q 4120/2 |goto 56.24,21.15
You can find more around: |notinsticky
[56.77,25.02]
[54.68,24.72]
[53.48,28.22]
[58.13,16.84]
[61.85,17.37]
[64.07,20.11]
step
Follow the road |goto 64.18,15.20 < 20 |only if walking
talk Nafien##15395
turnin Speak to Nafien##8462 |goto Felwood/0 64.77,8.13
accept Deadwood of the North##8461 |goto 64.77,8.13
stickystart "Kill_Deadwood_Avengers"
stickystart "Kill_Deadwood_Shamans"
step
kill 6 Deadwood Den Watcher##7156 |q 8461/1 |goto 63.08,8.82
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Avengers"
kill 6 Deadwood Avenger##7157 |q 8461/2 |goto 63.08,8.82
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Shamans"
kill 6 Deadwood Shaman##7158 |q 8461/3 |goto 63.08,8.82
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
Follow the road |goto 64.18,15.20 < 30 |only if walking
talk Nafien##15395
|tip You may have Deadwood Headdress Feathers from killing Deadwood enemies nearby.
|tip Turn in any feathers you have with the "Feathers for Nafien" repeatable quest.
turnin Deadwood of the North##8461 |goto 64.77,8.13
accept Speak to Salfa##8465 |goto 64.77,8.13
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Winterspring (55-56)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Winterspring",
condition_suggested=function() return level >= 55 and level <= 56 and not completedq(8464) end,
next="Leveling Guides\\Classic (12-58)\\Felwood (56-56)",
},[[
step
Enter the tunnel |goto Felwood 65.13,8.01 < 7 |walk
Run down the stairs and follow the path |goto Felwood 65.36,2.34 < 7 |walk
Leave the tunnel |goto Moonglade 35.75,72.48 < 7 |walk
talk Faustron##12740
fpath Moonglade |goto Moonglade 32.09,66.61
step
Enter the tunnel |goto Moonglade 35.74,72.49 < 7 |walk
Follow the path |goto Felwood 66.26,2.90 < 7 |walk
Leave the tunnel |goto Felwood 68.40,5.84 < 7 |walk
talk Salfa##11556
turnin Speak to Salfa##8465 |goto Winterspring 27.74,34.50
accept Winterfall Activity##8464 |goto Winterspring 27.74,34.50
step
talk Donova Snowden##9298
turnin The New Springs##980 |goto 31.27,45.17
accept Strange Sources##4842 |goto 31.27,45.17
turnin It's a Secret to Everybody##3908 |goto 31.27,45.17
step
Watch the dialogue
talk Donova Snowden##9298
accept Threat of the Winterfall##5082 |goto 31.27,45.17
step
talk Yugrek##11139
fpath Everlook |goto 60.47,36.30
step
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##3783 |goto 60.88,37.62
step
Enter the building |goto 61.32,38.72 < 7 |walk
talk Innkeeper Vizzie##11118
|tip Inside the building.
home Everlook |goto 61.36,38.83 |q 8464
step
talk Gregor Greystone##10431
|tip Inside the building.
accept The Everlook Report##6029 |goto 61.35,38.97
step
talk Felnok Steelspring##10468
turnin Felnok Steelspring##4808 |goto 61.63,38.61
accept Chillwind Horns##4809 |goto 61.63,38.61
step
Enter the building |goto 61.33,37.35 < 7 |walk
talk Izzy Coppergrab##13917
|tip Inside the building.
|tip Put these items in the bank.
bank Everlook Report##15788 |goto 61.45,36.98 |q 6029
bank Studies in Spirit Speaking##15790 |goto 61.45,36.98 |q 6030
bank Felwood Slime Sample##12230 |goto 61.45,36.98 |q 4293
|tip You should have 40 of these.
step
Follow the path |goto 60.55,38.20 < 7 |only if walking
Follow the road |goto 60.44,39.71 < 30 |only if walking
Kill Ice Thistle enemies around this area
collect 10 Thick Yeti Fur##12366 |q 3783/1 |goto 66.79,43.34
You can find more inside the cave at [67.65,41.75]
step
Follow the road |goto 64.59,46.30 < 50 |only if walking
Cross the bridge |goto 62.42,67.44 < 20 |only if walking
Discover Darkwhisper Gorge |q 4842/1 |goto 59.84,74.12
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##3783 |goto 60.88,37.62
accept Are We There, Yeti?##977 |goto 60.88,37.62
step
Follow the path |goto 60.55,38.20 < 7 |only if walking
Follow the road |goto 60.44,39.71 < 30 |only if walking
Follow the path up |goto 66.70,43.12 < 20 |only if walking
Kill Ice Thistle enemies around this area
|tip Inside and outside the cave.
|tip Only the Matriarchs or Patriarchs will drop the quest item.
collect 2 Pristine Yeti Horn##12367 |q 977/1 |goto 67.65,41.75
stickystart "Kill_Winterfall_Shamans"
stickystart "Kill_Winterfall_Den_Watchers"
step
Follow the path |goto 62.82,40.30 < 40 |only if walking
Follow the path up |goto 63.43,35.66 < 15 |only if walking
kill 8 Winterfall Ursa##7438 |q 8464/3 |goto 65.28,37.66
You can find more around: |notinsticky
[67.07,39.76]
[66.92,35.15]
[67.80,37.33]
step
label "Kill_Winterfall_Shamans"
kill 8 Winterfall Shaman##7439 |q 8464/1 |goto 66.92,35.15
You can find more around [67.80,37.33]
step
label "Kill_Winterfall_Den_Watchers"
kill 8 Winterfall Den Watcher##7440 |q 5082/2 |goto 66.92,35.15
kill 8 Winterfall Den Watcher##7440 |q 8464/2 |goto 66.92,35.15
step
kill Chillwind Ravager##7449+
|tip They look like chimeras.
|tip They share spawn points with the bears, so kill them too, if you can't find any.
collect 8 Uncracked Chillwind Horn##12444 |q 4809/1 |goto 66.10,31.61
You can find more around: |notinsticky
[65.74,27.23]
[60.12,21.49]
[55.23,22.20]
step
Follow the path |goto 60.56,38.21 < 7 |only if walking
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##977 |goto 60.88,37.62
step
talk Felnok Steelspring##10468
turnin Chillwind Horns##4809 |goto 61.63,38.61
step
Follow the path |goto 60.56,38.21 < 7 |only if walking
kill 15 Raging Owlbeast##7451 |q 4521/1 |goto 60.13,34.07
You can find more around: |notinsticky
[58.04,33.18]
[54.70,32.29]
[55.70,28.23]
[51.38,33.81]
step
kill 15 Ragged Owlbeast##7450 |q 4521/2 |goto 54.55,37.31
You can find more around: |notinsticky
[52.48,38.20]
[51.43,39.38]
[49.83,39.97]
[47.37,42.74]
[45.24,42.58]
[46.82,37.49]
[45.54,35.78]
[44.28,37.81]
[42.53,36.68]
[38.76,38.12]
stickystart "Kill_Winterfall_Pathfinders"
stickystart "Collect_Empty_Firewater_Flask"
stickystart "Accept_Winterfall_Firewater"
step
kill 8 Winterfall Totemic##7441 |q 5082/3 |goto 41.78,43.14
|tip They share spawn points with the other Winterfall enemies.
|tip Kill the other types also, to get more to spawn.
You can find more around: |notinsticky
[39.46,43.70]
[30.57,37.17]
step
label "Kill_Winterfall_Pathfinders"
kill 8 Winterfall Pathfinder##7442 |q 5082/1 |goto 41.78,43.14
|tip They share spawn points with the other Winterfall enemies. |notinsticky
|tip Kill the other types also, to get more to spawn. |notinsticky
You can find more around: |notinsticky
[39.46,43.70]
[30.57,37.17]
step
label "Collect_Empty_Firewater_Flask"
Kill Winterfall enemies around this area
collect Empty Firewater Flask##12771 |goto 41.78,43.14 |q 5083 |future
You can find more around: |notinsticky
[39.46,43.70]
[30.57,37.17]
step
label "Accept_Winterfall_Firewater"
use the Empty Firewater Flask##12771
accept Winterfall Firewater##5083
|only if itemcount(12771) > 0
step
talk Donova Snowden##9298
turnin Strange Sources##4842 |goto 31.27,45.16
turnin Threat of the Winterfall##5082 |goto 31.27,45.16
turnin Winterfall Firewater##5083 |goto 31.27,45.16
step
talk Salfa##11556
turnin Winterfall Activity##8464 |goto 27.74,34.50
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Felwood (56-56)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Felwood",
condition_suggested=function() return level == 56 and not completedq(8462) end,
next="Leveling Guides\\Classic (12-58)\\Western Plaguelands (56-58)",
},[[
step
talk Trull Failbane##10306
turnin Wild Guardians##4521 |goto Felwood 34.73,52.79
step
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Forces of Jaedenar##5155 |goto 51.21,82.11
accept Collection of the Corrupt Water##5157 |goto 51.21,82.11
step
talk Taronn Redfeather##10921
|tip Inside the building.
turnin Verifying the Corruption##5156 |goto 50.89,81.62
step
talk Maybess Riverbreeze##9529
|tip She walks around this area.
turnin Cleansing Felwood##4102 |goto 46.72,83.07
step
talk Maybess Riverbreeze##9529
|tip She walks around this area.
Tell her _"I need a Cenarion beacon."_
collect Cenarion Beacon##11511 |goto 46.72,83.07 |q 5887 |future
stickystart "Collect_Corrupted_Soul_Shards"
step
Follow the path down |goto 43.15,70.37 < 30 |only if walking
Follow the path |goto 36.77,66.93 < 30 |only if walking
use the Hardened Flasket##12566
collect Filled Flasket##12567 |q 4505/1 |goto 32.41,66.58
step
label "Collect_Corrupted_Soul_Shards"
Kill enemies around this area
collect 6 Corrupted Soul Shard##11515 |goto 37.21,66.96 |q 5887 |future
step
Follow the road |goto 42.30,64.84 < 50 |only if walking
Follow the path |goto 41.31,60.20 < 30 |only if walking
Continue following the path |goto 38.38,59.70 < 20 |only if walking
use the Empty Canteen##12922
collect Corrupt Moonwell Water##12907 |q 5157/1 |goto 35.19,59.95
step
Follow the path |goto 38.30,59.97 < 20 |only if walking
Follow the path |goto 37.60,49.84 < 20 |only if walking
talk Winna Hazzard##9996
turnin Well of Corruption##4505 |goto 34.21,52.34
step
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Collection of the Corrupt Water##5157 |goto 51.21,82.11
accept Seeking Spiritual Aid##5158 |goto 51.21,82.11
step
talk Maybess Riverbreeze##9529
|tip She walks around this area.
accept Salve via Hunting##5887 |goto 46.72,83.07
step
_Destroy These Items:_
|tip They are no longer needed.
trash Cenarion Plant Salve##11516
trash Cenarion Beacon##11511
trash Corrupted Soul Shard##11515
step
talk Innkeeper Gryshka##6929
|tip Inside the building.
home Orgrimmar |goto Orgrimmar 54.09,68.41
step
talk Islen Waterseer##5901
turnin Seeking Spiritual Aid##5158 |goto The Barrens 65.83,43.78
step
talk Talo Thornhoof##7776
|tip Inside the tent.
turnin The Strength of Corruption##4120 |goto Feralas 76.18,43.83
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Western Plaguelands (56-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Western Plaguelands",
condition_suggested=function() return level >= 56 and level <= 58 and not completedq(5235) end,
next="Leveling Guides\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-61)",
},[[
step
talk Innkeeper Norman##6741
home Undercity |goto Undercity 67.73,37.89
step
talk Randolph Montague##2458
|tip Collect these items from the bank.
collect The Everlook Report##15788 |goto 65.97,43.12 |q 6029
collect Studies in Spirit Speaking##15790 |goto 65.97,43.12 |q 6030
collect 20 Felwood Slime Sample##12230 |goto 65.97,43.12 |q 4293
collect 20 Un'Goro Slime Sample##12235 |goto 65.97,43.12 |q 4294
step
talk Harbinger Balthazad##10879
|tip He walks around this area in the middle of Undercity.
|tip He's wearing holding a lantern, wearing a white shirt.
|tip He can also be in the ring hallway surrounding the center of Undercity.
accept A Call to Arms: The Plaguelands!##5094 |goto 63.81,44.07
step
Follow the path down |goto 52.91,77.53 < 7 |walk
click Testing Equipment
|tip It looks like a bowl with red liquid in it, on the table.
|tip Turn in the "Testing for Corruption - Felwood" quest.
collect Corrupt Tested Sample##15103 |n
use the Corrupt Tested Sample##15103
collect 5 Corrupted Felwood Sample##12234 |q 4293/1 |goto 47.85,73.45
|tip Keep repeating this process until you get all of these.
step
click Testing Equipment
|tip It looks like a bowl with green liquid in it, on the table.
|tip Turn in the "Testing for Impurities - Un'Goro Crater" quest.
collect Un'Goro Tested Sample##15102 |n
use the Un'Goro Tested Sample##15102
collect 5 Pure Un'Goro Sample##12236 |q 4294/1 |goto 47.74,73.55
|tip Keep repeating this process until you get all of these.
step
talk Chemist Fuely##10136
turnin A Sample of Slime...##4293 |goto 47.45,73.36
turnin ... and a Batch of Ooze##4294 |goto 47.45,73.36
step
_Destroy These Items:_
|tip They are no longer needed.
trash Un'Goro Slime Sample##12235
trash Felwood Slime Sample##12230
step
talk High Executor Derrington##10837
turnin A Call to Arms: The Plaguelands!##5094 |goto Tirisfal Glades 83.13,68.93
accept Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.93
step
click Box of Incendiaries
collect Flame in a Bottle##12814 |goto 83.17,69.09 |q 5096
step
talk Argent Officer Garush##10839
turnin The Everlook Report##6029 |goto 83.19,68.45
accept Argent Dawn Commission##5503 |goto 83.19,68.45
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff 133440 |q 5402 |future
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto Western Plaguelands 38.40,54.05
step
Enter the building |goto 38.52,55.33 < 7 |walk
click Janice's Parcel
|tip Inside the building.
turnin Better Late Than Never##5021 |goto 38.73,55.24
accept Better Late Than Never##5023 |goto 38.73,55.24
step
click Command Tent
use the Scourge Banner##12807
Destroy the Command Tent and Plant the Scourge Banner in the Camp |q 5096/1 |goto 40.68,51.98
step
talk High Executor Derrington##10837
turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.93
accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.93
accept All Along the Watchtowers##5098 |goto Tirisfal Glades/0 83.13,68.93
step
_Destroy This Item:_
|tip It is no longer needed.
trash Flame in a bottle##12814
step
talk Shadow Priestess Vandis##11055
turnin The Scourge Cauldrons##5228 |goto 83.03,71.91
accept Target: Felstone Field##5229 |goto 83.03,71.91
step
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5229/1 |goto Western Plaguelands 37.03,57.11
step
click Scourge Cauldron
turnin Target: Felstone Field##5229 |goto 37.19,56.87
accept Return to the Bulwark##5230 |goto 37.19,56.87
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91
accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower One |q 5098/1 |goto Western Plaguelands 40.13,71.52
step
Avoid the big group of enemies in the center of town |goto 44.17,71.56 < 30 |only if walking
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower Four |q 5098/4 |goto 46.70,71.10
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower Three |q 5098/3 |goto 44.22,63.37
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower Two |q 5098/2 |goto 42.44,66.27
step
kill Cauldron Lord Malvinious##11077
collect Dalson's Tears Cauldron Key##13195 |q 5231/1 |goto 46.18,52.38
step
click Scourge Cauldron
turnin Target: Dalson's Tears##5231 |goto 46.18,52.02
accept Return to the Bulwark##5232 |goto 46.18,52.02
step
Enter the building |goto 47.52,50.94 < 7 |walk
click Mrs. Dalson's Diary
|tip Inside the building.
accept Mrs. Dalson's Diary##5058 |goto 47.79,50.67
step
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the building.
collect Dalson Outhouse Key##12738 |goto 47.85,49.32 |q 5059 |future
step
click Outhouse
accept Locked Away##5059 |goto 48.11,49.71
|tip Farmer Dalson will appear and attack you.
step
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto 48.11,49.71
step
Enter the building |goto 47.14,50.19 < 7 |walk
click Locked Cabinet
|tip Upstairs inside the building.
accept Locked Away##5060 |goto 47.37,49.65
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91
accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
talk High Executor Derrington##10837
turnin All Along the Watchtowers##5098 |goto 83.13,68.93
step
_Destory This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815
step
Follow the path |goto Western Plaguelands 49.52,56.90 < 50 |only if walking
Enter the building |goto Western Plaguelands 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
step
kill Cauldron Lord Razarch##11076
collect Writhing Haunt Cauldron Key##13197 |q 5233/1 |goto 53.02,66.06
step
click Scourge Cauldron
turnin Target: Writhing Haunt##5233 |goto 53.02,65.72
accept Return to the Bulwark##5234 |goto 53.02,65.72
step
kill 8 Diseased Wolf##1817 |q 4984/1 |goto 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5234 |goto Tirisfal Glades 83.04,71.91
accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
Follow the path |goto Western Plaguelands 49.52,56.90 < 50 |only if walking
Enter the building |goto Western Plaguelands 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto Western Plaguelands 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4985 |goto 53.72,64.67
step
kill Cauldron Lord Soulwrath##11078
|tip He walks around this area.
collect Gahrron's Withering Cauldron Key##13196 |q 5235/1 |goto 62.78,58.75
step
click Scourge Cauldron
turnin Target: Gahrron's Withering##5235 |goto 62.56,58.57
accept Return to the Bulwark##5236 |goto 62.56,58.57
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5236 |goto Tirisfal Glades 83.03,71.91
step
talk High Executor Derrington##10837
accept Mission Accomplished!##5238 |goto 83.13,68.94
step
talk Mehlar Dawnblade##17099
accept The So-Called Mark of the Lightbringer##9443 |goto 83.22,71.32
step
Follow the path |goto Western Plaguelands 49.82,55.95 < 50 |only if walking
Follow the path up |goto Western Plaguelands 48.78,39.27 < 30 |only if walking
Follow the path down |goto Western Plaguelands 49.85,30.40 < 30 |only if walking
talk Kirsta Deepshadow##11610
accept Unfinished Business##6004 |goto Western Plaguelands 51.92,28.06
stickystart "Kill_Scarlet_Hunters"
stickystart "Kill_Scarlet_Mages"
stickystart "Kill_Scarlet_Knights"
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
kill 2 Scarlet Medic##10605 |q 6004/1 |goto 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too.
step
label "Kill_Scarlet_Hunters"
kill 2 Scarlet Hunter##1831 |q 6004/2 |goto 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
label "Kill_Scarlet_Mages"
kill 2 Scarlet Mage##1826 |q 6004/3 |goto 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
label "Kill_Scarlet_Knights"
kill 2 Scarlet Knight##1833 |q 6004/4 |goto 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
Follow the path down |goto 49.83,30.51 < 30 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6004 |goto 51.92,28.06
accept Unfinished Business##6023 |goto 51.92,28.06
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
Follow the path |goto 51.58,39.81 < 30 |only if walking
Follow the path up |goto 55.23,34.61 < 20 |only if walking
kill Huntsman Radley##11613 |q 6023/1 |goto 57.83,36.09
step
kill Cavalier Durgen##11611 |q 6023/2 |goto 54.37,23.77
|tip He walks back and forth, between this spot and the top of the tower.
|tip Wait outside the tower near this spot, he will eventually walk outside.
|tip Pull him away into the road nearby, so you can fight him alone.
step
click Holy Coffer
|tip At the top of the tower.
collect Mark of the Lightbringer##23661 |q 9443/1 |goto 55.19,23.51
step
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6023 |goto 51.92,28.06
accept Unfinished Business##6025 |goto 51.92,28.06
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
Follow the path |goto 51.58,39.81 < 30 |only if walking
Continue following the path |goto 54.64,34.08 < 30 |only if walking
Follow the path up |goto 52.94,23.35 < 30 |only if walking
Follow the path |goto 48.01,21.52 < 30 |only if walking
Follow the road |goto 45.97,20.97 < 30 |only if walking
Enter the building |goto 45.48,18.27 < 7 |only if walking
Overlook Hearthglen from a High Vantage Point |q 6025/1 |goto 45.63,18.45
|tip At the top of the tower.
|tip If it doesn't complete, walk around to other spots at the top of the tower.
step
Follow the path down |goto 45.70,20.73 < 30 |only if walking
Follow the path |goto 48.13,21.65 < 30 |only if walking
Follow the path down |goto 52.91,24.73 < 20 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6025 |goto 51.92,28.06
step
talk Royal Overseer Bauhaus##10781
turnin Better Late Than Never##5023 |goto Undercity 69.78,43.15
accept The Jeremiah Blues##5049 |goto Undercity 69.78,43.15
step
talk Jeremiah Payson##8403
|tip Under the stairs.
turnin The Jeremiah Blues##5049 |goto 67.60,44.16
step
talk Mehlar Dawnblade##17099
turnin The So-Called Mark of the Lightbringer##9443 |goto Tirisfal Glades 83.22,71.32
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Cloak Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Ruins of Ahn'Qiraj class-specific cloak.",
condition_end=function() return completedanyq(8692,8696,8691,8695,8689,8693,8690,8694,8557) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Keyl Swiftclaw##15500
accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.53 |only Druid
accept Cloak of the Unseen Path##8696 |goto 51.76,39.53 |only Hunter
accept Drape of Vaulted Secrets##8691 |goto 51.76,39.53 |only Mage
accept Cape of Eternal Justice##8695 |goto 51.76,39.53 |only Paladin
accept Shroud of Infinite Wisdom##8689 |goto 51.76,39.53 |only Priest
accept Cloak of Veiled Shadows##8693 |goto 51.76,39.53 |only Rogue
accept Cloak of the Gathering Storm##8690 |goto 51.76,39.53 |only Shaman
accept Shroud of Unspoken Names##8694 |goto 51.76,39.53 |only Warlock
accept Drape of Unyielding Strength##8557 |goto 51.76,39.53 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Revered_Reputation"
step
collect 1 Qiraji Regal Drape##20889 |q 8692/1 |only Druid
collect 1 Qiraji Regal Drape##20889 |q 8696/1 |only Hunter
collect 1 Qiraji Martial Drape##20885 |q 8691/1 |only Mage
collect 1 Qiraji Regal Drape##20889 |q 8695/1 |only Paladin
collect 1 Qiraji Martial Drape##20885 |q 8689/1 |only Priest
collect 1 Qiraji Martial Drape##20885 |q 8693/1 |only Rogue
collect 1 Qiraji Regal Drape##20889 |q 8690/1 |only Shaman
collect 1 Qiraji Regal Drape##20889 |q 8694/1 |only Warlock
collect 1 Qiraji Martial Drape##20885 |q 8557/1 |only Warrior
|tip This has a chance to drop from General Rajaxx, Kurinnaxx, Ayamiss the Hunter, and Buru the Gorger in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Vermillion Idol##20872 |q 8692/2 |only Druid
collect 2 Lambent Idol##20868 |q 8696/2 |only Hunter
collect 2 Alabaster Idol##20873 |q 8691/2 |only Mage
collect 2 Obsidian Idol##20871 |q 8695/2 |only Paladin
collect 2 Jasper Idol##20870 |q 8689/2 |only Priest
collect 2 Azure Idol##20866 |q 8693/2 |only Rogue
collect 2 Obsidian Idol##20871 |q 8690/2 |only Shaman
collect 2 Amber Idol##20869 |q 8694/2 |only Warlock
collect 2 Onyx Idol##20867 |q 8557/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Bone Scarab##20864 |q 8692/3 |only Druid
collect 5 Stone Scarab##20858 |q 8696/3 |only Hunter
collect 5 Stone Scarab##20858 |q 8691/3 |only Mage
collect 5 Gold Scarab##20859 |q 8695/3 |only Paladin
collect 5 Gold Scarab##20859 |q 8689/3 |only Priest
collect 5 Bronze Scarab##20861 |q 8693/3 |only Rogue
collect 5 Clay Scarab##20863 |q 8690/3 |only Shaman
collect 5 Bronze Scarab##20861 |q 8694/3 |only Warlock
collect 5 Bone Scarab##20864 |q 8557/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Silver Scarab##20860 |q 8692/4 |only Druid
collect 5 Crystal Scarab##20862 |q 8696/4 |only Hunter
collect 5 Crystal Scarab##20862 |q 8691/4 |only Mage
collect 5 Clay Scarab##20863 |q 8695/4 |only Paladin
collect 5 Clay Scarab##20863 |q 8689/4 |only Priest
collect 5 Ivory Scarab##20865 |q 8693/4 |only Rogue
collect 5 Gold Scarab##20859 |q 8690/4 |only Shaman
collect 5 Ivory Scarab##20865 |q 8694/4 |only Warlock
collect 5 Silver Scarab##20860 |q 8557/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Revered_Reputation"
Reach Revered Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Revered |or
'|condition completedanyq(8692,8696,8691,8695,8689,8693,8690,8694,8557) |or
step
talk Keyl Swiftclaw##15500
turnin Cloak of Unending Life##8692 |goto 51.76,39.53 |only Druid
turnin Cloak of the Unseen Path##8696 |goto 51.76,39.53 |only Hunter
turnin Drape of Vaulted Secrets##8691 |goto 51.76,39.53 |only Mage
turnin Cape of Eternal Justice##8695 |goto 51.76,39.53 |only Paladin
turnin Shroud of Infinite Wisdom##8689 |goto 51.76,39.53 |only Priest
turnin Cloak of Veiled Shadows##8693 |goto 51.76,39.53 |only Rogue
turnin Cloak of the Gathering Storm##8690 |goto 51.76,39.53 |only Shaman
turnin Shroud of Unspoken Names##8694 |goto 51.76,39.53 |only Warlock
turnin Drape of Unyielding Strength##8557 |goto 51.76,39.53 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Ring Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Ruins of Ahn'Qiraj class-specific ring.",
condition_end=function() return completedanyq(8700,8704,8699,8703,8697,8701,8698,8702,8556) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Windcaller Yessendra##15498
accept Band of Unending Life##8700 |goto Silithus 52.04,38.15 |only Druid
accept Signet of the Unseen Path##8704 |goto 52.04,38.15 |only Hunter
accept Band of Vaulted Secrets##8699 |goto 52.04,38.15 |only Mage
accept Ring of Eternal Justice##8703 |goto 52.04,38.15 |only Paladin
accept Ring of Infinite Wisdom##8697 |goto 52.04,38.15 |only Priest
accept Band of Veiled Shadows##8701 |goto 52.04,38.15 |only Rogue
accept Ring of the Gathering Storm##8698 |goto 52.04,38.15 |only Shaman
accept Ring of Unspoken Names##8702 |goto 52.04,38.15 |only Warlock
accept Signet of Unyielding Strength##8556 |goto 52.04,38.15 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Honored_Reputation"
step
collect 1 Qiraji Magisterial Ring##20884 |q 8700/1 |only Druid
collect 1 Qiraji Ceremonial Ring##20888 |q 8704/1 |only Hunter
collect 1 Qiraji Magisterial Ring##20884 |q 8699/1 |only Mage
collect 1 Qiraji Magisterial Ring##20884 |q 8703/1 |only Paladin
collect 1 Qiraji Ceremonial Ring##20888 |q 8697/1 |only Priest
collect 1 Qiraji Ceremonial Ring##20888 |q 8701/1 |only Rogue
collect 1 Qiraji Magisterial Ring##20884 |q 8698/1 |only Shaman
collect 1 Qiraji Ceremonial Ring##20888 |q 8702/1 |only Warlock
collect 1 Qiraji Magisterial Ring##20884 |q 8556/1 |only Warrior
|tip This has a chance to drop from Ayamiss the Hunter, Buru the Gorger, Moam, General Rajax, Kurinnaxx, and Ossirian the Unscarred in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Alabaster Idol##20873 |q 8700/2 |only Druid
collect 2 Amber Idol##20869 |q 8704/2 |only Hunter
collect 2 Azure Idol##20866 |q 8699/2 |only Mage
collect 2 Vermillion Idol##20872 |q 8703/2 |only Paladin
collect 2 Obsidian Idol##20871 |q 8697/2 |only Priest
collect 2 Onyx Idol##20867 |q 8701/2 |only Rogue
collect 2 Vermillion Idol##20872 |q 8698/2 |only Shaman
collect 2 Jasper Idol##20870 |q 8702/2 |only Warlock
collect 2 Lambent Idol##20868 |q 8556/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Bronze Scarab##20861 |q 8700/3 |only Druid
collect 5 Gold Scarab##20859 |q 8704/3 |only Hunter
collect 5 Gold Scarab##20859 |q 8699/3 |only Mage
collect 5 Silver Scarab##20860 |q 8703/3 |only Paladin
collect 5 Silver Scarab##20860 |q 8697/3 |only Priest
collect 5 Stone Scarab##20858 |q 8701/3 |only Rogue
collect 5 Silver Scarab##20860 |q 8698/3 |only Shaman
collect 5 Stone Scarab##20858 |q 8702/3 |only Warlock
collect 5 Bronze Scarab##20861 |q 8556/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Ivory Scarab##20865 |q 8700/4 |only Druid
collect 5 Clay Scarab##20863 |q 8704/4 |only Hunter
collect 5 Clay Scarab##20863 |q 8699/4 |only Mage
collect 5 Bone Scarab##20864 |q 8703/4 |only Paladin
collect 5 Bone Scarab##20864 |q 8697/4 |only Priest
collect 5 Crystal Scarab##20862 |q 8701/4 |only Rogue
collect 5 Bronze Scarab##20861 |q 8698/4 |only Shaman
collect 5 Crystal Scarab##20862 |q 8702/4 |only Warlock
collect 5 Ivory Scarab##20865 |q 8556/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Honored_Reputation"
Reach Honored Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Honored |or
'|condition completedanyq(8700,8704,8699,8703,8697,8701,8698,8702,8556) |or
step
talk Windcaller Yessendra##15498
turnin Band of Unending Life##8700 |goto 52.04,38.15 |only Druid
turnin Signet of the Unseen Path##8704 |goto 52.04,38.15 |only Hunter
turnin Band of Vaulted Secrets##8699 |goto 52.04,38.15 |only Mage
turnin Ring of Eternal Justice##8703 |goto 52.04,38.15 |only Paladin
turnin Ring of Infinite Wisdom##8697 |goto 52.04,38.15 |only Priest
turnin Band of Veiled Shadows##8701 |goto 52.04,38.15 |only Rogue
turnin Ring of the Gathering Storm##8698 |goto 52.04,38.15 |only Shaman
turnin Ring of Unspoken Names##8702 |goto 52.04,38.15 |only Warlock
turnin Signet of Unyielding Strength##8556 |goto 52.04,38.15 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Weapon Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Ruins of Ahn'Qiraj class-specific cloak.",
condition_end=function() return completedanyq(8708,8712,8707,8711,8705,8709,8706,8710,8558) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Warden Haro##15499
accept Mace of Unending Life##8708 |goto Silithus 51.14,38.95 |only Druid
accept Scythe of the Unseen Path##8712 |goto 51.14,38.95 |only Hunter
accept Blade of Vaulted Secrets##8707 |goto 51.14,38.95 |only Mage
accept Blade of Eternal Justice##8711 |goto 51.14,38.95 |only Paladin
accept Gavel of Infinite Wisdom##8705 |goto 51.14,38.95 |only Priest
accept Dagger of Veiled Shadows##8709 |goto 51.14,38.95 |only Rogue
accept Hammer of the Gathering Storm##8706 |goto 51.14,38.95 |only Shaman
accept Kris of Unspoken Names##8710 |goto 51.14,38.95 |only Warlock
accept Sickle of Unyielding Strength##8558 |goto 51.14,38.95 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Exalted_Reputation"
step
collect 1 Qiraji Ornate Hilt##20890 |q 8708/1 |only Druid
collect 1 Qiraji Spiked Hilt##20886 |q 8712/1 |only Hunter
collect 1 Qiraji Ornate Hilt##20890 |q 8707/1 |only Mage
collect 1 Qiraji Spiked Hilt##20886 |q 8711/1 |only Paladin
collect 1 Qiraji Ornate Hilt##20890 |q 8705/1 |only Priest
collect 1 Qiraji Spiked Hilt##20886 |q 8709/1 |only Rogue
collect 1 Qiraji Spiked Hilt##20886 |q 8706/1 |only Shaman
collect 1 Qiraji Ornate Hilt##20890 |q 8710/1 |only Warlock
collect 1 Qiraji Spiked Hilt##20886 |q 8558/1 |only Warrior
|tip This has a chance to drop from Ayamiss the Hunter, Buru the Gorger, Moam, General Rajax, Kurinnaxx, and Ossirian the Unscarred in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Jasper Idol##20870 |q 8708/2 |only Druid
collect 2 Azure Idol##20866 |q 8712/2 |only Hunter
collect 2 Obsidian Idol##20871 |q 8707/2 |only Mage
collect 2 Amber Idol##20869 |q 8711/2 |only Paladin
collect 2 Lambent Idol##20868 |q 8705/2 |only Priest
collect 2 Vermillion Idol##20872 |q 8709/2 |only Rogue
collect 2 Amber Idol##20869 |q 8706/2 |only Shaman
collect 2 Onyx Idol##20867 |q 8710/2 |only Warlock
collect 2 Alabaster Idol##20873 |q 8558/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Crystal Scarab##20862 |q 8708/3 |only Druid
collect 5 Silver Scarab##20860 |q 8712/3 |only Hunter
collect 5 Silver Scarab##20860 |q 8707/3 |only Mage
collect 5 Bronze Scarab##20861 |q 8711/3 |only Paladin
collect 5 Bronze Scarab##20861 |q 8705/3 |only Priest
collect 5 Gold Scarab##20859 |q 8709/3 |only Rogue
collect 5 Bronze Scarab##20861 |q 8706/3 |only Shaman
collect 5 Gold Scarab##20859 |q 8710/3 |only Warlock
collect 5 Crystal Scarab##20862 |q 8558/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Stone Scarab##20858 |q 8708/4 |only Druid
collect 5 Bone Scarab##20864 |q 8712/4 |only Hunter
collect 5 Bone Scarab##20864 |q 8707/4 |only Mage
collect 5 Ivory Scarab##20865 |q 8711/4 |only Paladin
collect 5 Ivory Scarab##20865 |q 8705/4 |only Priest
collect 5 Clay Scarab##20863 |q 8709/4 |only Rogue
collect 5 Ivory Scarab##20865 |q 8706/4 |only Shaman
collect 5 Clay Scarab##20863 |q 8710/4 |only Warlock
collect 5 Stone Scarab##20858 |q 8558/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Exalted_Reputation"
Reach Exalted Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Exalted |or
'|condition completedanyq(8708,8712,8707,8711,8705,8709,8706,8710,8558) |or
step
talk Warden Haro##15499
turnin Mace of Unending Life##8708 |goto 51.14,38.95 |only Druid
turnin Scythe of the Unseen Path##8712 |goto 51.14,38.95 |only Hunter
turnin Blade of Vaulted Secrets##8707 |goto 51.14,38.95 |only Mage
turnin Blade of Eternal Justice##8711 |goto 51.14,38.95 |only Paladin
turnin Gavel of Infinite Wisdom##8705 |goto 51.14,38.95 |only Priest
turnin Dagger of Veiled Shadows##8709 |goto 51.14,38.95 |only Rogue
turnin Hammer of the Gathering Storm##8706 |goto 51.14,38.95 |only Shaman
turnin Kris of Unspoken Names##8710 |goto 51.14,38.95 |only Warlock
turnin Sickle of Unyielding Strength##8558 |goto 51.14,38.95 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Shoulder Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific shoulders.",
condition_end=function() return completedanyq(8669,8659,8625,8630,8594,8641,8602,8664,8544) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Shoulderpads##8669 |only Druid
accept Striker's Pauldrons##8659 |only Hunter
accept Enigma Shoulderpads##8625 |only Mage
accept Avenger's Pauldrons##8630 |only Paladin
accept Mantle of the Oracle##8594 |only Priest
accept Deathdealer's Spaulders##8641 |only Rogue
accept Stormcaller's Pauldrons##8602 |only Shaman
accept Doomcaller's Mantle##8664 |only Warlock
accept Conqueror's Spaulders##8544 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Neutral_Reputation"
step
collect 1 Qiraji Bindings of Dominance##20932 |q 8669/1 |only Druid
collect 1 Qiraji Bindings of Command##20928 |q 8659/1 |only Hunter
collect 1 Qiraji Bindings of Dominance##20932 |q 8625/1 |only Mage
collect 1 Qiraji Bindings of Dominance##20932 |q 8630/1 |only Paladin
collect 1 Qiraji Bindings of Command##20928 |q 8594/1 |only Priest
collect 1 Qiraji Bindings of Command##20928 |q 8641/1 |only Rogue
collect 1 Qiraji Bindings of Dominance##20932 |q 8602/1 |only Shaman
collect 1 Qiraji Bindings of Dominance##20932 |q 8664/1 |only Warlock
collect 1 Qiraji Bindings of Command##20928 |q 8544/1 |only Warrior
|tip This has a chance to drop from Princess Huhuran and Viscidus in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Strife##20881 |q 8669/2 |only Druid
collect 2 Idol of War##20882 |q 8659/2 |only Hunter
collect 2 Idol of Death##20876 |q 8625/2 |only Mage
collect 2 Idol of Life##20879 |q 8630/2 |only Paladin
collect 2 Idol of Rebirth##20878 |q 8594/2 |only Priest
collect 2 Idol of the Sun##20874 |q 8641/2 |only Rogue
collect 2 Idol of Life##20879 |q 8602/2 |only Shaman
collect 2 Idol of the Sage##20877 |q 8664/2 |only Warlock
collect 2 Idol of Night##20875 |q 8544/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Gold Scarab##20859 |q 8669/3 |only Druid
collect 5 Crystal Scarab##20862 |q 8659/3 |only Hunter
collect 5 Stone Scarab##20858 |q 8625/3 |only Mage
collect 5 Gold Scarab##20859 |q 8630/3 |only Paladin
collect 5 Silver Scarab##20860 |q 8594/3 |only Priest
collect 5 Silver Scarab##20860 |q 8641/3 |only Rogue
collect 5 Gold Scarab##20859 |q 8602/3 |only Shaman
collect 5 Bronze Scarab##20861 |q 8664/3 |only Warlock
collect 5 Clay Scarab##20863 |q 8544/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Bone Scarab##20864 |q 8669/4 |only Druid
collect 5 Ivory Scarab##20865 |q 8659/4 |only Hunter
collect 5 Bronze Scarab##20861 |q 8625/4 |only Mage
collect 5 Crystal Scarab##20862 |q 8630/4 |only Paladin
collect 5 Ivory Scarab##20865 |q 8594/4 |only Priest
collect 5 Clay Scarab##20863 |q 8641/4 |only Rogue
collect 5 Crystal Scarab##20862 |q 8602/4 |only Shaman
collect 5 Bone Scarab##20864 |q 8664/4 |only Warlock
collect 5 Stone Scarab##20858 |q 8544/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Neutral_Reputation"
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral |or
'|condition completedanyq(8669,8659,8625,8630,8594,8641,8602,8664,8544) |or
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Shoulderpads##8669 |only Druid
turnin Striker's Pauldrons##8659 |only Hunter
turnin Enigma Shoulderpads##8625 |only Mage
turnin Avenger's Pauldrons##8630 |only Paladin
turnin Mantle of the Oracle##8594 |only Priest
turnin Deathdealer's Spaulders##8641 |only Rogue
turnin Stormcaller's Pauldrons##8602 |only Shaman
turnin Doomcaller's Mantle##8664 |only Warlock
turnin Conqueror's Spaulders##8544 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Boots Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific boots.",
condition_end=function() return completedanyq(8665,8626,8634,8655,8596,8637,8621,8660,8559) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Boots##8665 |only Druid
accept Striker's Footguards##8626 |only Hunter
accept Enigma Boots##8634 |only Mage
accept Avenger's Greaves##8655 |only Paladin
accept Footwraps of the Oracle##8596 |only Priest
accept Deathdealer's Boots##8637 |only Rogue
accept Stormcaller's Footguards##8621 |only Shaman
accept Doomcaller's Footwraps##8660 |only Warlock
accept Conqueror's Greaves##8559 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Neutral_Reputation"
step
collect 1 Qiraji Bindings of Dominance##20932 |q 8665/1 |only Druid
collect 1 Qiraji Bindings of Command##20928 |q 8626/1 |only Hunter
collect 1 Qiraji Bindings of Dominance##20932 |q 8634/1 |only Mage
collect 1 Qiraji Bindings of Dominance##20932 |q 8655/1 |only Paladin
collect 1 Qiraji Bindings of Command##20928 |q 8596/1 |only Priest
collect 1 Qiraji Bindings of Command##20928 |q 8637/1 |only Rogue
collect 1 Qiraji Bindings of Dominance##20932 |q 8621/1 |only Shaman
collect 1 Qiraji Bindings of Dominance##20932 |q 8660/1 |only Warlock
collect 1 Qiraji Bindings of Command##20928 |q 8559/1 |only Warrior
|tip This has a chance to drop from Princess Huhuran and Viscidus in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Rebirth##20878 |q 8665/2 |only Druid
collect 2 Idol of Life##20879 |q 8626/2 |only Hunter
collect 2 Idol of the Sun##20874 |q 8634/2 |only Mage
collect 2 Idol of the Sage##20877 |q 8655/2 |only Paladin
collect 2 Idol of Death##20876 |q 8596/2 |only Priest
collect 2 Idol of Strife##20881 |q 8637/2 |only Rogue
collect 2 Idol of the Sage##20877 |q 8621/2 |only Shaman
collect 2 Idol of Night##20875 |q 8660/2 |only Warlock
collect 2 Idol of War##20882 |q 8559/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Stone Scarab##20858 |q 8665/3 |only Druid
collect 5 Stone Scarab##20858 |q 8626/3 |only Hunter
collect 5 Silver Scarab##20860 |q 8634/3 |only Mage
collect 5 Bronze Scarab##20861 |q 8655/3 |only Paladin
collect 5 Bronze Scarab##20861 |q 8596/3 |only Priest
collect 5 Crystal Scarab##20862 |q 8637/3 |only Rogue
collect 5 Bronze Scarab##20861 |q 8621/3 |only Shaman
collect 5 Clay Scarab##20863 |q 8660/3 |only Warlock
collect 5 Ivory Scarab##20865 |q 8559/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Silver Scarab##20860 |q 8665/4 |only Druid
collect 5 Bone Scarab##20864 |q 8626/4 |only Hunter
collect 5 Crystal Scarab##20862 |q 8634/4 |only Mage
collect 5 Clay Scarab##20863 |q 8655/4 |only Paladin
collect 5 Gold Scarab##20859 |q 8596/4 |only Priest
collect 5 Bone Scarab##20864 |q 8637/4 |only Rogue
collect 5 Clay Scarab##20863 |q 8621/4 |only Shaman
collect 5 Ivory Scarab##20865 |q 8660/4 |only Warlock
collect 5 Gold Scarab##20859 |q 8559/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Neutral_Reputation"
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral |or
'|condition completedanyq(8665,8626,8634,8655,8596,8637,8621,8660,8559) |or
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Boots##8665 |only Druid
turnin Striker's Footguards##8626 |only Hunter
turnin Enigma Boots##8634 |only Mage
turnin Avenger's Greaves##8655 |only Paladin
turnin Footwraps of the Oracle##8596 |only Priest
turnin Deathdealer's Boots##8637 |only Rogue
turnin Stormcaller's Footguards##8621 |only Shaman
turnin Doomcaller's Footwraps##8660 |only Warlock
turnin Conqueror's Greaves##8559 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Helm Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific helm.",
condition_end=function() return completedanyq(8667,8657,8632,8628,8592,8639,8623,8662,8561) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Helm##8667 |only Druid
accept Striker's Diadem##8657 |only Hunter
accept Enigma Circlet##8632 |only Mage
accept Avenger's Crown##8628 |only Paladin
accept Tiara of the Oracle##8592 |only Priest
accept Deathdealer's Helm##8639 |only Rogue
accept Stormcaller's Diadem##8623 |only Shaman
accept Doomcaller's Circlet##8662 |only Warlock
accept Conqueror's Crown##8561 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Friendly_Reputation"
step
collect 1 Vek'lor's Diadem##20930 |q 8667/1 |only Druid
collect 1 Vek'lor's Diadem##20930 |q 8657/1 |only Hunter
collect 1 Vek'nilash's Circlet##20926 |q 8632/1 |only Mage
collect 1 Vek'lor's Diadem##20930 |q 8628/1 |only Paladin
collect 1 Vek'nilash's Circlet##20926 |q 8592/1 |only Priest
collect 1 Vek'lor's Diadem##20930 |q 8639/1 |only Rogue
collect 1 Vek'lor's Diadem##20930 |q 8623/1 |only Shaman
collect 1 Vek'nilash's Circlet##20926 |q 8662/1 |only Warlock
collect 1 Vek'nilash's Circlet##20926 |q 8561/1 |only Warrior
|tip This has a chance to drop from Emperor Vek'lor and Emperor Vek'nilash in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Life##20879 |q 8667/2 |only Druid
collect 2 Idol of Strife##20881 |q 8657/2 |only Hunter
collect 2 Idol of Night##20875 |q 8632/2 |only Mage
collect 2 Idol of Rebirth##20878 |q 8628/2 |only Paladin
collect 2 Idol of the Sage##20877 |q 8592/2 |only Priest
collect 2 Idol of War##20882 |q 8639/2 |only Rogue
collect 2 Idol of Rebirth##20878 |q 8623/2 |only Shaman
collect 2 Idol of Death##20876 |q 8662/2 |only Warlock
collect 2 Idol of the Sun##20874 |q 8561/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Gold Scarab##20859 |q 8667/3 |only Druid
collect 5 Bronze Scarab##20861 |q 8657/3 |only Hunter
collect 5 Bronze Scarab##20861 |q 8632/3 |only Mage
collect 5 Stone Scarab##20858 |q 8628/3 |only Paladin
collect 5 Silver Scarab##20860 |q 8592/3 |only Priest
collect 5 Clay Scarab##20863 |q 8639/3 |only Rogue
collect 5 Stone Scarab##20858 |q 8623/3 |only Shaman
collect 5 Silver Scarab##20860 |q 8662/3 |only Warlock
collect 5 Crystal Scarab##20862 |q 8561/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Clay Scarab##20863 |q 8667/4 |only Druid
collect 5 Ivory Scarab##20865 |q 8657/4 |only Hunter
collect 5 Ivory Scarab##20865 |q 8632/4 |only Mage
collect 5 Crystal Scarab##20862 |q 8628/4 |only Paladin
collect 5 Bone Scarab##20864 |q 8592/4 |only Priest
collect 5 Gold Scarab##20859 |q 8639/4 |only Rogue
collect 5 Crystal Scarab##20862 |q 8623/4 |only Shaman
collect 5 Bone Scarab##20864 |q 8662/4 |only Warlock
collect 5 Stone Scarab##20858 |q 8561/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Friendly_Reputation"
Reach Friendly Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Friendly |or
'|condition completedanyq(8667,8657,8632,8628,8592,8639,8623,8662,8561) |or
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Helm##8667 |only Druid
turnin Striker's Diadem##8657 |only Hunter
turnin Enigma Circlet##8632 |only Mage
turnin Avenger's Crown##8628 |only Paladin
turnin Tiara of the Oracle##8592 |only Priest
turnin Deathdealer's Helm##8639 |only Rogue
turnin Stormcaller's Diadem##8623 |only Shaman
turnin Doomcaller's Circlet##8662 |only Warlock
turnin Conqueror's Crown##8561 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Legs Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific legs.",
condition_end=function() return completedanyq(8668,8658,8631,8629,8593,8640,8624,8663,8560) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Trousers##8668 |only Druid
accept Striker's Leggings##8658 |only Hunter
accept Enigma Leggings##8631 |only Mage
accept Avenger's Legguards##8629 |only Paladin
accept Trousers of the Oracle##8593 |only Priest
accept Deathdealer's Leggings##8640 |only Rogue
accept Stormcaller's Leggings##8624 |only Shaman
accept Doomcaller's Trousers##8663 |only Warlock
accept Conqueror's Legguards##8560 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Friendly_Reputation"
step
collect 1 Skin of the Great Sandworm##20931 |q 8668/1 |only Druid
collect 1 Skin of the Great Sandworm##20931 |q 8658/1 |only Hunter
collect 1 Ouro's Intact Hide##20927 |q 8631/1 |only Mage
collect 1 Skin of the Great Sandworm##20931 |q 8629/1 |only Paladin
collect 1 Ouro's Intact Hide##20927 |q 8593/1 |only Priest
collect 1 Ouro's Intact Hide##20927 |q 8640/1 |only Rogue
collect 1 Skin of the Great Sandworm##20931 |q 8624/1 |only Shaman
collect 1 Skin of the Great Sandworm##20931 |q 8663/1 |only Warlock
collect 1 Ouro's Intact Hide##20927 |q 8560/1 |only Warrior
|tip This has a chance to drop from Ouro in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of War##20882 |q 8668/2 |only Druid
collect 2 Idol of the Sun##20874 |q 8658/2 |only Hunter
collect 2 Idol of the Sage##20877 |q 8631/2 |only Mage
collect 2 Idol of Strife##20881 |q 8629/2 |only Paladin
collect 2 Idol of Life##20879 |q 8593/2 |only Priest
collect 2 Idol of Night##20875 |q 8640/2 |only Rogue
collect 2 Idol of Strife##20881 |q 8624/2 |only Shaman
collect 2 Idol of Rebirth##20878 |q 8663/2 |only Warlock
collect 2 Idol of Death##20876 |q 8560/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Stone Scarab##20858 |q 8668/3 |only Druid
collect 5 Silver Scarab##20860 |q 8658/3 |only Hunter
collect 5 Silver Scarab##20860 |q 8631/3 |only Mage
collect 5 Ivory Scarab##20865 |q 8629/3 |only Paladin
collect 5 Gold Scarab##20859 |q 8593/3 |only Priest
collect 5 Stone Scarab##20858 |q 8640/3 |only Rogue
collect 5 Ivory Scarab##20865 |q 8624/3 |only Shaman
collect 5 Gold Scarab##20859 |q 8663/3 |only Warlock
collect 5 Bronze Scarab##20861 |q 8560/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Crystal Scarab##20862 |q 8668/4 |only Druid
collect 5 Bone Scarab##20864 |q 8658/4 |only Hunter
collect 5 Bone Scarab##20864 |q 8631/4 |only Mage
collect 5 Bronze Scarab##20861 |q 8629/4 |only Paladin
collect 5 Clay Scarab##20863 |q 8593/4 |only Priest
collect 5 Crystal Scarab##20862 |q 8640/4 |only Rogue
collect 5 Bronze Scarab##20861 |q 8624/4 |only Shaman
collect 5 Clay Scarab##20863 |q 8663/4 |only Warlock
collect 5 Ivory Scarab##20865 |q 8560/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Friendly_Reputation"
Reach Friendly Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Friendly |or
'|condition completedanyq(8668,8658,8631,8629,8593,8640,8624,8663,8560) |or
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Trousers##8668 |only Druid
turnin Striker's Leggings##8658 |only Hunter
turnin Enigma Leggings##8631 |only Mage
turnin Avenger's Legguards##8629 |only Paladin
turnin Trousers of the Oracle##8593 |only Priest
turnin Deathdealer's Leggings##8640 |only Rogue
turnin Stormcaller's Leggings##8624 |only Shaman
turnin Doomcaller's Trousers##8663 |only Warlock
turnin Conqueror's Legguards##8560 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Chest Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific chest.",
condition_end=function() return completedanyq(8666,8656,8633,8627,8603,8638,8622,8661,8562) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Vethsera##15504
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Vest##8666 |only Druid
accept Striker's Hauberk##8656 |only Hunter
accept Enigma Robes##8633 |only Mage
accept Avenger's Breastplate##8627 |only Paladin
accept Vestments of the Oracle##8603 |only Priest
accept Deathdealer's Vest##8638 |only Rogue
accept Stormcaller's Hauberk##8622 |only Shaman
accept Doomcaller's Robes##8661 |only Warlock
accept Conqueror's Breastplate##8562 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Honored_Reputation"
step
collect 1 Husk of the Old God##20933 |q 8666/1 |only Druid
collect 1 Carapace of the Old God##20929 |q 8656/1 |only Hunter
collect 1 Husk of the Old God##20933 |q 8633/1 |only Mage
collect 1 Carapace of the Old God##20929 |q 8627/1 |only Paladin
collect 1 Husk of the Old God##20933 |q 8603/1 |only Priest
collect 1 Carapace of the Old God##20929 |q 8638/1 |only Rogue
collect 1 Carapace of the Old God##20929 |q 8622/1 |only Shaman
collect 1 Husk of the Old God##20933 |q 8661/1 |only Warlock
collect 1 Carapace of the Old God##20929 |q 8562/1 |only Warrior
|tip This has a chance to drop from C'Thun in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Rebirth##20878 |q 8666/2 |only Druid
collect 2 Idol of Life##20879 |q 8656/2 |only Hunter
collect 2 Idol of the Sun##20874 |q 8633/2 |only Mage
collect 2 Idol of the Sage##20877 |q 8627/2 |only Paladin
collect 2 Idol of Death##20876 |q 8603/2 |only Priest
collect 2 Idol of Strife##20881 |q 8638/2 |only Rogue
collect 2 Idol of the Sage##20877 |q 8622/2 |only Shaman
collect 2 Idol of Night##20875 |q 8661/2 |only Warlock
collect 2 Idol of War##20882 |q 8562/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Bronze Scarab##20861 |q 8666/3 |only Druid
collect 5 Gold Scarab##20859 |q 8656/3 |only Hunter
collect 5 Gold Scarab##20859 |q 8633/3 |only Mage
collect 5 Silver Scarab##20860 |q 8627/3 |only Paladin
collect 5 Stone Scarab##20858 |q 8603/3 |only Priest
collect 5 Bronze Scarab##20861 |q 8638/3 |only Rogue
collect 5 Silver Scarab##20860 |q 8622/3 |only Shaman
collect 5 Crystal Scarab##20862 |q 8661/3 |only Warlock
collect 5 Silver Scarab##20860 |q 8562/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Ivory Scarab##20865 |q 8666/4 |only Druid
collect 5 Clay Scarab##20863 |q 8656/4 |only Hunter
collect 5 Clay Scarab##20863 |q 8633/4 |only Mage
collect 5 Bone Scarab##20864 |q 8627/4 |only Paladin
collect 5 Crystal Scarab##20862 |q 8603/4 |only Priest
collect 5 Ivory Scarab##20865 |q 8638/4 |only Rogue
collect 5 Bone Scarab##20864 |q 8622/4 |only Shaman
collect 5 Stone Scarab##20858 |q 8661/4 |only Warlock
collect 5 Bone Scarab##20864 |q 8562/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Honored_Reputation"
Reach Honored Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Honored |or
'|condition completedanyq(8666,8656,8633,8627,8603,8638,8622,8661,8562) |or
step
talk Vethsera##15504
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Vest##8666 |only Druid
accept Striker's Hauberk##8656 |only Hunter
accept Enigma Robes##8633 |only Mage
accept Avenger's Breastplate##8627 |only Paladin
accept Vestments of the Oracle##8603 |only Priest
accept Deathdealer's Vest##8638 |only Rogue
accept Stormcaller's Hauberk##8622 |only Shaman
accept Doomcaller's Robes##8661 |only Warlock
accept Conqueror's Breastplate##8562 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Scepter of the Shifting Sands",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Scepter of the Shifting Sands questline.",
condition_end=function() return completedq(8745) end,
},[[
step
talk Baristolth of the Shifting Sands##15180
accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
Follow the path |goto Tanaris 61.19,50.58 < 75 |only if walking
Discover the Brood of Nozdormu |q 8286/1 |goto 64.24,50.26
step
talk Baristolth of the Shifting Sands##15180
turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
accept Only One May Rise##8288 |goto 49.45,36.45
step
kill Broodlord Lashlayer##12017
|tip It's the third boss in the Blackwing Lair raid.
|tip You will need a raid group for this.
collect 1 Head of the Broodlord Lashlayer##20383 |q 8288/1
step
talk Baristolth of the Shifting Sands##15180
turnin Only One May Rise##8288 |goto 49.45,36.45
accept The Path of the Righteous##8301 |goto 49.45,36.45
stickystart "Reach_Neutral_With_Brood_Of_Nozdormu"
step
Kill Silithid enemies around this area
|tip They look like large bugs.
|tip These enemies are elite and may require a group to kill.
collect 200 Silithid Carapace Fragment##20384 |q 8301/1 |goto 45.22,26.25
You can find more around:
[25.15,59.22]
[57.64,81.91]
step
talk Baristolth of the Shifting Sands##15180
turnin The Path of the Righteous##8301 |goto 49.45,36.45
step
label "Accept_The_Hand_of_the_Righteous"
talk Baristolth of the Shifting Sands##15180
accept The Hand of the Righteous##8302 |goto 49.45,36.45 |or
'|condition rep("Brood of Nozdormu") >= Neutral |or
step
Kill Silithid enemies around this area
|tip They look like large bugs.
|tip These enemies are elite and may require a group to kill.
|tip You will repeat this quest until neutral with the Brood of Nozdormu faction.
|tip This requires around 41,400 carapace fragments, so it's best to find a group.
collect 200 Silithid Carapace Fragment##20384 |q 8302/1 |goto 45.22,26.25 |or
You can find more around:
[25.15,59.22]
[57.64,81.91]
'|condition rep("Brood of Nozdormu") >= Neutral |or
step
talk Baristolth of the Shifting Sands##15180
turnin The Hand of the Righteous##8302 |goto 49.45,36.45 |next "Accept_The_Hand_of_the_Righteous" |or
|tip Each time you turn in this quest you will receive a "Proxy of Nozdormu" item.
|tip Target a friend and use the item to deputize them so they can collect carapace fragments as well.
|tip You must use or destroy your previous "Proxy of Nozdormu" before you can complete this quest.
'|condition rep("Brood of Nozdormu") >= Neutral |or
step
label "Reach_Neutral_With_Brood_Of_Nozdormu"
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral
step
talk Baristolth of the Shifting Sands##15180
accept Anachronos##8303 |goto 49.45,36.45
step
talk Anachronos##15192
turnin Anachronos##8303 |goto Tanaris 65.27,50.03
accept Long Forgotten Memories##8305 |goto 65.27,50.03
step
click Crystalline Tear
|tip It's a small red crystal on the ground.
turnin Long Forgotten Memories##8305 |goto Silithus 28.67,89.14
accept A Pawn on the Eternal Board##8519 |goto 28.67,89.14
step
talk Anachronos##15192
turnin A Pawn on the Eternal Board##8519 |goto Tanaris 65.27,50.03
accept The Charge of the Dragonflights##8555 |goto 65.27,50.03
step
talk Anachronos##15192
turnin The Charge of the Dragonflights##8555 |goto 65.27,50.03
stickystart "Collect_Deeprock_Salt"
stickystart "Collect_Arcanite_Bar"
stickystart "Collect_Elementium_Ore"
stickystart "Collect_Azerothian_Diamond"
stickystart "Collect_Blue_Sapphire"
step
_Collect the Following Items:_
collect 20 Goblin Rocket Fuel##9061 |q 8586 |future
|tip These are required to complete the quest "Dirge's Kickin' Chimaerok Chops." |notinsticky
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Firebloom, one Volatile Rum, and one Leaded Vial to craft.
step
label "Collect_Deeprock_Salt"
_Collect the Following Items:_ |notinsticky
Kill Rock Elemental enemies around this area
collect 20 Deeprock Salt##8150 |goto Badlands 14.16,39.38 |q 8586 |future
|tip You can also purchase these from the Auction House.
|tip These are required to complete the quest "Dirge's Kickin' Chimaerok Chops." |notinsticky
step
label "Collect_Arcanite_Bar"
_Collect the Following Items:_ |notinsticky
collect 20 Arcanite Bar##12360 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Arcane Crystal and one Thorium Bar to craft.
step
label "Collect_Elementium_Ore"
_Collect the Following Items:_ |notinsticky
kill Blackwing Technician##13996+
|tip These spawn and flee from Vaelastrasz the Corrupt's room in Blackwing Lair.
|tip You must kill them quickly before they flee to safety.
collect 10 Elementium Ore##18562 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can also purchase these from the Auction House.
step
label "Collect_Azerothian_Diamond"
_Collect the Following Items:_ |notinsticky
collect 10 Azerothian Diamond##12800 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
label "Collect_Blue_Sapphire"
_Collect the Following Items:_ |notinsticky
collect 10 Blue Sapphire##12361 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
talk Spirit of Azuregos##15481
|tip He walks all over the area.
|tip You will need to search around.
|tip Make sure you talk to the spirit version.
Tell him _"How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?"_
collect 1 Magical Ledger##20949 |goto Azshara 55.58,79.77
step
use the Magical Ledger##20949
accept Azuregos's Magical Ledger##8575
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Azuregos's Magical Ledger##8575 |goto Tanaris 65.24,18.58
step
talk Narain Soothfancy##11811
|tip Inside the building.
accept Translating the Ledger##8576 |goto 65.24,18.58
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Translating the Ledger##8576 |goto 65.24,18.58
step
talk Narain Soothfancy##11811
|tip Inside the building.
accept Stewvul, Ex-B.F.F.##8577 |goto 65.24,18.58
accept Never Ask Me About My Business##8584 |goto 65.24,18.58
accept Draconic for Dummies##8597 |goto 65.24,18.58
step
talk Meridith the Mermaiden##15526
|tip Underwater.
accept Love Song for Narain##8599 |goto 59.43,96.04
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Love Song for Narain##8599 |goto 65.24,18.58
step
talk Meridith the Mermaiden##15526
|tip Underwater.
Tell her _"That would be wonderful! Thank you, Merideth."_
Gain the "Siren's Song" Buff |havebuff spell:25678 |goto 59.43,96.04 |q 8597
step
click Freshly Dug Dirt
|tip Quickly swim southeast to the pair of secret islands.
|tip The buff will expire in three minutes.
|tip On the island south of the metal rig.
turnin Draconic for Dummies##8597
accept rAnS0m##8598
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin rAnS0m##8598 |goto Tanaris 65.24,18.58
accept Decoy!##8606 |goto 65.24,18.58
step
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin Never Ask Me About My Business##8584 |goto 52.63,28.12
accept The Isle of Dread!##8585 |goto 52.63,28.12
stickystart "Kill_Number_Two"
step
Cross the bridge |goto Winterspring 61.24,74.20 < 50 |only if walking
Follow the path |goto 63.43,72.69 < 40 |only if walking
Follow the path up |goto 66.02,72.69 < 40 |only if walking
use Narain's Special Kit##21042
Open Narain's Special Kit |condition itemcount(21042) == 0 |goto 67.55,72.84 |q 8606
step
use Narain's Turban##21039
Transform into Narain Soothfancy |havebuff spell:25688 |goto 67.55,72.84 |q 8606
step
use the Bag of Gold##21041
Place the Bag of Loot |condition itemcount(21041) == 0 |goto 67.55,72.84 |q 8606
|tip Placing the Bag of Loot will summon Number Two.
step
label "Kill_Number_Two"
Watch the dialogue |notinsticky
kill Number Two##15554 |q 8606/1 |goto 67.23,72.60
|tip You will need a group of at least three people to kill it.
stickystart "Collect_Chimaerok_Tenderloin"
step
Follow the path up |goto Feralas 34.14,77.78 < 50 |only if walking
kill Lord Lakmaeran##12803
|tip You will need a group for this, preferrably at least ten people.
collect 1 Lakmaeran's Carcass##21027 |q 8585/1 |goto 29.34,72.63
step
label "Collect_Chimaerok_Tenderloin"
Kill Chimaerok enemies around this area
|tip You will need a group for this, preferrably at least ten people. |notinsticky
collect 20 Chimaerok Tenderloin##21024 |q 8585/2 |goto 28.51,74.88
step
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.12
accept Dirge's Kickin' Chimaerok Chops##8586 |goto 52.63,28.12
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Decoy!##8606 |goto 65.24,18.58
accept The Only Prescription##8620 |goto 65.24,18.58
step
Enter the building |goto Duswallow Marsh 77.25,17.41
kill Doctor Weavil##15552
|tip Upstairs inside the building.
|tip You will need a sizeable group to kill him.
collect 1 Draconic for Dummies##21103 |goto 77.85,17.12 |q 8620
step
kill Onyxia##10184
|tip Inside Onxyia's Lair.
collect 2 Draconic for Dummies##21103 |goto Kalimdor 56.58,71.55 |q 8620
step
Cross the bridge |goto Winterspring 62.43,67.46 < 50 |only if walking
Kill enemies around this area
collect 3 Draconic for Dummies##21103 |goto 60.59,78.67 |q 8620
|tip Any elite demon in Darkwhisper Gorge can drop this.
step
click Draconic for Dummies
|tip You will need a group or stealth to survive the opposing faction's city. |only Alliance
collect 8 Draconic for Dummies##21103 |goto Undercity 77.05,38.93 |q 8620
step
click Inconspicuous Crate
turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.67
accept Scrying Goggles? No Problem!##8578 |goto 46.19,86.67
step
Kill Rock Elemental enemies around this area
collect 20 Deeprock Salt##8150 |q 8586/2 |goto Badlands 14.16,39.38
|tip You can also purchase these from the Auction House.
step
kill Ebonroc##14601
|tip It is the fifth boss of the Blackwing Lair raid.
collect 6 Draconic for Dummies##21103 |q 8620
stickystart "Collect_Draconic_Scrying_Goggles"
step
kill Ragnaros##11502
|tip He is the final boss of the Molten Core raid.
collect 5 Draconic for Dummies##21103 |q 8620
step
label "Collect_Draconic_Scrying_Goggles"
Kill enemies inside Molten Core
collect 1 Narain's Scrying Goggles##20951 |q 8578/1
|tip These goggles have a chance to drop from trash mobs inside the Molten Core raid.
step
Enter Stormwind Keep |goto Stormwind City 69.37,28.39 < 20 |only if walking
click Draconic for Dummies
|tip You will need a group or stealth to survive the opposing faction's city. |only Horde
|tip It's the open book on the corner of the statue.
Choose _<Take this book for the good of Azeroth!>_
collect 7 Draconic for Dummies##21103 |goto Stormwind City 71.97,6.88 |q 8620
step
Watch the dialogue
talk Malfurion Stormrage##15362
|tip Inside the Sunken Temple dungeon.
|tip He will appear in front of Shade of Eranikus when you walk near.
accept Eranikus, Tyrant of the Dream##8733
step
Kill enemies around this area
collect 4 Draconic for Dummies##21103 |goto Blasted Lands 44.40,56.63 |q 8620
|tip Any elite demon in The Tainted Scar can drop this.
step
talk Forest Wisp##15624
turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.56,47.93
accept Tyrande and Remulos##8734 |goto 37.56,47.93
step
talk Keeper Remulos##11832
turnin Tyrande and Remulos##8734 |goto Moonglade 36.19,41.81
accept The Nightmare's Corruption##8735 |goto 36.19,41.81
step
Follow the path |goto Ashenvale 89.00,41.02 < 50 |only if walking
Kill Emeraldon enemies around this area
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21147 |goto 93.61,39.65 |q 8735/1
step
Kill Jademir enemies around this area
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21148 |goto Feralas 50.70,12.50 |q 8735/3
step
Follow the path up |goto Duskwood 47.36,61.77 < 40 |only if walking
Enter the Twilight Grove |goto 46.49,55.22 < 30 |only if walking
kill Twilight Corrupter##15625
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21149 |goto 48.98,34.39 |q 8735/2
step
Cross the bridge |goto The Hinterlands 60.64,38.41 < 20 |only if walking
Kill Verdantine enemies around this area
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21146 |goto 62.91,30.32 |q 8735/4
step
talk Keeper Remulos##11832
turnin The Nightmare's Corruption##8735 |goto Moonglade 36.19,41.81
accept The Nightmare Manifests##8736 |goto 36.19,41.81
step
Defend Nighthaven from Eranikus |q 8736/1 |goto 48.04,34.31
|tip You will need a raid to accomplish this.
|tip You cannot let Keeper Remulos die or kill Eranikus.
step
talk Keeper Remulos##11832
turnin The Nightmare Manifests##8736 |goto 36.19,41.81
accept The Champion Returns##8741 |goto 36.19,41.81
step
collect 20 Goblin Rocket Fuel##9061 |q 8586/1
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Firebloom, one Volatile Rum, and one Leaded Vial to craft.
step
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.12
accept Return to Narain##8587 |goto 52.63,28.12
step
use the Magical Book Binding##21112
collect 1 Draconic For Dummies: Volume II##21111 |q 8620/1
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Scrying Goggles? No Problem!##8578 |goto 65.24,18.58
turnin Return to Narain##8587 |goto 65.24,18.58
turnin The Only Prescription##8620 |goto  65.24,18.58
step
talk Anachronos##15192
turnin The Champion Returns##8741 |goto 65.27,50.03
step
talk Vaelastrasz the Corrupt##13020
|tip The second boss inside the Blackwing Lair raid.
accept Nefarius's Corruption##8730
|tip You will only have five hours to kill Nefarian, collect the Red Scepter Shard, and turn in this quest.
step
kill Nefarian##11583
|tip He is the final boss inside the Blackwing Lair raid.
|tip You must kill him and turn in this quest within the five hour time limit.
collect 1 Red Scepter Shard##21138
|tip Only one person in the raid can loot this item per reset.
step
talk Anachronos##15192
turnin Nefarius's Corruption##8730 |goto 65.27,50.03
|tip You must turn in this quest within the five hour time limit.
step
talk Narain Soothfancy##11811
|tip Inside the building.
accept The Good News and The Bad News##8728 |goto 65.24,18.58
stickystart "Collect_Elementium_Ores"
stickystart "Collect_Azerothian_Diamonds"
stickystart "Collect_Blue_Sapphires"
step
_Collect the Following Items:_ |notinsticky
collect 20 Arcanite Bar##12360 |q 8728/1
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Arcane Crystal and one Thorium Bar to craft.
step
label "Collect_Elementium_Ores"
_Collect the Following Items:_ |notinsticky
kill Blackwing Technician##13996+
|tip These spawn and flee from Vaelastrasz the Corrupt's room in Blackwing Lair.
|tip You must kill them quickly before they flee to safety.
collect 10 Elementium Ore##18562 |q 8728/2
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can also purchase these from the Auction House.
step
label "Collect_Azerothian_Diamonds"
_Collect the Following Items:_ |notinsticky
collect 10 Azerothian Diamond##12800 |q 8728/3
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
label "Collect_Blue_Sapphires"
_Collect the Following Items:_ |notinsticky
collect 10 Blue Sapphire##12361 |q 8728/4
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin The Good News and The Bad News##8728 |goto 65.24,18.58
accept The Wrath of Neptulon##8729 |goto 65.24,18.58
step
use the Arcanite Buoy##21136
kill Maws##15571
|tip Using the buoy will summon it.
|tip You will need a raid to defeat it.
collect 1 Blue Scepter Shard##21137 |goto Azshara 65.88,54.05
step
talk Anachronos##15192
turnin The Wrath of Neptulon##8729 |goto Tanaris 65.27,50.03
step
talk Anachronos##15192
accept The Might of Kalimdor##8742 |goto 65.27,50.03
step
click The Scarab Gong##180717
accept Bang a Gong!##8743 |goto Silithus 25.71,90.86
step
click The Scarab Gong##180717
turnin Bang a Gong!##8743 |goto 25.71,90.86
step
talk Jonathan the Revelator##15693
accept Treasure of the Timeless One##8745 |goto 25.94,90.96
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Signet Ring of the Bronze Dragonflight",{
author="support@zygorguides.com",
description="This guide will walk you through acquiring and upgrading a Signet Ring of the Bronze Dragonflight.",
condition_end=function() return completedanyq(8761,8751,8756,8765,8764,8766) end,
},[[
step
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8757,8747,8752) |or
step
_Choose a path:_
|tip Accepting one of these quests will lock you into that questline until you complete it.
|tip You can switch to a different ring after you complete your first questline.
talk Anachronos##15192
accept The Path of the Invoker##8757 |goto Tanaris 65.27,50.03 |noautoaccept |or
|tip This quest grants an intellect-based caster ring.
accept The Path of the Protector##8747 |goto 65.27,50.03 |noautoaccept |or
|tip This quest grants a strength-based defensive ring.
accept The Path of the Conqueror##8752 |goto 65.27,50.03 |noautoaccept |or
|tip This quest grants an agility-based offensive ring.
step
Reach Friendly Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Friendly |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8758,8748,8753) |or
step
talk Anachronos##15192
accept The Path of the Invoker##8758 |goto 65.27,50.03 |only if completedq(8757)
accept The Path of the Protector##8748 |goto 65.27,50.03 |only if completedq(8747)
accept The Path of the Conqueror##8753 |goto 65.27,50.03 |only if completedq(8752)
step
Reach Honored Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Honored |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8759,8749,8754) |or
step
talk Anachronos##15192
accept The Path of the Invoker##8759 |goto 65.27,50.03 |only if completedq(8757)
accept The Path of the Protector##8749 |goto 65.27,50.03 |only if completedq(8747)
accept The Path of the Conqueror##8754 |goto 65.27,50.03 |only if completedq(8752)
step
Reach Revered Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Revered |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8760,8750,8755) |or
step
talk Anachronos##15192
accept The Path of the Invoker##8760 |goto 65.27,50.03 |only if completedq(8757)
accept The Path of the Protector##8750 |goto 65.27,50.03 |only if completedq(8747)
accept The Path of the Conqueror##8755 |goto 65.27,50.03 |only if completedq(8752)
step
Reach Exalted Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Exalted |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8761,8751,8756) |or
step
talk Anachronos##15192
accept The Grand Invoker##8761 |goto 65.27,50.03 |only if completedq(8757)
accept The Protector of Kalimdor##8751 |goto 65.27,50.03 |only if completedq(8747)
accept The Qiraji Conqueror##8756 |goto 65.27,50.03 |only if completedq(8752)
step
Click Here to Change Paths |confirm
|tip You will need to provide 15 Bronze Scarabs, 15 Crystal Scarabs, and 15 Clay Scarabs in addition to your ring. |only if completedq(8761)
|tip You will need to provide 15 Stone Scarabs, 15 Gold Scarabs, and 15 Silver Scarabs in addition to your ring. |only if completedq(8751)
|tip You will need to provide 15 Bone Scarabs, 15 Ivory Scarabs, and 15 Stone Scarabs in addition to your ring. |only if completedq(8756)
stickystart "Collect_Crystal_Scarabs"
stickystart "Collect_Clay_Scarabs"
stickystart "Collect_Stone_Scarabs_8764"
stickystart "Collect_Gold_Scarabs"
stickystart "Collect_Silver_Scarabs"
stickystart "Collect_Bone_Scarabs"
stickystart "Collect_Ivory_Scarabs"
stickystart "Collect_Stone_Scarabs_8766"
step
collect 15 Bronze Scarab##20861 |q 8765 |future
step
label "Collect_Crystal_Scarabs"
collect 15 Crystal Scarab##20862 |q 8765 |future
step
label "Collect_Clay_Scarabs"
collect 15 Clay Scarab##20863 |q 8765 |future
step
label "Collect_Stone_Scarabs_8764"
collect 15 Stone Scarab##20858 |q 8764 |future
step
label "Collect_Gold_Scarabs"
collect 15 Gold Scarab##20859 |q 8764 |future
step
label "Collect_Silver_Scarabs"
collect 15 Silver Scarab##20860 |q 8764 |future
step
label "Collect_Bone_Scarabs"
collect 15 Bone Scarab##20864 |q 8766 |future
step
label "Collect_Ivory_Scarabs"
collect 15 Ivory Scarab##20865 |q 8766 |future
step
label "Collect_Stone_Scarabs_8766"
collect 15 Stone Scarab##20858 |q 8766 |future
step
talk Anachronos##15192
accept The Changing of Paths - Invoker No More##8765 |only if completedq(8761)
accept The Changing of Paths - Protector No More##8764 |only if completedq(8751)
accept The Changing of Paths - Conqueror No More##8766 |only if completedq(8756)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Battlegear",{
author="support@zygorguides.com",
description="This guide will walk you through acquiring and the four pieces of Cenarion Battlegear.",
condition_end=function() return completedanyq(8548,8572,8573,8574) end,
},[[
step
talk Windcaller Kaldon##15540
accept Cenarion Battlegear##8800 |goto Silithus 49.98,36.36
step
talk Vargus##15176
turnin Cenarion Battlegear##8800 |goto 51.22,38.85
step
talk Vargus##15176
accept Volunteer's Battlegear##8548 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8548"
stickystart "Collect_Cenarion_Tactical_Badge_8548"
stickystart "Reach_Friendly_Reputation"
step
collect 5 Cenarion Combat Badge##20802 |q 8548/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8548"
collect 3 Cenarion Logistics Badge##20800 |q 8548/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8548"
collect 7 Cenarion Tactical Badge##20801 |q 8548/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Reach_Friendly_Reputation"
Reach Friendly Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Friendly
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Volunteer's Battlegear##8548 |goto 51.22,38.85
step
talk Vargus##15176
accept Veteran's Battlegear##8572 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8572"
stickystart "Collect_Cenarion_Tactical_Badge_8572"
stickystart "Reach_Honored_Reputation"
step
collect 7 Cenarion Combat Badge##20802 |q 8572/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8572"
collect 4 Cenarion Logistics Badge##20800 |q 8572/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8572"
collect 4 Cenarion Tactical Badge##20801 |q 8572/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Reach_Honored_Reputation"
Reach Honored Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Honored
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Veteran's Battlegear##8572 |goto 51.22,38.85
step
talk Vargus##15176
accept Champion's Battlegear##8573 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8573"
stickystart "Collect_Cenarion_Tactical_Badge_8573"
stickystart "Collect_Mark_of_Cenarius_8573"
stickystart "Reach_Honored_Reputation"
step
collect 15 Cenarion Combat Badge##20802 |q 8573/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8573"
collect 20 Cenarion Logistics Badge##20800 |q 8573/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8573"
collect 20 Cenarion Tactical Badge##20801 |q 8573/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Collect_Mark_of_Cenarius_8573"
collect 1 Mark of Cenarius##21508 |q 8573/4
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
|tip This item is a reward exclusive to the followup tactical assignment quest "The Four Dukes."
step
label "Reach_Revered_Reputation"
Reach Revered Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Revered
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Champion's Battlegear##8573 |goto 51.22,38.85
step
talk Vargus##15176
accept Stalwart's Battlegear##8574 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8574"
stickystart "Collect_Cenarion_Tactical_Badge_8574"
stickystart "Collect_Mark_of_Remulos_8574"
stickystart "Reach_Honored_Reputation"
step
collect 15 Cenarion Combat Badge##20802 |q 8574/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8574"
collect 20 Cenarion Logistics Badge##20800 |q 8574/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8574"
collect 17 Cenarion Tactical Badge##20801 |q 8574/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Collect_Mark_of_Remulos_8574"
collect 1 Mark of Remulos##21515 |q 8574/4
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
|tip This item is a reward exclusive to the followup logistics assignment quest "The Ultimate Deception."
step
label "Reach_Exalted_Reputation"
Reach Exalted Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Exalted
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Stalwart's Battlegear##8574 |goto 51.22,38.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Field Duty Combat Assignments",{
author="support@zygorguides.com",
description="This guide will walk you through completing various combat assignments for the Cenarion Circle.",
},[[
step
label "Accept_Field_Duty"
talk Windcaller Kaldon##15540
accept Field Duty##8731 |goto Silithus 49.98,36.34
step
use the Unsigned Field Duty Papers##21143
collect 1 Prepared Field Duty Papers##23024 |q 8507
step
talk Krug Skullsplit##15612
accept Field Duty Papers##8732 |goto 52.21,68.43
step
collect 1 Signed Field Duty Papers##20810 |q 8507/1
step
talk Windcaller Kaldon##15540
|tip Choose a combat assignment.
|tip Combat Assignments require you to kill various elite silithid in Silithus hives.
turnin Field Duty##8507 |goto 49.98,36.34
step
label "Begin_Combat_Assignment"
use the Combat Assignment##20808
Open the Combat Assignment |condition itemcount(20808) == 0
step
use the Hive'Zora Dossier##22650 |only if itemcount(22650) >= 0
use the Hive'Ashi Dossier##22648 |only if itemcount(22648) >= 0
use the Hive'Regal Dossier##22649 |only if itemcount(22649) >= 0
Open the Dossier |condition itemcount(22650) == 0 and itemcount(22648) == 0 and itemcount(22649) == 0
step
use the Combat Task Briefing I##21749
accept Target: Hive'Ashi Defenders##8770
|only if itemcount(21749) >= 1 or havequest(8770)
step
use the Combat Task Briefing II##21750
accept Target: Hive'Ashi Sandstalkers##8771
|only if itemcount(21750) >= 1 or havequest(8771)
step
use the Combat Task Briefing III##20942
accept Target: Hive'Ashi Workers##8502
|only if itemcount(20942) >= 1 or havequest(8502)
step
use the Combat Task Briefing IV##21248
accept Target: Hive'Zora Reavers##8773
|only if itemcount(21248) >= 1 or havequest(8773)
step
use the Combat Task Briefing V##21249
accept Target: Hive'Zora Hive Sisters##8539
|only if itemcount(21249) >= 1 or havequest(8539)
step
use the Combat Task Briefing VI##21250
accept Target: Hive'Zora Waywatchers##8772
|only if itemcount(21250) >= 1 or havequest(8772)
step
use the Combat Task Briefing VII##21251
accept Target: Hive'Zora Tunnelers##8687
|only if itemcount(21251) >= 1 or havequest(8687)
step
use the Combat Task Briefing VIII##21252
accept Target: Hive'Regal Ambushers##8774
|only if itemcount(21252) >= 1 or havequest(8774)
step
use the Combat Task Briefing IX##21253
accept Target: Hive'Regal Spitfires##8775
|only if itemcount(21253) >= 1 or havequest(8775)
step
use the Combat Task Briefing X##21255
accept Target: Hive'Regal Slavemakers##8776
|only if itemcount(21255) >= 1 or havequest(8776)
step
use the Combat Task Briefing XI##21256
accept Target: Hive'Regal Burrowers##8777
|only if itemcount(21256) >= 1 or havequest(8777)
step
use the Combat Task Briefing XII##20941
accept Target: Hive'Ashi Stingers##8501
|only if itemcount(20941) >= 1 or havequest(8501)
stickystart "Kill_30_Hive'Ashi_Sandstalkers"
stickystart "Kill_30_Hive'Ashi_Workers"
stickystart "Kill_30_Hive'Zora_Reavers"
stickystart "Kill_30_Hive'Zora_Hive_Sisters"
stickystart "Kill_30_Hive'Zora_Waywatchers"
stickystart "Kill_30_Hive'Zora_Tunnelers"
stickystart "Kill_30_Hive'Regal_Ambushers"
stickystart "Kill_30_Hive'Regal_Spitfires"
stickystart "Kill_30_Hive'Regal_Slavemakers"
stickystart "Kill_30_Hive'Regal_Burrowers"
stickystart "Kill_30_Hive'Ashi_Stingers"
step
kill 30 Hive'Ashi Defender##11722 |q 8770/1 |goto 45.06,25.78
|tip These enemies are elite and may require a group to kill.
|only if havequest(8770)
step
label "Kill_30_Hive'Ashi_Sandstalkers"
kill 30 Hive'Ashi Sandstalker##11723 |q 8771/1  |goto 45.06,25.78
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They are stealthed all over the hive.
|only if havequest(8771)
step
label "Kill_30_Hive'Ashi_Workers"
kill 30 Hive'Ashi Worker##11721 |q 8502/1 |goto 45.06,25.78
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8502)
step
label "Kill_30_Hive'Zora_Reavers"
kill 30 Hive'Zora Reaver##11728 |q 8773/1 |goto 25.15,59.72
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8773)
step
label "Kill_30_Hive'Zora_Hive_Sisters"
kill 30 Hive'Zora Hive Sister##11729 |q 8539/1 |goto 25.15,59.72
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8539)
step
label "Kill_30_Hive'Zora_Waywatchers"
kill 30 Hive'Zora Waywatcher##11725 |q 8772/1 |goto 25.15,59.72
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8772)
step
label "Kill_30_Hive'Zora_Tunnelers"
kill 30 Hive'Zora Tunneler##11726 |q 8687/1 |goto 25.20,55.37
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They only spawn inside the hive.
|only if havequest(8687)
step
label "Kill_30_Hive'Regal_Ambushers"
kill 30 Hive'Regal Ambusher##11730 |q 8774/1 |goto 57.57,80.69
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They are stealthed all over the hive.
|only if havequest(8774)
step
label "Kill_30_Hive'Regal_Spitfires"
kill 30 Hive'Regal Spitfire##11732 |q 8775/1 |goto 57.57,80.69
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8775)
step
label "Kill_30_Hive'Regal_Slavemakers"
kill 30 Hive'Regal Slavemaker##11733 |q 8776/1 |goto 57.57,80.69
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8776)
step
label "Kill_30_Hive'Regal_Burrowers"
kill 30 Hive'Regal Burrower##11731 |q 8777/1 |goto 62.05,80.40
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They only spawn inside the hive.
|only if havequest(8777)
step
label "Kill_30_Hive'Ashi_Stingers"
kill 30 Hive'Ashi Stinger##11698 |q 8501/1 |goto 47.91,26.31
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They only spawn inside the hive.
|only if havequest(8501)
step
talk Commander Mar'alith##15181
turnin Target: Hive'Ashi Defenders##8770 |goto 49.20,34.19 |only if havequest(8770)
turnin Target: Hive'Ashi Sandstalkers##8771 |goto 49.20,34.19 |only if havequest(8771)
turnin Target: Hive'Ashi Workers##8502 |goto 49.20,34.19 |only if havequest(8502)
turnin Target: Hive'Zora Reavers##8773 |goto 49.20,34.19 |only if havequest(8773)
turnin Target: Hive'Zora Hive Sisters##8539 |goto 49.20,34.19 |only if havequest(8539)
turnin Target: Hive'Zora Waywatchers##8772 |goto 49.20,34.19 |only if havequest(8772)
turnin Target: Hive'Zora Tunnelers##8687 |goto 49.20,34.19 |only if havequest(8687)
turnin Target: Hive'Regal Ambushers##8774 |goto 49.20,34.19 |only if havequest(8774)
turnin Target: Hive'Regal Spitfires##8775 |goto 49.20,34.19 |only if havequest(8775)
turnin Target: Hive'Regal Slavemakers##8776 |goto 49.20,34.19 |only if havequest(8776)
turnin Target: Hive'Regal Burrowers##8777 |goto 49.20,34.19 |only if havequest(8777)
turnin Target: Hive'Ashi Stingers##8501 |goto 49.20,34.19 |only if havequest(8501)
'|condition not haveanyquest(8770,8771,8502,8773,8539,8772,8687,8774,8775,8776,8777,8501) |next "Accept_Field_Duty"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Field Duty Tactical Assignments",{
author="support@zygorguides.com",
description="This guide will walk you through completing various tactical assignments for the Cenarion Circle.",
},[[
step
label "Accept_Field_Duty"
talk Windcaller Kaldon##15540
accept Field Duty##8731 |goto Silithus 49.98,36.34
step
use the Unsigned Field Duty Papers##21143
collect 1 Prepared Field Duty Papers##23024 |q 8507
step
talk Krug Skullsplit##15612
accept Field Duty Papers##8732 |goto 52.21,68.43
step
collect 1 Signed Field Duty Papers##20810 |q 8507/1
step
talk Windcaller Kaldon##15540
|tip Choose a tactical assignment.
|tip Tactical Assignments require you to fight Twilight Hammer elementals or collect reports from Silithus hives.
turnin Field Duty##8507 |goto 49.98,36.34
step
label "Begin_Tactical_Assignment"
use the Tactical Assignment##20809
Open the Tactical Assignment |condition itemcount(20809) == 0
step
use the Tactical Task Briefing I##21245
accept Azure Templar##8737
|only if itemcount(21245) >= 1 or havequest(8737)
step
use the Tactical Task Briefing III##21751
accept Earthen Templar##8536
|only if itemcount(21751) >= 1 or havequest(8536)
step
use the Tactical Task Briefing VI##21165
accept Hive'Zora Scout Report##8534
|only if itemcount(21165) >= 1 or havequest(8534)
step
use the Tactical Task Briefing VII##21166
accept Hive'Regal Scout Report##8738
|only if itemcount(21166) >= 1 or havequest(8738)
step
use the Tactical Task Briefing IX##20944
accept Twilight Marauders##8740
|only if itemcount(20944) >= 1 or havequest(8740)
step
kill Azure Templar##15211 |q 8737/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8737)
step
kill Earthen Templar##15307 |q 8536/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8536)
step
Enter the cave |goto 25.37,55.22 < 20 |walk
Follow the path |goto 26.51,56.73 < 10 |walk
Follow the path down |goto 25.56,61.87 < 10 |walk
talk Cenarion Scout Azenel##15610
Tell her _"I'm here to retrieve your report."_
collect Hive'Zora Scout Report##21158 |q 8534/1 |goto 23.63,62.43
|only if havequest(8534)
step
Enter the cave |goto 54.88,88.05 < 20 |walk
Follow the path down |goto 53.57,88.96 < 10 |walk
Follow the path down |goto 53.12,93.24 < 10 |walk
talk Cenarion Scout Landion##15609
Tell him _"I'm here to retrieve your report."_
collect Hive'Regal Scout Report##21160 |q 8738/1 |goto 53.71,97.48
|only if havequest(8738)
stickystart "Kill_Twilight_Marauders"
step
kill Twilight Marauder Morna##15541 |q 8740/1
She can also spawn at:
[38.81,78.19]
[23.63,45.32]
|only if havequest(8740)
step
label "Kill_Twilight_Marauders"
kill 5 Twilight Marauder##15542 |q 8740/2 |goto 68.76,35.99
|tip They spawn with Twilight Marauder Morna.
They can also spawn at: |notinsticky
[38.81,78.19] |notinsticky
[23.63,45.32] |notinsticky
|only if havequest(8740)
step
talk Bor Wildmane##15306
turnin Azure Templar##8737 |goto 48.57,37.78 |only if havequest(8737) |next "Open_Followup_Tactical_Assignment"
turnin Earthen Templar##8536 |goto 48.57,37.78 |only if havequest(8536) |next "Open_Followup_Tactical_Assignment"
|only if haveanyquest(8737,8536)
step
talk Windcaller Proudhorn##15191
turnin Hive'Zora Scout Report##8534 |goto 51.15,38.29 |only if havequest(8534) |next "Open_Followup_Tactical_Assignment"
turnin Hive'Regal Scout Report##8738 |goto 51.15,38.29 |only if havequest(8738) |next "Open_Followup_Tactical_Assignment"
turnin Twilight Marauders##8740 |goto 51.15,38.29 |only if havequest(8740) |next "Open_Followup_Tactical_Assignment"
|only if haveanyquest(8534,8738,8740)
step
label "Open_Followup_Tactical_Assignment"
use the Followup Tactical Assignment##21133
Open the Followup Tactical Assignment |condition itemcount(21133) == 0
step
use the Tactical Task Briefing II##20945
accept Crimson Templar##8537
|only if itemcount(20945) >= 1 or havequest(8537)
step
use the Tactical Task Briefing IV##20947
accept Hoary Templar##8535
|only if itemcount(20947) >= 1 or havequest(8535)
step
use the Tactical Task Briefing V##20948
accept The Four Dukes##8538
|only if itemcount(20948) >= 1 or havequest(8538)
step
use the Tactical Task Briefing VIII##21167
accept Hive'Ashi Scout Report##8739
|only if itemcount(21167) >= 1 or havequest(8739)
step
use the Tactical Task Briefing X##20943
accept Twilight Battle Orders##8498
|only if itemcount(20943) >= 1 or havequest(8498)
step
kill Crimson Templar##15209 |q 8537/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8537)
step
kill Hoary Templar##15212 |q 8535/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8535)
stickystart "Kill_The_Duke_of_Fathoms"
stickystart "Kill_The_Duke_of_Zephyrs"
stickystart "Kill_The_Duke_of_Shards"
step
kill The Duke of Cynders##15206 |q 8538/1 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group.
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke.
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold.
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone.
|tip The duke is random, so you may need to do this more than one time.
|only if havequest(8538)
step
label "Kill_The_Duke_of_Fathoms"
kill The Duke of Fathoms##15207 |q 8538/2 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group. |notinsticky
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. |notinsticky
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. |notinsticky
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. |notinsticky
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. |notinsticky
|tip The duke is random, so you may need to do this more than one time. |notinsticky
|only if havequest(8538)
step
label "Kill_The_Duke_of_Zephyrs"
kill The Duke of Zephyrs##15220 |q 8538/3 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group. |notinsticky
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. |notinsticky
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. |notinsticky
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. |notinsticky
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. |notinsticky
|tip The duke is random, so you may need to do this more than one time. |notinsticky
|only if havequest(8538)
step
label "Kill_The_Duke_of_Shards"
kill The Duke of Shards##15208 |q 8538/4 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group. |notinsticky
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. |notinsticky
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. |notinsticky
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. |notinsticky
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. |notinsticky
|tip The duke is random, so you may need to do this more than one time. |notinsticky
|only if havequest(8538)
step
Enter the cave |goto 43.95,16.03 < 20 |walk
talk Cenarion Scout Jalia##15611
|tip She is stealthed.
Tell her _"I'm here to retrieve your report."_
collect Hive'Ashi Scout Report##21161 |q 8739/1 |goto 43.94,13.81
|only if havequest(8739)
step
kill Twilight Prophet##15308
|tip She patrols in and between the points indicated with a group of bodyguards.
|tip You may need to search around for her, especially during peak hours.
|tip She is elite, so you may need a group.
collect Twilight Battle Orders##20803 |q 8498/1 |goto 39.29,42.97
You can also find her here:
[25.95,34.98]
[19.15,83.78]
|only if havequest(8498)
step
talk Bor Wildmane##15306
turnin Crimson Templar##8537 |goto 48.57,37.78 |only if havequest(8537)
turnin Hoary Templar##8535 |goto 48.57,37.78 |only if havequest(8535)
|only if haveanyquest(8537,8535)
step
talk Commander Mar'alith##15181
turnin The Four Dukes##8538 |goto 49.20,34.19 |only if havequest(8538)
turnin Twilight Battle Orders##8498 |goto 49.20,34.19 |only if havequest(8498)
|only if haveanyquest(8538,8498)
step
talk Windcaller Proudhorn##15191
turnin Hive'Ashi Scout Report##8739 |goto 51.15,38.29
|only if havequest(8739)
step
collect 1 Tactical Assignment##20809 |next "Begin_Tactical_Assignment"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Field Duty Logistics Assignments",{
author="support@zygorguides.com",
description="This guide will walk you through completing various logistics assignments for the Cenarion Circle.",
},[[
step
label "Accept_Field_Duty"
talk Windcaller Kaldon##15540
accept Field Duty##8731 |goto Silithus 49.98,36.34
step
use the Unsigned Field Duty Papers##21143
collect 1 Prepared Field Duty Papers##23024 |q 8507
step
talk Krug Skullsplit##15612
accept Field Duty Papers##8732 |goto 52.21,68.43
step
collect 1 Signed Field Duty Papers##20810 |q 8507/1
step
talk Windcaller Kaldon##15540
|tip Choose a logistics assignment.
|tip Logistics Assignments require you to donate various materials to the Cenarion effort.
turnin Field Duty##8507 |goto 49.98,36.34
step
label "Begin_Logistics_Assignment"
use the Logistics Assignment##21266
Open the Logistics Assignment |condition itemcount(21266) == 0
step
use the Logistics Task Briefing IV##21258
accept The Orgrimmar Legion Needs Mojo!##8785
|only if itemcount(21258) >= 1 or havequest(8785)
step
use the Logistics Task Briefing V##21382
accept Scrying Materials##8807
|only if itemcount(21382) >= 1 or havequest(8807)
step
use the Logistics Task Briefing VI##21261
accept Arms for the Field##8786
|only if itemcount(21261) >= 1 or havequest(8786)
step
use the Logistics Task Briefing VII##21264
accept Armor Kits for the Field##8787
|only if itemcount(21264) >= 1 or havequest(8787)
step
use the Logistics Task Briefing X##21385
accept Bandages for the Field##8810
|only if itemcount(21385) >= 1 or havequest(8810)
stickystart "Collect_6_Flask_of_Big_Mojo"
stickystart "Collect_6_Powerful_Mojo"
step
collect 8 Oil of Immolation##8956 |q 8785/1
|tip Craft them with Alchemy or purchase them from the Auction House.
|tip Each one requires 1 Firebloom, 1 Goldthorn, and 1 Crystal Vial to create.
|only if havequest(8785)
step
label "Collect_6_Flask_of_Big_Mojo"
Kill Vilebranch enemies around this area
collect 6 Flask of Big Mojo##8152 |q 8785/2 |goto The Hinterlands 66.48,68.75
|tip You can also purchase them from the Auction House.
|only if havequest(8785)
step
label "Collect_6_Powerful_Mojo"
Follow the path up |goto Eastern Plaguelands 64.10,24.02 < 40 |only if walking
Kill Mossflayer enemies around this area
collect 6 Powerful Mojo##15992 |q 8785/3 |goto 69.72,17.80
|tip You can also purchase them from the Auction House.
|only if havequest(8785)
stickystart "Collect_1_Large_Radiant_Shard"
stickystart "Collect_1_Huge_Emerald"
step
collect 1 Large Brilliant Shard##14344 |q 8807/1
|tip Disenchant item level 56-65 rare items or purchase it from the Auction House.
|tip Blackrock Depths and Dire Maul are good sources for these items.
|only if havequest(8807)
step
label "Collect_1_Large_Radiant_Shard"
collect 1 Large Radiant Shard##11178 |q 8807/2
|tip Disenchant item level 46-50 rare items or purchase it from the Auction House.
|tip Zul'Farrak, Dire Maul, and Stratholme are good sources for these items.
|only if havequest(8807)
step
label "Collect_1_Huge_Emerald"
collect 1 Huge Emerald##12364 |q 8807/3
|tip Gather it with Mining or purchase it from the Auction House.
|tip It can be mined from any type of Thorium vein.
|only if havequest(8807)
step
collect 2 Massive Iron Axe##3855 |q 8786/1
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 14 Iron Bars, 2 Strong Flux, 2 Heavy Grinding Stones, 4 Gold Bars, and 2 Heavy Leather to create.
|only if havequest(8786)
stickystart "Collect_8_Heavy_Armor_Kits"
step
collect 8 Rugged Armor Kit##15564 |q 8787/1
|tip Craft them with Leatherworking or purchase them from the Auction House.
|tip Each one requires 5 Rugged Leather to create.
|only if havequest(8787)
step
label "Collect_8_Heavy_Armor_Kits"
collect 8 Heavy Armor Kit##4265 |q 8787/2
|tip Craft them with Leatherworking or purchase them from the Auction House.
|tip Each one requires 5 Heavy Leather and 1 Fine Thread to create.
|only if havequest(8787)
stickystart "Collect_30_Heavy_Mageweave_Bandage"
stickystart "Collect_30_Heavy_Silk_Bandage"
step
collect 30 Heavy Runecloth Bandage##14530 |q 8810/1
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 2 Runecloth to create.
|only if havequest(8810)
step
label "Collect_30_Heavy_Mageweave_Bandage"
collect 30 Heavy Mageweave Bandage##8545 |q 8810/2
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 2 Mageweave Cloth to create.
|only if havequest(8810)
step
label "Collect_30_Heavy_Silk_Bandage"
collect 30 Heavy Silk Bandage##6451 |q 8810/3
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 2 Silk Cloth to create.
|only if havequest(8810)
step
talk Geologist Larksbane##15183
turnin Scrying Materials##8807 |goto Silithus 49.67,37.35 |next "Open_Followup_Logistics_Assignment"
|only if havequest(8807)
step
talk Windcaller Proudhorn##15191
turnin Bandages for the Field##8810 |goto 51.15,38.29 |next "Open_Followup_Logistics_Assignment"
|only if havequest(8810)
step
talk Shadow Priestess Shai##15615
turnin The Orgrimmar Legion Needs Mojo!##8785 |goto 51.34,68.81 |next "Open_Followup_Logistics_Assignment"
|only if havequest(8785)
step
talk Merok Longstride##15613
turnin Arms for the Field##8786 |goto 51.85,67.96 |next "Open_Followup_Logistics_Assignment" |only if havequest(8786)
turnin Armor Kits for the Field##8787 |goto 51.85,67.96 |next "Open_Followup_Logistics_Assignment" |only if havequest(8787)
|only if haveanyquest(8786,8787)
step
label "Open_Followup_Logistics_Assignment"
use the Followup Logistics Assignment##21386
Open the Followup Logistics Assignment |condition itemcount(21386) == 0
step
use the Logistics Task Briefing I##21378
accept Desert Survival Kits##8804
|only if itemcount(21378) >= 1 or havequest(8804)
step
use the Logistics Task Briefing II##21379
accept Boots for the Guard##8805
|only if itemcount(21379) >= 1 or havequest(8805)
step
use the Logistics Task Briefing III##21380
accept Grinding Stones for the Guard##8806
|only if itemcount(21380) >= 1 or havequest(8806)
step
use the Logistics Task Briefing VIII##21384
accept Uniform Supplies##8808
|only if itemcount(21384) >= 1 or havequest(8808)
step
use the Logistics Task Briefing IX##21381
accept Extraordinary Materials##8809
|only if itemcount(21381) >= 1 or havequest(8809)
step
use the Logistics Task Briefing XI##21514
accept The Ultimate Deception##8829
|only if itemcount(21514) >= 1 or havequest(8829)
step
collect 3 Ornate Mithril Boots##7936 |q 8805/1
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 14 Mithril Bars, 2 Truesilver Bars, 4 Thick Leather, 1 Solid Grinding Stone, and 1 Aquamarine to create.
|only if havequest(8805)
stickystart "Collect_Powerful_Anti-Venom"
stickystart "Collect_Smoked_Desert_Dumplings"
step
kill Toxic Horror##7132+
collect 4 Globe of Water##7079 |q 8804/1 |goto Felwood 48.75,24.16
|tip You can also purchase these from the Auction House.
|only if havequest(8804)
step
label "Collect_Powerful_Anti-Venom"
collect 4 Powerful Anti-Venom##19440 |q 8804/2
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 1 Huge Venom Sac to create.
|only if havequest(8804)
step
label "Collect_Smoked_Desert_Dumplings"
collect 4 Smoked Desert Dumplings##20452 |q 8804/3
|tip Craft them with Cooking or purchase them from the Auction House.
|tip Each one requires 1 Sandworm Meat and 1 Soothing Spices to create.
|only if havequest(8804)
stickystart "Collect_Solid_Grinding_Stone"
stickystart "Collect_Heavy_Grinding_Stone"
step
collect 10 Dense Grinding Stone##12644 |q 8806/1
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 4 Dense Stone to create.
|only if havequest(8806)
step
label "Collect_Solid_Grinding_Stone"
collect 10 Solid Grinding Stone##7966 |q 8806/2
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 4 Solid Stone to create.
|only if havequest(8806)
step
label "Collect_Heavy_Grinding_Stone"
collect 10 Heavy Grinding Stone##3486 |q 8806/3
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 3 Heavy Stone to create.
|only if havequest(8806)
stickystart "Collect_Bolt_of_Runecloth"
stickystart "Collect_Ironweb_Spider_Silk"
step
collect 1 Mooncloth##14342 |q 8808/1
|tip Craft it with Tailoring or purchase it from the Auction House.
|tip It requires 2 Felcloth and a daily Tailoring cooldown to create.
|only if havequest(8808)
step
label "Collect_Bolt_of_Runecloth"
collect 2 Bolt of Runecloth##14048 |q 8808/2
|tip Craft them with Tailoring or purchase them from the Auction House.
|tip Each one requires 5 Runecloth to create.
|only if havequest(8808)
step
label "Collect_Ironweb_Spider_Silk"
kill Plague Lurker##1824+
collect 1 Ironweb Spider Silk##14227 |q 8808/3 |goto Western Plaguelands 62.20,49.48
|tip You can also purchase it from the Auction House.
|only if havequest(8808)
stickystart "Collect_Enchanted_Leather"
step
collect 10 Enchanted Thorium Bar##12655 |q 8809/1
|tip Craft them with Enchanting or purchase them from the Auction House.
|tip Each one requires 1 Thorium Bar and 3 Dream Dust to create.
|only if havequest(8809)
step
label "Collect_Enchanted_Leather"
collect 10 Solid Grinding Stone##12810 |q 8809/2
|tip Craft them with Enchanting or purchase them from the Auction House.
|tip Each one requires 1 Rugged Leather and 1 Lesser Eternal Essence to create.
|only if havequest(8809)
stickystart "Collect_Frayed_Abomination_Stitching"
stickystart "Collect_Twilight_Cultist_Robe"
step
collect 1 Skin of Shadow##12753 |q 8829/1
|tip This has a chance to drop from Risen Bonewarders and Risen Constructs in the Scholomance dungeon.
|only if havequest(8829)
step
label "Collect_Frayed_Abomination_Stitching"
collect 3 Frayed Abomination Stitching##12735 |q 8829/2
|tip These drop from Abomination enemies as well as Ramstein the Gorger in the Undead Stratholme dungeon.
|only if havequest(8829)
step
label "Collect_Twilight_Cultist_Robe"
Kill Twilight enemies around this area
collect 1 Twilight Cultist Robe##20407 |q 8829/3 |goto Silithus 38.64,44.97
|tip You can also purchase it from the Auction House.
|only if havequest(8829)
step
talk Calandrath##15174
|tip Inside the building.
turnin Desert Survival Kits##8804 |goto 51.87,39.14
|only if havequest(8804)
step
talk Vish Kozus##15182
|tip At the top of the tower.
turnin Grinding Stones for the Guard##8806 |goto 50.75,33.65 |only if havequest(8806)
turnin Boots for the Guard##8805 |goto 50.75,33.65 |only if havequest(8805)
|only if haveanyquest(8806,8805)
step
talk Windcaller Proudhorn##15191
turnin Uniform Supplies##8808 |goto 51.15,38.29
|only if havequest(8808)
step
talk Vargus##15176
turnin Extraordinary Materials##8809 |goto 51.23,38.86
|only if havequest(8809)
step
talk Aurel Goldleaf##15282
turnin The Ultimate Deception##8829 |goto 51.96,38.15
|only if havequest(8829)
step
collect 1 Logistics Assignment##21266 |next "Begin_Logistics_Assignment"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Silverpine Forest",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Silverpine Forest",
condition_suggested=function() return level >= 18 and level <= 21 and not completedq(516) end,
},[[
stickystart "Collect_Discolored_Worg_Hearts"
step
Enter Silverpine Forest |goto Silverpine Forest 67.40,5.82 < 30 |only if walking
Follow the path |goto Silverpine Forest 61.48,10.78 < 30 |only if walking
Enter the building |goto Silverpine Forest 56.30,9.25 < 7 |walk
talk Deathstalker Erland##1978
|tip Inside the building.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Escorting Erland##435 |goto Silverpine Forest 56.19,9.18 |noautoaccept
step
Watch the dialogue
|tip Follow Deathstalker Erland and protect him as he walks.
|tip He eventually walks to this location.
Erland Must Reach Rane Yorick |q 435/1 |goto 54.30,13.43
step
talk Rane Yorick##1950
turnin Escorting Erland##435 |goto 53.46,13.43
accept The Deathstalkers' Report##449 |goto 53.46,13.43
step
label "Collect_Discolored_Worg_Hearts"
Kill Worg enemies around this area
|tip They look like black wolves.
collect 6 Discolored Worg Heart##3164 |goto 57.05,11.75 |q 429 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[60.92,11.16]
[65.26,8.37]
step
Follow the road |goto 54.84,16.67 < 30 |only if walking
Cross the bridge |goto 49.77,28.76 < 15 |only if walking
Follow the road |goto 50.97,36.80 < 30 |only if walking
talk Karos Razok##2226
fpath The Sepulcher |goto 45.62,42.60
step
talk Dalar Dawnweaver##1938
|tip He walks around this area.
accept Prove Your Worth##421 |goto 44.20,39.78
step
talk Shadow Priest Allister##2121
accept Border Crossings##477 |goto 43.98,40.93
step
talk Innkeeper Bates##6739
home The Sepulcher |goto 43.18,41.28 |q 516 |future
step
talk Deathguard Podrig##6389
accept Supplying the Sepulcher##6321 |goto 43.43,41.68
|only if Scourge
step
talk Apothecary Renferrel##1937
turnin Delivery to Silverpine Forest##445 |goto 42.80,40.87 |only if Scourge
accept A Recipe For Death##447 |goto 42.80,40.87
step
Enter the crypt |goto 43.09,41.39 < 7 |walk
talk High Executor Hadrec##1952
|tip Downstairs inside the crypt.
turnin The Deathstalkers' Report##449 |goto 43.43,40.87
accept Speak with Renferrel##3221 |goto 43.43,40.87
accept Lost Deathstalkers##428 |goto 43.43,40.87
accept The Dead Fields##437 |goto 43.43,40.87
step
Run up the stairs |goto 42.70,40.97 < 5 |walk
Leave the crypt |goto 43.10,41.38 < 5 |c |q 3221
step
talk Apothecary Renferrel##1937
turnin Speak with Renferrel##3221 |goto 42.80,40.87
accept Zinge's Delivery##1359 |goto 42.80,40.87
step
talk Karos Razok##2226
turnin Supplying the Sepulcher##6321 |goto 45.62,42.60
accept Ride to the Undercity##6323 |goto 45.62,42.60
|only if Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity 61.49,41.80
accept Michael Garrett##6322 |goto Undercity 61.49,41.80
|only if Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto 63.26,48.56
accept Return to Podrig##6324 |goto 63.26,48.56
|only if Scourge
step
talk Deathguard Podrig##6389
turnin Return to Podrig##6324 |goto Silverpine Forest 43.42,41.68
|only if Scourge
stickystart "Collect_Grizzled_Bear_Hearts"
step
Follow the road |goto Silverpine Forest 46.30,41.43 < 20 |only if walking
kill 5 Moonrage Whitescalp##1769 |q 421/1 |goto Silverpine Forest 49.54,35.83
You can find more around: |notinsticky
[Silverpine Forest 50.87,41.75]
[Silverpine Forest 53.89,39.63]
[Silverpine Forest 54.54,43.80]
[Silverpine Forest 52.26,47.97]
step
label "Collect_Grizzled_Bear_Hearts"
kill Ferocious Grizzled Bear##1778+
collect 6 Grizzled Bear Heart##3253 |q 447/1 |goto 49.54,35.83
You can find more around: |notinsticky
[50.87,41.75]
[53.89,39.63]
[54.54,43.80]
[52.26,47.97]
step
Follow the road |goto 48.11,39.05 < 30 |only if walking
Follow the path |goto 46.22,41.49 < 20 |only if walking
talk Dalar Dawnweaver##1938
|tip He walks around this area.
turnin Prove Your Worth##421 |goto 44.20,39.78
accept Arugal's Folly##422 |goto 44.20,39.78
step
Follow the road |goto 46.29,41.44 < 20 |only if walking
Cross the bridge |goto 49.74,30.06 < 15 |only if walking
Enter the building |goto 52.81,27.80 < 7 |walk
click Dusty Spellbooks
|tip Upstairs inside the building.
|tip You will be attacked after you loot it.
collect Remedy of Arugal##3155 |q 422/1 |goto 52.82,28.58
step
Leave the building |goto 52.81,27.80 < 7 |walk
Follow the road |goto 51.14,24.36 < 30 |only if walking
talk Rane Yorick##1950
|tip She may be fighting nearby.
turnin Lost Deathstalkers##428 |goto 53.46,13.42
accept Wild Hearts##429 |goto 53.46,13.42
stickystart "Collect_Essence_Of_Nightlash"
step
Enter the Dead Fields |q 437/2 |goto 45.44,21.01
step
label "Collect_Essence_Of_Nightlash"
Kill Rot Hide enemies around this area
kill Nightlash##1983
|tip She will eventually spawn at this location, once you've killed enough Rot Hide enemies.
collect Essence of Nightlash##3622 |q 437/1 |goto 45.44,21.01
step
kill Moss Stalker##1780+
|tip Inside and outside the mine.
|tip Be careful of the elite worgen that walks around this area.
collect 6 Skittering Blood##3254 |q 447/2 |goto 35.65,13.58
step
talk Apothecary Renferrel##1937
turnin Wild Hearts##429 |goto 42.80,40.86
accept Return to Quinn##430 |goto 42.80,40.86
step
Enter the crypt |goto 43.09,41.39 < 7 |walk
talk High Executor Hadrec##1952
|tip Downstairs inside the crypt.
turnin The Dead Fields##437 |goto 43.43,40.87
accept The Decrepit Ferry##438 |goto 43.43,40.87
step
Run up the stairs |goto 42.70,40.97 < 5 |walk
Leave the crypt |goto 43.10,41.38 < 5 |walk
talk Dalar Dawnweaver##1938
|tip He walks around this area.
turnin Arugal's Folly##422 |goto 44.20,39.78
accept Arugal's Folly##423 |goto 44.20,39.78
step
Follow the path down |goto Undercity 52.84,77.62 < 7 |walk
talk Master Apothecary Faranell##2055
turnin A Recipe For Death##447 |goto Undercity 48.82,69.29
step
talk Apothecary Zinge##5204
turnin Zinge's Delivery##1359 |goto 50.13,67.99
accept Sample for Helbrim##1358 |goto 50.13,67.99
step
Follow the road |goto Silverpine Forest 46.22,41.49 < 20 |only if walking
Continue following the road |goto Silverpine Forest 51.33,36.98 < 30 |only if walking
Follow the path |goto Silverpine Forest 52.57,54.58 < 30 |only if walking
click Dalaran Crate
turnin Border Crossings##477 |goto Silverpine Forest 49.91,60.32
accept Maps and Runes##478 |goto Silverpine Forest 49.91,60.32
step
Follow the road |goto 52.34,53.55 < 30 |only if walking
Follow the path |goto 52.94,40.60 < 30 |only if walking
click Corpse Laden Boat
turnin The Decrepit Ferry##438 |goto 58.39,34.84
accept Rot Hide Clues##439 |goto 58.39,34.84
step
Follow the road |goto 50.40,34.67 < 20 |only if walking
Cross the bridge |goto 49.75,30.06 < 15 |only if walking
Enter the building |goto 53.40,13.27 < 7 |walk
talk Quinn Yorick##1951
|tip Upstairs inside the building.
turnin Return to Quinn##430 |goto 53.43,12.59
step
Leave the building |goto 53.40,13.27 < 7 |walk
talk Rane Yorick##1950
accept Ivar the Foul##425 |goto 53.46,13.43
step
Enter the building |goto 52.00,14.07 < 7 |walk
kill Ivar the Foul##1971
|tip Inside the building.
collect Ivar's Head##3621 |q 425/1 |goto 51.53,13.91
step
Leave the building |goto 52.00,14.07 < 7 |walk
talk Rane Yorick##1950
turnin Ivar the Foul##425 |goto 53.46,13.43
stickystart "Collect_Glutton_Shackles"
step
Follow the road |goto 54.25,17.88 < 30 |only if walking
Follow the path |goto 51.66,22.55 < 30 |only if walking
kill Moonrage Darksoul##1782+
|tip Be careful of the elite worgen that walks around this area.
collect 3 Darksoul Shackle##3157 |q 423/2 |goto 45.98,28.13
You can find more around: |notinsticky
[41.39,29.68]
[38.63,24.59]
step
label "Collect_Glutton_Shackles"
kill Moonrage Glutton##1779+
|tip Be careful of the elite worgen that walks around this area.
collect 6 Glutton Shackle##3156 |q 423/1 |goto 45.98,28.13
You can find more around: |notinsticky
[41.39,29.68]
[38.63,24.59]
step
Enter the crypt |goto Silverpine Forest 43.08,41.39 < 5 |walk
talk High Executor Hadrec##1952
|tip Downstairs inside the crypt.
turnin Rot Hide Clues##439 |goto Silverpine Forest 43.43,40.87
accept The Engraved Ring##440 |goto Silverpine Forest 43.43,40.87
step
Run up the stairs |goto 42.72,40.91 < 5 |walk
Leave the crypt |goto 43.09,41.38 < 5 |walk
talk Shadow Priest Allister##2121
turnin Maps and Runes##478 |goto 43.98,40.93
accept Dalar's Analysis##481 |goto 43.98,40.93
step
talk Dalar Dawnweaver##1938
|tip He walks around this area.
turnin Arugal's Folly##423 |goto 44.19,39.78
accept Arugal's Folly##424 |goto 44.19,39.78
turnin Dalar's Analysis##481 |goto 44.19,39.78
accept Dalaran's Intentions##482 |goto 44.19,39.78
step
talk Shadow Priest Allister##2121
turnin Dalaran's Intentions##482 |goto 43.98,40.93
accept Ambermill Investigations##479 |goto 43.98,40.93
step
Follow the road |goto 46.24,41.51 < 20 |only if walking
Continue following the road |goto 51.43,37.17 < 30 |only if walking
Follow the path |goto 54.47,48.06 < 15 |only if walking
Follow the path up |goto 55.82,48.47 < 15 |only if walking
Enter the mine |goto 56.54,46.01 < 7 |walk
kill Grimson the Pale##1972
|tip Inside the mine.
collect Head of Grimson##3634 |q 424/1 |goto 58.58,44.85
step
Leave the mine |goto 56.54,46.01 < 7 |walk
Follow the road |goto 53.00,56.46 < 30 |only if walking
Follow the path |goto 54.06,61.14 < 30 |only if walking
Kill Dalaran enemies around this area
collect 8 Dalaran Pendant##3354 |q 479/1 |goto 59.13,64.34
step
Follow the road |goto 53.51,59.48 < 30 |only if walking
Continue following the road |goto 49.38,38.02 < 30 |only if walking
Follow the path |goto 46.26,41.52 < 20 |only if walking
talk Dalar Dawnweaver##1938
|tip He walks around this area.
turnin Arugal's Folly##424 |goto 44.19,39.78
step
talk Shadow Priest Allister##2121
turnin Ambermill Investigations##479 |goto 43.98,40.94
step
Enter the building |goto Tirisfal Glades 60.90,51.51 < 7 |walk
talk Magistrate Sevren##1499
|tip Inside the building.
turnin The Engraved Ring##440 |goto Tirisfal Glades 61.26,50.85
accept Raleigh and the Undercity##441 |goto Tirisfal Glades 61.26,50.85
step
Leave the building |goto 60.90,51.51 < 7 |walk
Enter the cave |goto Thunder Bluff 29.84,29.88 < 7 |walk
talk Clarice Foster##5543
|tip She walks around this area inside the cave.
accept Until Death Do Us Part##264 |goto Thunder Bluff 24.72,22.30
step
Leave the cave |goto 29.84,29.88 < 7 |walk
talk Raleigh Andrean##2050
turnin Raleigh and the Undercity##441 |goto Undercity 61.99,42.72
accept A Husband's Revenge##530 |goto Undercity 61.99,42.72
step
click Yuriv's Tombstone
turnin Until Death Do Us Part##264 |goto Silverpine Forest 44.20,42.69
step
Enter the crypt |goto 43.10,41.39 < 7 |walk
talk High Executor Hadrec##1952
|tip Downstairs inside the crypt.
accept Rot Hide Ichor##443 |goto 43.43,40.87
step
Run up the stairs |goto 42.71,40.95 < 5 |walk
Leave the crypt |goto 43.10,41.38 < 5 |walk
Follow the road |goto 46.32,41.47 < 20 |only if walking
Continue following the road |goto 52.86,43.74 < 30 |only if walking
kill Valdred Moray##2332
|tip He walks around this area.
collect Valdred's Hands##3613 |q 530/1 |goto 45.88,84.92
stickystart "Collect_Rot_Hide_Ichors"
step
Follow the path up |goto 51.95,72.25 < 20 |only if walking
Follow the road |goto 53.70,71.60 < 30 |only if walking
Continue following the road |goto 51.91,50.20 < 40 |only if walking
Follow the path |goto 55.16,38.10 < 30 |only if walking
Follow the path up |goto 64.59,32.37 < 20 |only if walking
Kill Rot Hide enemies around this area
collect A Talking Head##3317 |goto 68.31,35.72 |q 460 |future
You can find more around [65.74,30.02]
step
use A Talking Head##3317
accept Resting in Pieces##460
step
label "Collect_Rot_Hide_Ichors"
Kill Rot Hide enemies around this area
collect 8 Rot Hide Ichor##3236 |q 443/1 |goto 65.74,30.02
You can find more around [68.31,35.72]
step
Follow the path |goto 65.78,30.02 < 15 |only if walking
Continue following the path |goto 66.05,27.00 < 15 |only if walking
Continue following the path |goto 67.28,24.62 < 10 |only if walking
click A Shallow Grave
turnin Resting in Pieces##460 |goto 67.86,24.84
accept The Hidden Niche##461 |goto 67.86,24.84
step
Follow the path |goto 67.22,24.67 < 15 |only if walking
Enter the building |goto 65.74,24.98 < 10 |only if walking
Run up the stairs |goto 65.69,23.37 < 5 |only if walking
Run up the stairs |goto 65.33,23.31 < 5 |only if walking
click Dusty Shelf
|tip It looks like an empty wooden bookcase.
|tip On the roof of the building, in a side room.
turnin The Hidden Niche##461 |goto 65.34,24.81
accept Wand to Bethor##491 |goto 65.34,24.81
step
talk Apothecary Renferrel##1937
turnin Rot Hide Ichor##443 |goto 42.80,40.86
accept Rot Hide Origins##444 |goto 42.80,40.86
step
talk Raleigh Andrean##2050
turnin A Husband's Revenge##530 |goto Undercity 61.99,42.72
step
talk Bethor Iceshard##1498
|tip At the top of the stairs.
turnin Rot Hide Origins##444 |goto 84.09,17.47
turnin Wand to Bethor##491 |goto 84.09,17.47
step
talk Shadow Priest Allister##2121
accept Beren's Peril##516 |goto Silverpine Forest 43.98,40.93
step
talk Apothecary Renferrel##1937
accept Journey to Hillsbrad Foothills##493 |goto 42.80,40.87
stickystart "Kill_Ravenclaw_Guardians"
step
Follow the road |goto 46.46,41.31 < 20 |only if walking
Continue following the road |goto 52.93,42.41 < 30 |only if walking
Continue following the road |goto 54.93,75.62 < 30 |only if walking
Follow the path up |goto 60.35,74.70 < 10 |only if walking
Enter the cave |goto 60.44,72.37 < 10 |walk
kill 6 Ravenclaw Drudger##1974 |q 516/1 |goto 59.48,70.59
|tip Inside and outside the cave.
step
label "Kill_Ravenclaw_Guardians"
kill 6 Ravenclaw Guardian##1973 |q 516/2 |goto 59.48,70.59
|tip Inside the cave.
step
Leave the cave |goto 60.44,72.37 < 10 |walk
Follow the road |goto 58.88,77.75 < 30 |only if walking
Continue following the road |goto 53.71,72.61 < 30 |only if walking
Continue following the road |goto 51.91,50.20 < 30 |only if walking
Continue following the road |goto 50.83,37.00 < 50 |only if walking
talk Shadow Priest Allister##2121
turnin Beren's Peril##516 |goto 43.98,40.93
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Western Plaguelands",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Western Plaguelands",
},[[
step
talk Innkeeper Norman##6741
home Undercity |goto Undercity 67.73,37.89
step
talk Randolph Montague##2458
|tip Collect these items from the bank.
collect The Everlook Report##15788 |goto 65.97,43.12 |q 6029
collect Studies in Spirit Speaking##15790 |goto 65.97,43.12 |q 6030
collect 40 Felwood Slime Sample##12230 |goto 65.97,43.12 |q 4293
collect 40 Un'Goro Slime Sample##12235 |goto 65.97,43.12 |q 4294
step
talk Harbinger Balthazad##10879
|tip He walks around this area in the middle of Undercity.
|tip He's wearing holding a lantern, wearing a white shirt.
|tip He can also be in the ring hallway surrounding the center of Undercity.
accept A Call to Arms: The Plaguelands!##5094 |goto 63.81,44.07
step
Follow the path down |goto 52.91,77.53 < 7 |walk
click Testing Equipment
|tip It looks like a bowl with red liquid in it, on the table.
|tip Turn in the "Testing for Corruption - Felwood" quest.
collect Corrupt Tested Sample##15103 |n
use the Corrupt Tested Sample##15103
collect 5 Corrupted Felwood Sample##12234 |q 4293/1 |goto 47.85,73.45
|tip Keep repeating this process until you get all of these.
step
click Testing Equipment
|tip It looks like a bowl with green liquid in it, on the table.
|tip Turn in the "Testing for Impurities - Un'Goro Crater" quest.
collect Un'Goro Tested Sample##15102 |n
use the Un'Goro Tested Sample##15102
collect 5 Pure Un'Goro Sample##12236 |q 4294/1 |goto 47.74,73.55
|tip Keep repeating this process until you get all of these.
step
talk Chemist Fuely##10136
turnin A Sample of Slime...##4293 |goto 47.45,73.36
turnin ... and a Batch of Ooze##4294 |goto 47.45,73.36
accept Melding of Influences##4642 |goto 47.45,73.36
step
_Destroy These Items:_
|tip They are no longer needed.
trash Un'Goro Slime Sample##12235
trash Felwood Slime Sample##12230
step
talk Randolph Montague##2458
|tip Put these items in the bank.
collect Encased Corrupt Ooze##12288 |goto 65.97,43.12 |q 4642
step
talk Auctioneer Rhyker##15686
|tip Buy these items from the Auction House.
|tip If you can't get them, it's okay, but you will have to skip some quests later.
collect 2 Thorium Bar##12359 |goto 60.47,46.45 |q 6026 |future
collect Golden Rod##11128 |goto 60.47,46.45 |q 6026 |future
collect 8 Hi-Explosive Bomb##10562 |goto 60.47,46.45 |q 6026 |future
collect 8 Unstable Trigger##10560 |goto 60.47,46.45 |q 6026 |future
step
talk Mickey Levine##11615
accept A Plague Upon Thee##5901 |goto Tirisfal Glades 83.29,72.33
step
talk High Executor Derrington##10837
turnin A Call to Arms: The Plaguelands!##5094 |goto 83.13,68.93
accept Scarlet Diversions##5096 |goto 83.13,68.93
step
click Box of Incendiaries
collect Flame in a Bottle##12814 |goto 83.17,69.09 |q 5096
step
talk Argent Officer Garush##10839
turnin The Everlook Report##6029 |goto 83.19,68.45
accept Argent Dawn Commission##5503 |goto 83.19,68.45
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff 133440 |q 5402 |future
stickystart "Collect_Minions_Scourgestones"
stickystart "Collect_Bone_Fragments"
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto Western Plaguelands 38.40,54.05
step
Enter the building |goto 38.52,55.33 < 7 |walk
click Janice's Parcel
|tip Inside the building.
turnin Better Late Than Never##5021 |goto 38.73,55.24
accept Better Late Than Never##5023 |goto 38.73,55.24
step
click Command Tent
use the Scourge Banner##12807
Destroy the Command Tent and Plant the Scourge Banner in the Camp |q 5096/1 |goto 40.68,51.98
step
label "Collect_Minions_Scourgestones"
Kill enemies around this area
|tip Only undead enemies will drop the quest item.
collect 20 Minion's Scourgestone##12840 |goto 36.76,56.42 |q 9141 |future
step
label "Collect_Bone_Fragments"
Kill enemies around this area
|tip Only skeleton enemies will drop the quest item.
collect 30 Bone Fragments##22526 |goto 36.76,56.42 |q 9126 |future
step
talk High Executor Derrington##10837
turnin Scarlet Diversions##5096 |goto Tirisfal Glades 83.13,68.93
accept The Scourge Cauldrons##5228 |goto Tirisfal Glades 83.13,68.93
step
_Destroy This Item:_
|tip It is no longer needed.
trash Flame in a bottle##12814
step
talk Shadow Priestess Vandis##11055
turnin The Scourge Cauldrons##5228 |goto 83.03,71.91
accept Target: Felstone Field##5229 |goto 83.03,71.91
step
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5229/1 |goto Western Plaguelands 37.03,57.11
step
click Scourge Cauldron
turnin Target: Felstone Field##5229 |goto 37.19,56.87
accept Return to the Bulwark##5230 |goto 37.19,56.87
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5230 |goto Tirisfal Glades 83.04,71.91
accept Target: Dalson's Tears##5231 |goto Tirisfal Glades 83.04,71.91
step
kill Cauldron Lord Malvinious##11077
collect Dalson's Tears Cauldron Key##13195 |q 5231/1 |goto Western Plaguelands 46.18,52.38
step
click Scourge Cauldron
turnin Target: Dalson's Tears##5231 |goto 46.18,52.02
accept Return to the Bulwark##5232 |goto 46.18,52.02
step
Enter the building |goto 47.52,50.94 < 7 |walk
click Mrs. Dalson's Diary
|tip Inside the building.
accept Mrs. Dalson's Diary##5058 |goto 47.79,50.67
step
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the building.
collect Dalson Outhouse Key##12738 |goto 47.85,49.32 |q 5059 |future
step
click Outhouse
accept Locked Away##5059 |goto 48.11,49.71
|tip Farmer Dalson will appear and attack you.
step
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto 48.11,49.71 |q 5060 |future
step
Enter the building |goto 47.14,50.19 < 7 |walk
click Locked Cabinet
|tip Upstairs inside the building.
accept Locked Away##5060 |goto 47.37,49.65
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5232 |goto Tirisfal Glades 83.04,71.91
accept Target: Writhing Haunt##5233 |goto Tirisfal Glades 83.04,71.91
step
Enter the building |goto Western Plaguelands 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
accept The Wildlife Suffers Too##4984 |goto Western Plaguelands 53.72,64.67
step
kill Cauldron Lord Razarch##11076
collect Writhing Haunt Cauldron Key##13197 |q 5233/1 |goto 53.02,66.06
step
click Scourge Cauldron
turnin Target: Writhing Haunt##5233 |goto 53.02,65.72
accept Return to the Bulwark##5234 |goto 53.02,65.72
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5234 |goto Tirisfal Glades 83.04,71.91
accept Target: Gahrron's Withering##5235 |goto Tirisfal Glades 83.04,71.91
step
kill 8 Diseased Wolf##1817 |q 4984/1 |goto Western Plaguelands 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4984 |goto 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4985 |goto 53.72,64.67
accept Glyphed Oaken Branch##4987 |goto 53.72,64.67
step
Kill enemies around this area
Reach Level 57 |ding 57 |goto 56.81,63.63
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
step
kill Cauldron Lord Soulwrath##11078
|tip He walks around this area.
collect Gahrron's Withering Cauldron Key##13196 |q 5235/1 |goto 62.78,58.75
step
click Scourge Cauldron
turnin Target: Gahrron's Withering##5235 |goto 62.56,58.57
accept Return to the Bulwark##5236 |goto 62.56,58.57
step
talk Shadow Priestess Vandis##11055
turnin Return to the Bulwark##5236 |goto Tirisfal Glades 83.03,71.91
step
talk Mickey Levine##11615
turnin A Plague Upon Thee##5901 |goto 83.29,72.33
accept A Plague Upon Thee##5902 |goto 83.29,72.33
step
_Destroy These Items:_
|tip They are no longer needed.
trash Plagueland Termites##15043
step
talk High Executor Derrington##10837
accept All Along the Watchtowers##5098 |goto 83.13,68.94
accept Mission Accomplished!##5238 |goto 83.13,68.94
step
Enter the building |goto Western Plaguelands 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
turnin Good Luck Charm##5050 |goto Western Plaguelands 38.40,54.05
accept Two Halves Become One##5051 |goto Western Plaguelands 38.40,54.05
step
kill Jabbering Ghoul##10801
|tip It looks like a green ghoul holding a pitchfork.
|tip He can possibly spawn in multiple locations, and may walk around this area.
collect Good Luck Other-Half-Charm##12722 |goto 36.84,58.23 |q 5051
step
use the Good Luck Other-Half-Charm##12722
collect Good Luck Charm##12723 |q 5051/1
step
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
turnin Two Halves Become One##5051 |goto 38.40,54.05
step
click Northridge Lumber Mill Crate
|tip Inside the building.
Choose _"Place Termite Barrel on the crate."_
click Termite Barrel
|tip It appears on top of the crate.
turnin A Plague Upon Thee##5902 |goto 48.35,32.00
accept A Plague Upon Thee##6390 |goto 48.35,32.00
step
talk Kirsta Deepshadow##11610
accept Unfinished Business##6004 |goto 51.92,28.06
stickystart "Kill_Scarlet_Hunters"
stickystart "Kill_Scarlet_Mages"
stickystart "Kill_Scarlet_Knights"
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
kill 2 Scarlet Medic##10605 |q 6004/1 |goto 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too.
step
label "Kill_Scarlet_Hunters"
kill 2 Scarlet Hunter##1831 |q 6004/2 |goto 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
label "Kill_Scarlet_Mages"
kill 2 Scarlet Mage##1826 |q 6004/3 |goto 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
label "Kill_Scarlet_Knights"
kill 2 Scarlet Knight##1833 |q 6004/4 |goto 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
Follow the path down |goto 49.83,30.51 < 30 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6004 |goto 51.92,28.06
accept Unfinished Business##6023 |goto 51.92,28.06
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
Follow the path |goto 51.58,39.81 < 30 |only if walking
Follow the path up |goto 55.23,34.61 < 20 |only if walking
kill Huntsman Radley##11613 |q 6023/1 |goto 57.83,36.09
step
kill Cavalier Durgen##11611 |q 6023/2 |goto 54.37,23.77
|tip He walks back and forth, between this spot and the top of the tower.
|tip Wait outside the tower near this spot, he will eventually walk outside.
|tip Pull him away into the road nearby, so you can fight him alone.
step
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6023 |goto 51.92,28.06
step
Enter the building |goto 49.29,78.56 < 7 |walk
talk Marlene Redpath##10927
|tip Upstairs inside the building.
turnin Auntie Marlene##5152 |goto 49.17,78.58
accept A Strange Historian##5153 |goto 49.17,78.58
step
click Joseph Redpath's Monument
collect Joseph's Wedding Ring##12894 |q 5153/1 |goto 49.68,76.77
step
Cross the bridge |goto 49.22,73.14 < 20 |only if walking
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower Four |q 5098/4 |goto 46.70,71.10
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower One |q 5098/1 |goto 40.13,71.52
step
Enter the building |goto 39.57,68.38 < 7 |walk
talk Chromie##10667
|tip Upstairs inside the building.
turnin A Strange Historian##5153 |goto 39.45,66.76
accept The Annals of Darrowshire##5154 |goto 39.45,66.76
accept A Matter of Time##4971 |goto 39.45,66.76
step
Hug the outside of this building to get to the entrance |goto 43.81,70.34 < 5 |only if walking
Enter the building |goto 44.09,69.22 < 7 |walk
click Musty Tome+
|tip They look like blue books on the floor inside this building.
|tip Only one of them is the real book, and it's random.
|tip If you click fake books, enemies will spawn, so try to only click the real book.
|tip To identify the real book, zoom in your view, mouse over the books to highlight them, and look at the book pages.
|tip The fake books will have very blurry pages, with the top half of pages shaded darker than the bottom half of pages.
|tip The real book pages look sharper, with more clear horizontal lines, and the top half and bottom half of the pages are not shaded differently.
|tip If the correct book isn't there, click other books and kill enemies until the correct book appears.
collect Annals of Darrowshire##12900 |q 5154/1 |goto 43.52,69.55
step
Leave the building and try to avoid the enemies nearby |goto 44.09,69.22 < 7 |walk
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower Two |q 5098/2 |goto 42.44,66.27
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower Three |q 5098/3 |goto 44.22,63.37
step
use the Temporal Displacer##12627
|tip Use it near the cylinder structures with blue light shining out of them around this area.
kill 15 Temporal Parasite##10717 |q 4971/1 |goto 45.05,62.61
You can find more around: |notinsticky
[46.76,62.38]
[48.07,62.86]
[47.79,65.63]
[49.90,66.60]
[49.23,68.60]
step
Enter the building |goto 39.57,68.38 < 7 |walk
talk Chromie##10667
|tip Upstairs inside the building.
turnin The Annals of Darrowshire##5154 |goto 39.45,66.76
turnin A Matter of Time##4971 |goto 39.45,66.76
accept Counting Out Time##4972 |goto 39.45,66.76
accept Brother Carlin##5210 |goto 39.45,66.76
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 38.29,69.63 |count 1
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 38.88,68.06 |count 2
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 40.27,68.17 |count 3
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 40.85,67.14 |count 4
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 40.32,66.48 |count 5
step
Enter the building |goto 39.57,68.38 < 7 |walk
talk Chromie##10667
|tip Upstairs inside the building.
turnin Counting Out Time##4972 |goto 39.45,66.76
step
talk Mickey Levine##11615
turnin A Plague Upon Thee##6390 |goto Tirisfal Glades 83.29,72.33
step
talk High Executor Derrington##10837
turnin All Along the Watchtowers##5098 |goto 83.13,68.93
accept Scholomance##838 |goto 83.13,68.93
step
_Destroy This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815
step
talk Apothecary Dithers##11057
turnin Scholomance##838 |goto 83.28,69.23
accept Skeletal Fragments##964 |goto 83.28,69.23
step
Kill Skeletal enemies around this area
collect 15 Skeletal Fragments##14619 |q 964/1 |goto Western Plaguelands 36.64,57.74
step
talk Apothecary Dithers##11057
turnin Skeletal Fragments##964 |goto Tirisfal Glades 83.28,69.23
step
Enter the building |goto Orgrimmar 54.02,68.89 < 7 |walk
talk Innkeeper Gryshka##6929
|tip Inside the building.
home Orgrimmar |goto Orgrimmar 54.09,68.41 |q 7492
step
Enter the building |goto 49.94,70.65 < 7 |walk
talk Karus##3309
|tip Inside the building.
|tip Put these items in the bank.
bank Extended Annals of Darrowshire##13202 |goto 49.58,69.12 |q 5210
step
talk Karus##3309
|tip Inside the building.
|tip Collect these items from the bank.
collect Umi's Mechanical Yeti##12928 |goto 49.58,69.12 |q 5163
collect Encased Corrupt Ooze##12288 |goto 49.58,69.12 |q 4642
step
talk Cenarion Emissary Blackhoof##15188
accept Taking Back Silithus##8276 |goto 47.64,65.77
step
Enter the building |goto Thunder Bluff 74.19,29.89 < 7 |walk
talk Nara Wildmane##5770
|tip Inside the building.
turnin Glyphed Oaken Branch##4987 |goto Thunder Bluff 75.65,31.61
step
talk Arch Druid Hamuul Runetotem##5769
|tip Inside the building.
turnin The New Frontier##1004 |goto 78.60,28.55
accept Rabine Saturna##1123 |goto 78.60,28.55
step
Follow the road |goto Moonglade 41.01,35.40 < 30 |only if walking
Enter the building |goto Moonglade 51.47,41.45 < 10 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Rabine Saturna##1123 |goto Moonglade 51.68,45.09
accept Wasteland##1124 |goto Moonglade 51.68,45.09
step
talk Talo Thornhoof##7776
|tip Inside the building.
turnin The Strength of Corruption##4120 |goto Feralas 76.18,43.83
turnin Camp Mojache##7492 |goto Feralas 76.18,43.83
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Sprinkle.
Scare Sprinkle |q 5163/2 |goto Tanaris 51.06,26.87
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Quixxil.
Scare Quixxil |q 5163/3 |goto Un'Goro Crater 43.67,9.38
step
use the Encased Corrupt Ooze##12288
|tip Use it on a Primal Ooze.
kill Gargantuan Ooze##9621
collect Merged Ooze Sample##12291 |q 4642/1 |goto 46.86,24.76
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Eastern Plaguelands",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eastern Plaguelands",
},[[
step
Follow the path up the coast |goto Eastern Plaguelands 12.46,71.89 < 30 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
accept Demon Dogs##5542 |goto Eastern Plaguelands 7.56,43.70
accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.56,43.70
accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.56,43.70
stickystart "Kill_Plaguebats"
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
Follow the path |goto 12.00,61.72 < 30 |only if walking
talk Nathanos Blightcaller##11878
accept To Kill With Purpose##6022 |goto 26.54,74.74
accept Un-Life's Little Annoyances##6042 |goto 26.54,74.74
step
talk Pamela Redpath##10926
|tip She walks around this area inside this crumbled house.
turnin Sister Pamela##5601 |goto 36.45,90.80
accept Pamela's Doll##5149 |goto 36.45,90.80
stickystop "Kill_Plaguebats"
stickystop "Kill_Plaguehound_Runts"
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
stickystart "Collect_Pamelas_Dolls_Left_Side"
stickystart "Collect_Pamelas_Dolls_Right_Side"
step
click Pamela's Doll's Head
|tip It looks like a brown ball, with two X's for eyes, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
collect Pamela's Doll's Head##12886 |goto 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Left_Side"
click Pamela's Doll's Left Side
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
collect Pamela's Doll's Left Side##12887 |goto 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Right_Side"
click Pamela's Doll's Right Side
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
collect Pamela's Doll's Right Side##12888 |goto 39.07,91.53 |q 5149
step
use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 5149/1
step
talk Pamela Redpath##10926
|tip She walks around this area inside this crumbled house.
turnin Pamela's Doll##5149 |goto 36.45,90.80
accept Auntie Marlene##5152 |goto 36.45,90.80
accept Uncle Carlin##5241 |goto 36.45,90.80
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
label "Kill_Plaguebats"
kill 30 Plaguebat##8600 |q 5543/1 |goto 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Kill_Plaguehound_Runts"
kill 20 Plaguehound Runt##8596 |q 5542/1 |goto 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Collect_Slabs_Of_Carrion_Worm_Meat"
kill Carrion Grub##8603+
collect 15 Slab of Carrion Worm Meat##13853 |q 5544/1 |goto 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
kill 5 Plaguehound##8597 |q 5542/2 |goto 70.01,68.38
You can find more around: |notinsticky
[76.41,66.59]
[71.11,56.12]
step
talk Caretaker Alen##11038
|tip He walks around this area.
accept Zaeldarr the Outcast##6021 |goto 79.54,63.77
accept The Restless Souls##5281 |goto 79.54,63.77
step
talk Duke Nicholas Zverenhoff##11039
turnin Duke Nicholas Zverenhoff##6030 |goto 81.43,59.82
collect Argent Dawn Valor Token##12844 |goto 81.43,59.82 |q 9141 |future
|tip Turn in the repeatable "Minion's Scourgestones" quest to get this.
|tip Don't use the item, it is needed to turn in for a quest later.
step
talk Carlin Redpath##11063
turnin Uncle Carlin##5241 |goto 81.52,59.77
accept Defenders of Darrowshire##5211 |goto 81.52,59.77
step
talk Smokey LaRue##11033
accept That's Asking A Lot##6026 |goto 80.61,57.97
step
talk Smokey LaRue##11033
turnin That's Asking A Lot##6026 |goto 80.61,57.97
step
Kill enemies around this area
|tip Any Undead enemy in Corin's Crossing will award Argent Dawn reputation.
|tip Watch out for the group of Elites that walk back and forth down this road.
Reach Friendly Reputation with Argent Dawn |condition rep('Argent Dawn') >= Friendly |goto 61.06,66.84 |q 9141 |future
|tip Press "U" to open your reputation list.
|tip Select the "Argent Dawn" reputation, and select "Show as Experience Bar".
|tip This will show you a progress bar for this reputation, similar to your experience bar.
step
talk Dispatch Commander Metz##16212
accept They Call Me "The Rooster"##9141 |goto 81.05,57.55
step
talk Dispatch Commander Metz##16212
turnin They Call Me "The Rooster"##9141 |goto 81.05,57.55
step
talk Georgia##12636
fpath Light's Hope Chapel |goto 80.22,57.01
stickystart "Free_Darrowshire_Spirits"
step
Kill enemies around this area
|tip All around this town.
|tip Only Undead enemies will drop the quest item.
collect 7 Living Rot##15447 |n
|tip Get these as fast as you can.
|tip They only last for 10 minutes before they disappear.
use Mortar and Pestle##15454
collect Coagulated Rot##15448 |q 6022/1 |goto 59.90,68.41
stickystop "Free_Darrowshire_Spirits"
step
kill 20 Noxious Plaguebat##8601 |q 6042/1 |goto 61.96,61.16
You can find more around: |notinsticky
[54.34,58.88]
[49.30,62.57]
[52.57,56.21]
[54.57,50.34]
[60.98,55.50]
stickystart "Kill_Frenzied_Plaguehounds"
step
kill 10 Monstrous Plaguebat##8602 |q 6042/2 |goto 60.85,48.81
You can find more around: |notinsticky
[51.17,43.24]
[49.69,35.97]
[48.56,26.97]
[52.38,24.42]
step
label "Kill_Frenzied_Plaguehounds"
kill 5 Frenzied Plaguehound##8598 |q 5542/3 |goto 62.63,47.95
You can find more around: |notinsticky
[51.17,43.24]
[49.69,35.97]
stickystart "Free_Darrowshire_Spirits"
step
click Large Termite Mound+
|tip They look like large brown and white stones cracked open with green goo leaking out of the top of them around this area.
collect 100 Plagueland Termites##15043 |q 5901/1 |goto 45.90,34.10
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
label "Free_Darrowshire_Spirits"
Kill Ghoul enemies around this area
|tip All around the Plaguewood area. |notinsticky
|tip They share spawn points with other enemies, so kill them too.
talk Darrowshire Spirit##11064+
|tip They appear after you kill the Cannibal Ghouls.
Free #15# Darrowshire Spirits |q 5211/1 |goto 35.91,29.38
stickystart "Collect_Crypt_Fiend_Parts"
step
Enter the building |goto 14.59,33.47 < 7 |walk
talk Egan##11140
|tip Inside the building.
turnin The Restless Souls##5281 |goto 14.45,33.74
step
talk Augustus the Touched##12384
|tip Inside the building.
accept Augustus' Receipt Book##6164 |goto 14.45,33.48
step
Enter the building |goto 17.56,33.03 < 7 |walk
click Augustus' Receipt Book
|tip Upstairs inside the building.
collect Augustus' Receipt Book##15884 |q 6164/1 |goto 17.43,31.09
step
Enter the building |goto 14.59,33.47 < 7 |walk
talk Augustus the Touched##12384
|tip Inside the building.
turnin Augustus' Receipt Book##6164 |goto 14.45,33.48
step
label "Collect_Crypt_Fiend_Parts"
Kill Crypt enemies around this area
|tip They look like large insects.
|tip They take 5 minutes to respawn.
collect 30 Crypt Fiend Parts##22525 |goto 16.57,32.94 |q 9124 |future
You can find more in the tunnel at [15.33,29.35]
|tip Be careful in the tunnel, there are many enemies that are pretty close together.
|tip Sometimes an elite level 60 enemy walks around inside of the tunnel.
|tip Don't go too far into the tunnel, so you can come back and kill the enemies outside the tunnel when they respawn.
step
Enter the tunnel |goto 15.38,29.31 < 10 |walk
Leave the tunnel |goto 7.26,41.05 < 10 |c |q 5542
|tip If you find it too difficult to walk through this tunnel, you can skip this step.
|tip Instead, you will have to run the long way around to reach the location of the next step.
step
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Demon Dogs##5542 |goto 7.57,43.70
turnin Blood Tinged Skies##5543 |goto 7.57,43.70
turnin Carrion Grubbage##5544 |goto 7.57,43.70
accept Redemption##5742 |goto 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
|tip Type "/sit" into your chat, or press X.
|tip You must be sitting for the dialogue option to appear when you talk to him.
Tell him _"I am ready to hear your tale, Tirion."_
Listen to Tirion's Tale |q 5742/1 |goto 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Redemption##5742 |goto 7.57,43.70
accept Of Forgotten Memories##5781 |goto 7.57,43.70
step
Follow the path |goto 12.00,61.72 < 30 |only if walking
talk Nathanos Blightcaller##11878
turnin To Kill With Purpose##6022 |goto 26.54,74.74
turnin Un-Life's Little Annoyances##6042 |goto 26.54,74.74
step
Enter the crypt |goto 27.86,85.48 < 7 |walk
kill Zaeldarr the Outcast##12250
|tip Downstairs inside the crypt.
collect Zaeldarr's Head##15785 |q 6021/1 |goto 27.46,84.88
step
Run up the stairs |goto 27.54,86.15 < 7 |c |q 6021
step
Leave the crypt |goto 27.85,85.50 < 7 |walk
click Loose Dirt Mound
|tip Mercutio Filthgorger appears with a group of 3 guards with him.
|tip Try to kite Mercutio Filthgorger away from his guards, so you can fight him by himself.
|tip If you have trouble, try to find someone to help you.
kill Mercutio Filthgorger##11886
collect Taelan's Hammer##14613 |q 5781/1 |goto 28.31,86.88
step
Follow the path |goto 11.93,61.49 < 30 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Of Forgotten Memories##5781 |goto 7.56,43.70
accept Of Lost Honor##5845 |goto 7.56,43.70
step
Follow the path |goto 11.93,61.49 < 30 |only if walking
talk Caretaker Alen##11038
|tip He walks around this area.
turnin Zaeldarr the Outcast##6021 |goto 79.54,63.77
step
talk Carlin Redpath##11063
turnin Defenders of Darrowshire##5211 |goto 81.52,59.76
step
talk Rayne##16135
accept Savage Flora##9136 |goto 81.20,59.00
step
talk Rayne##16135
turnin Savage Flora##9136 |goto 81.20,59.00
step
Enter the building |goto 81.15,58.55 < 7 |walk
talk Rohan the Assassin##16131
|tip Inside the building.
accept Bonescythe Digs##9126 |goto 81.43,58.51
step
talk Rohan the Assassin##16131
|tip Inside the building.
turnin Bonescythe Digs##9126 |goto 81.43,58.51
step
talk Huntsman Leopold##16132
|tip Inside the building.
accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto 81.50,58.55
step
talk Huntsman Leopold##16132
|tip Inside the building.
turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto 81.50,58.55
step
talk Korfax, Champion of the Light##16112
|tip Inside the building.
accept Binding the Dreadnaught##9131 |goto 81.79,58.07
step
talk Korfax, Champion of the Light##16112
|tip Inside the building.
turnin Binding the Dreadnaught##9131 |goto 81.79,58.07
step
Follow the path |goto 70.37,48.89 < 30 |only if walking
click Symbol of Lost Honor
|tip Underwater.
collect Symbol of Lost Honor##14625 |q 5845/1 |goto 71.30,33.95
step
Kill enemies around this area
Reach Level 58 |ding 58 |goto 60.85,48.81
You can find more around: |notinsticky
[51.17,43.24]
[49.69,35.97]
[48.56,26.97]
[52.38,24.42]
step
Follow the path |goto 11.93,61.49 < 30 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Of Lost Honor##5845 |goto 7.56,43.70
accept Of Love and Family##5846 |goto 7.56,43.70
step
talk Artist Renfray##11936
|tip Inside the building.
turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37
step
talk Royal Overseer Bauhaus##10781
turnin Better Late Than Never##5023 |goto Undercity 69.78,43.15
accept The Jeremiah Blues##5049 |goto Undercity 69.78,43.15
step
talk Jeremiah Payson##8403
|tip Under the stairs.
turnin The Jeremiah Blues##5049 |goto 67.60,44.16
accept Good Luck Charm##5050 |goto 67.60,44.16
step
talk Harbinger Balthazad##10879
|tip He walks around this area in the middle of Undercity.
|tip He's wearing holding a lantern, wearing a white shirt.
|tip He can also be in the ring hallway surrounding the center of Undercity.
accept Camp Mojache##7492 |goto 63.81,44.07
accept The New Frontier##1004 |goto 63.81,44.07
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Silithus",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Silithus",
},[[
step
Follow the path up |goto Un'Goro Crater 29.34,22.42 < 20 |only if walking
talk Layo Starstrike##13220
|tip Inside the building.
turnin Wasteland##1124 |goto Silithus 81.87,18.93
accept The Spirits of Southwind##1125 |goto 81.87,18.93
step
talk Windcaller Proudhorn##15191
turnin Taking Back Silithus##8276 |goto 51.15,38.29
accept Securing the Supply Lines##8280 |goto 51.15,38.29
step
click Wanted Poster: Deathclasp
accept Wanted - Deathclasp, Terror of the Sands##8283 |goto 51.35,38.28
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
accept Deadly Desert Venom##8277 |goto 51.71,38.58
step
talk Geologist Larksbane##15183
accept The Twilight Mystery##8284 |goto 49.67,37.46
step
talk Bor Wildmane##15306
accept Secret Communication##8318 |goto 48.57,37.78
step
Enter the building |goto 49.60,36.02 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
accept Dearest Natalia##8304 |goto 49.19,34.18
step
talk Runk Windtamer##15178
fpath Cenarion Hold |goto 48.68,36.68
stickystart "Kill_Tortured_Sentinels"
step
kill 8 Tortured Druid##12178 |q 1125/1 |goto 62.96,53.11
|tip You can find more inside the buildings around this area.
step
label "Kill_Tortured_Sentinels"
kill 8 Tortured Sentinel##12179 |q 1125/2 |goto 62.96,53.11
|tip You can find more inside the buildings around this area.
stickystart "Collect_Stonelash_Scorpid_Stingers"
stickystart "Collect_Sand_Skitterer_Fangs"
stickystart "Kill_Dredge_Strikers"
step
Follow the path |goto 61.69,51.69 < 15 |only if walking
talk Layo Starstrike##13220
|tip Inside the building.
turnin The Spirits of Southwind##1125 |goto 81.87,18.93
accept Hive in the Tower##1126 |goto 81.87,18.93
step
Follow the path |goto 61.48,48.93 < 30 |only if walking
Continue following the path |goto 61.69,51.72 < 20 |only if walking
Enter the building |goto 60.45,52.83 < 10 |walk
|tip Three silithid will ambush you when you enter the tower.
click Hive'Ashi Pod##178553
|tip At the top of the tower.
kill Hive'Ashi Ambusher##13301+
collect Encrusted Silithid Object##17346 |q 1126/1 |goto 60.35,52.55
stickystop "Collect_Stonelash_Scorpid_Stingers"
stickystop "Collect_Sand_Skitterer_Fangs"
stickystop "Kill_Dredge_Strikers"
step
Kill Hive'Ashi enemies around this area
|tip You may need help with this.
collect Brann Bronzebeard's Lost Letter##20461 |goto 55.97,49.86 |q 8308 |future
|tip This has a low drop rate.
step
use Brann Bronzebeard's Lost Letter##20461
accept Brann Bronzebeard's Lost Letter##8308
step
Kill enemies around this area
|tip You can find more inside the buildings around this area.
Reach Level 59 |ding 59 |goto 62.96,53.11
stickystart "Collect_Stonelash_Scorpid_Stingers"
stickystart "Collect_Sand_Skitterer_Fangs"
stickystart "Kill_Dredge_Strikers"
step
Follow the path |goto 61.69,51.69 < 20 |only if walking
talk Layo Starstrike##13220
|tip Inside the building.
turnin Hive in the Tower##1126 |goto 81.87,18.93
accept Umber, Archivist##6844 |goto 81.87,18.93
step
talk Scout Bloodfist##17081
accept Report to General Kirika##9416 |goto 48.95,36.69
step
Follow the path |goto 72.12,30.46 < 30 |only if walking
Continue following the path |goto 66.40,27.39 < 30 |only if walking
Kill Twilight enemies around this area
collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto 66.89,19.00
You can find more inside the cave at [68.88,15.22]
step
label "Collect_Stonelash_Scorpid_Stingers"
kill Stonelash Scorpid##11735+
|tip They look like scorpions.
collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
label "Collect_Sand_Skitterer_Fangs"
kill Sand Skitterer##11738+
|tip They look like spiders.
collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
label "Kill_Dredge_Strikers"
kill 15 Dredge Striker##11740 |q 8280/1 |goto 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
talk Windcaller Proudhorn##15191
turnin Securing the Supply Lines##8280 |goto 51.15,38.29
accept Stepping Up Security##8281 |goto 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
turnin Deadly Desert Venom##8277 |goto 51.71,38.58
accept Noggle's Last Hope##8278 |goto 51.71,38.58
step
Follow the path |goto 50.34,37.00 < 20 |only if walking
talk Bor Wildmane##15306
turnin Secret Communication##8318 |goto 48.58,37.78
stickystart "Collect_Core_Of_Elements"
step
Follow the path |goto 30.35,16.88 < 40 |only if walking
click Twilight Tablet Fragment+
|tip They look like small blue-glowing broken pieces of stone tablets on the ground around this area.
collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto 24.33,11.94
step
label "Collect_Core_Of_Elements"
Kill enemies around this area
|tip They look like air and rock elementals.
collect 30 Core of Elements##22527 |goto 23.01,12.28 |q 9128 |future
You can find more around: |notinsticky
[31.53,18.08]
[28.22,29.43]
[19.10,27.73]
step
Kill Twilight enemies around this area
collect 10 Encrypted Twilight Text##20404 |goto 27.34,33.46 |q 8323 |future
stickystart "Kill_Dredge_Crushers"
stickystart "Collect_Stonelash_Pincer_Stingers"
step
talk General Kirika##17079
turnin Report to General Kirika##9416 |goto 50.75,69.55
step
label "Kill_Dredge_Crushers"
kill 20 Dredge Crusher##11741 |q 8281/1 |goto 27.26,43.55
You can find more around: |notinsticky
[36.54,50.40]
[37.93,60.76]
[47.11,59.42]
[57.55,60.78]
step
label "Collect_Stonelash_Pincer_Stingers"
kill Stonelash Pincer##11736+
collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto 27.26,43.55
You can find more around: |notinsticky
[36.54,50.40]
[37.93,60.76]
[47.11,59.42]
[57.55,60.78]
stickystart "Collect_Stonelash_Flayer_Stingers"
stickystart "Collect_Rock_Stalker_Fangs"
step
talk Rutgar Glyphshaper##15170
turnin Brann Bronzebeard's Lost Letter##8308 |goto 41.28,88.45
step
talk Rutgar Glyphshaper##15170
Tell him _"Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife."_
Question Rutgar |q 8304/2 |goto 41.28,88.45
step
talk Frankal Stonebridge##15171
Tell him _"Hello, Frankal. I've heard that you might have some information as to the whereabouts of Mistress Natalia Mar'alith."_
Question Frankal |q 8304/1 |goto 40.82,88.85
step
label "Collect_Stonelash_Flayer_Stingers"
kill Stonelash Flayer##11737+
collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto 45.44,86.38
You can find more around: |notinsticky
[45.15,82.20]
[36.97,86.68]
[28.44,80.89]
[35.23,71.64]
step
label "Collect_Rock_Stalker_Fangs"
kill Rock Stalker##11739+
collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto 45.44,86.38
You can find more around: |notinsticky
[45.15,82.20]
[36.97,86.68]
[28.44,80.89]
[35.23,71.64]
step
Follow the road |goto 42.86,72.53 < 30 |only if walking
Follow the path |goto 47.12,40.65 < 30 |only if walking
talk Windcaller Proudhorn##15191
turnin Stepping Up Security##8281 |goto 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
turnin Noggle's Last Hope##8278 |goto 51.71,38.58
step
talk Noggle Ficklespragg##15190
|tip Upstairs inside the building.
accept Noggle's Lost Satchel##8282 |goto 51.62,38.50
step
Follow the path |goto 50.34,37.02 < 20 |only if walking
talk Geologist Larksbane##15183
turnin The Twilight Mystery##8284 |goto 49.67,37.46
accept The Deserter##8285 |goto 49.67,37.46
step
Enter the building |goto 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin Dearest Natalia##8304 |goto 49.19,34.18
accept Into The Maw of Madness##8306 |goto 49.19,34.18
step
Enter the cave |goto 66.32,70.03 < 10 |walk
talk Hermit Ortell##15194
|tip Inside the cave.
turnin The Deserter##8285 |goto 67.19,69.76
accept The Twilight Lexicon##8279 |goto 67.19,69.76
step
Leave the cave |goto 66.28,70.06 < 10 |walk
kill Twilight Keeper Havunth##11804
|tip He looks like an orc that walks around this area wearing a bright purple robe.
|tip You can wait around this spot to avoid going into the camp looking for him.
collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto 42.00,44.13
step
kill Twilight Keeper Mayna##15200
|tip She walks around this area.
collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto 26.46,36.45
step
Follow the path up |goto 19.91,47.62 < 15 |only if walking
Follow the path |goto 20.68,52.43 < 15 |only if walking
Continue following the path |goto 17.45,62.34 < 15 |only if walking
Follow the path up |goto 18.25,68.26 < 15 |only if walking
Continue up the path |goto 19.29,70.42 < 15 |only if walking
Jump down here |goto 17.99,71.75 < 15 |only if walking
Follow the path down |goto 18.53,74.31 < 15 |only if walking
kill Twilight Keeper Exeter##11803
collect The Twilight Lexicon##8279 |q 8279/2 |goto 16.09,86.37
step
Follow the path |goto 29.63,84.72 < 40 |only if walking
Follow the path up |goto 42.36,90.81 < 10 |only if walking
kill Deathclasp##15196
|tip He walks around this area.
|tip You may need help with this.
collect Deathclasp's Pincer##20385 |q 8283/1 |goto 44.94,91.23
step
click Noggle's Satchel
collect Noggle's Satchel##20379 |q 8282/1 |goto 44.57,91.36
step
Follow the path |goto 55.17,63.52 < 30 |only if walking
Enter the cave |goto 66.32,70.03 < 10 |walk
talk Hermit Ortell##15194
|tip Inside the cave.
turnin The Twilight Lexicon##8279 |goto 67.19,69.76
accept A Terrible Purpose##8287 |goto 67.19,69.76
accept True Believers##8323 |goto 67.19,69.76
step
talk Hermit Ortell##15194
|tip Inside the cave.
turnin True Believers##8323 |goto 67.19,69.76
step
Leave the cave |goto 66.28,70.06 < 10 |walk
Follow the road |goto 45.20,52.54 < 30 |only if walking
Follow the path up |goto 45.64,43.35 < 30 |only if walking
talk Noggle Ficklespragg##15190
|tip Upstairs inside the building.
turnin Noggle's Lost Satchel##8282 |goto 51.63,38.50
step
Follow the path |goto 50.34,37.02 < 15 |only if walking
Enter the building |goto 49.61,36.05 < 7 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin A Terrible Purpose##8287 |goto 49.19,34.18
step
Leave the building |goto 49.60,36.00 < 7 |only if walking
Follow the path up |goto 50.43,35.93 < 10 |only if walking
Enter the building |goto 50.81,33.88 < 7 |only if walking
talk Vish Kozus##15182
|tip At the top of the tower.
turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto 50.75,33.65
step
Follow the path down |goto Undercity 52.82,77.71 < 7 |walk
talk Chemist Fuely##10136
turnin Melding of Influences##4642 |goto Undercity 47.46,73.35
step
talk William Montague##4549
|tip Collect these items from the bank.
collect Extended Annals of Darrowshire##13202 |goto 65.95,45.11 |q 5210
step
Enter the building |goto Eastern Plaguelands 81.15,58.55 < 7 |walk
talk Archmage Angela Dosantos##16116
|tip Inside the building.
accept The Elemental Equation##9128 |goto Eastern Plaguelands 81.52,58.27
step
talk Archmage Angela Dosantos##16116
|tip Inside the building.
turnin The Elemental Equation##9128 |goto 81.52,58.27
step
talk Carlin Redpath##11063
turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77
accept Villains of Darrowshire##5181 |goto Eastern Plaguelands 81.52,59.77
step
click Horgus' Skull
|tip Underwater.
collect Skull of Horgus##12956 |q 5181/1 |goto 51.11,49.94
step
Jump down here |goto 50.52,65.38 < 15 |only if walking
click Shattered Sword of Marduk
collect Shattered Sword of Marduk##12957 |q 5181/2 |goto 53.92,65.76
step
Follow the path up |goto 51.17,71.06 < 20 |only if walking
talk Carlin Redpath##11063
turnin Villains of Darrowshire##5181 |goto 81.51,59.77
step
talk Trull Failbane##10306
accept Wild Guardians##4741 |goto Felwood 34.73,52.79
step
Follow the path |goto 35.78,49.56 < 20 |only if walking
Follow the path down |goto 44.69,23.44 < 30 |only if walking
kill Toxic Horror##7132+
collect 3 Toxic Horror Droplet##12822 |q 5086/1 |goto 48.61,23.88
You can find more around [50.89,22.57]
step
Enter the tunnel |goto 65.13,8.01 < 7 |walk
Follow the path |goto 65.36,2.34 < 7 |walk
Leave the tunnel |goto Moonglade 35.75,72.48 < 7 |walk
Follow the road |goto Moonglade 40.73,35.75 < 30 |only if walking
talk Umber##11939
|tip Upstairs inside the building.
turnin Umber, Archivist##6844 |goto Moonglade 44.89,35.59
accept Uncovering Past Secrets##6845 |goto Moonglade 44.89,35.59
step
Enter the building |goto 51.47,41.44 < 7 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Uncovering Past Secrets##6845 |goto 51.68,45.08
step
talk Umber##11939
|tip Upstairs inside the building.
accept Under the Chitin Was...##1185 |goto 44.89,35.59
step
Reach Level 60 |ding 60
|tip Use the Leveling guides to accomplish this.
step
talk Huum Wildmane##15270
accept Twilight Geolords##8320 |goto Silithus 48.63,37.86
step
talk Bor Wildmane##15306
accept Abyssal Contacts##8361 |goto 48.57,37.78
stickystart "Collect_Twilight_Cultist_Cowl"
stickystart "Collect_Twilight_Cultist_Mantle"
stickystart "Collect_Twilight_Cultist_Robe"
step
kill 10 Twilight Geolord##11881 |q 8320/1 |goto 27.34,33.46
step
label "Collect_Twilight_Cultist_Cowl"
Kill Twilight enemies around this area
collect Twilight Cultist Cowl##20408 |goto 27.34,33.46 |q 8361
step
label "Collect_Twilight_Cultist_Mantle"
Kill Twilight enemies around this area
collect Twilight Cultist Mantle##20406 |goto 27.34,33.46 |q 8361
step
label "Collect_Twilight_Cultist_Robe"
Kill Twilight enemies around this area
collect Twilight Cultist Robe##20407 |goto 27.34,33.46 |q 8361
step
use the Twilight Cultist Cowl##20408
|tip It should be in your bags.
Equip the Twilight Cultist Cowl |equipped Twilight Cultist Cowl##20408 |q 8361
step
use the Twilight Cultist Mantle##20406
|tip It should be in your bags.
Equip the Twilight Cultist Mantle |equipped Twilight Cultist Mantle##20406 |q 8361
step
use the Twilight Cultist Robe##20407
|tip It should be in your bags.
Equip the Twilight Cultist Robe |equipped Twilight Cultist Robe##20407 |q 8361
step
click Lesser Wind Stone##180456
Tell it _"I am no cultist, you monster! Come to me and face your destruction!"_
Kill the Templar enemy that attacks
|tip It is Elite.
|tip You may need help with this.
collect Abyssal Crest##20513 |q 8361/1 |goto 24.47,35.99
step
talk Huum Wildmane##15270
turnin Twilight Geolords##8320 |goto 48.63,37.86
accept Vyral the Vile##8321 |goto 48.63,37.86
step
talk Bor Wildmane##15306
turnin Abyssal Contacts##8361 |goto 48.57,37.78
step
Enter the cave |goto 69.09,14.98 < 7 |walk
kill Vyral the Vile##15202
|tip Inside the cave.
collect Vyral's Signet Ring##20466 |q 8321/1 |goto 72.39,15.58
step
talk Huum Wildmane##15270
turnin Vyral the Vile##8321 |goto 48.63,37.86
step
Enter the hive |goto 55.32,87.60 < 20 |walk
Follow the path |goto 53.66,88.85 < 15 |walk
Continue following the path |goto 52.31,90.19 < 10 |walk
Continue following the path |goto 52.29,93.37 < 10 |walk
The Fate of Mistress Natalia Mar'alith |q 8306/1 |goto 49.26,34.46
step
Enter the building |goto 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin Into The Maw of Madness##8306 |goto 49.19,34.18
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Ghostlands",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ghostlands",
},[[
step
talk Courier Dawnstrider##16183
accept Delivery to Tranquillien##9148 |goto Eversong Woods/0 48.98,88.99
step
Follow the road |goto Ghostlands/0 46.58,18.86 < 50 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Delivery to Tranquillien##9148 |goto Ghostlands/0 46.34,28.36
|tip You will only be able to accept one of these quests.
accept The Forsaken##9327 |goto Ghostlands/0 46.34,28.36 |only if BloodElf
accept the Forsaken##9329 |goto Ghostlands/0 46.34,28.36 |only if not BloodElf
step
talk Skymaster Sunwing##16189
fpath Tranquillien |goto 45.42,30.52
step
Enter the building |goto 45.17,32.38 < 7 |walk
talk High Executor Mavren##16252
|tip Inside the building.
turnin The Forsaken##9329 |goto 44.77,32.45 |only if havequest(9329) or completedq(9329)
turnin The Forsaken##9327 |goto 44.77,32.45 |only if havequest(9327) or completedq(9327)
accept Return to Arcanist Vandril##9758 |goto 44.77,32.45
step
talk Apothecary Renzithen##16198
turnin The Plagued Coast##9149 |goto 47.67,34.86
step
talk Rathis Tomber##16224
|tip He walks around the area.
accept Tomber's Supplies##9152 |goto 47.15,28.59
step
talk Quartermaster Lymel##16187
accept Goods from Silvermoon City##9130 |goto 47.34,29.26
|only if BloodElf
step
talk Skymaster Sunwing##16189
turnin Goods from Silvermoon City##9130 |goto 45.42,30.52
accept Fly to Silvermoon City##9133 |goto 45.42,30.52
|only if BloodElf
step
Enter the building |goto Silvermoon City/0 55.33,71.07 < 7 |walk
talk Sathren Azuredawn##16191
|tip Inside the building.
turnin Fly to Silvermoon City##9133 |goto Silvermoon City/0 53.93,71.02
accept Skymistress Gloaming##9134 |goto Silvermoon City/0 53.93,71.02
|only if BloodElf
step
talk Skymistress Gloaming##16192
turnin Skymistress Gloaming##9134 |goto Eversong Woods/0 54.36,50.72
accept Return to Quartermaster Lymel##9135 |goto Eversong Woods/0 54.36,50.72
|only if BloodElf
step
talk Quartermaster Lymel##16187
turnin Return to Quartermaster Lymel##9135 |goto Ghostlands/0 47.34,29.26
|only if BloodElf
step
talk Arcanist Vandril##16197
turnin Return to Arcanist Vandril##9758 |goto 46.34,28.36
accept Suncrown Village##9138 |goto 46.34,28.36
stickystart "Kill_Nerubis_Guards"
step
Follow the road |goto 49.77,20.63 < 50 |only if walking
talk Dying Blood Elf##16601
accept Anok'suten##9315 |goto 57.55,14.92
step
kill Anok'suten##16357 |q 9315/1 |goto 60.05,12.76
|tip It looks like a larger elite purple undead spider that walks along the road around this area.
|tip If you find it too difficult, try to find someone to help you, or skip it.
step
label "Kill_Nerubis_Guards"
kill 10 Nerubis Guard##16313 |q 9138/1 |goto 60.05,12.76
step
Follow the road |goto 46.58,24.46 < 70 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Suncrown Village##9138 |goto 46.34,28.36
accept Goldenmist Village##9139 |goto 46.34,28.36
turnin Anok'suten##9315 |goto 46.34,28.36
step
talk Ranger Lethvalin##16213
accept Help Ranger Valanna!##9145 |goto 45.48,32.45
step
Enter the building |goto 45.17,32.38 < 7 |walk
talk Dame Auriferous##16231
|tip Inside the building.
accept Investigate An'daroth##9160 |goto 44.88,32.51
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
accept Trouble at the Underlight Mines##9192 |goto 44.75,32.28
step
talk Magister Darenis##16199
accept Salvaging the Past##9150 |goto 46.03,31.96
step
talk Deathstalker Rathiel##16200
accept Down the Dead Scar##9155 |goto 46.02,33.57
step
talk Master Chef Mouldier##16253
accept Culinary Crunch##9171 |goto 48.43,30.93
stickystart "Kill_Sentinel_Spies"
step
Follow the path up |goto 37.91,22.19 < 20 |only if walking
Investigate An'daroth |q 9160/2 |goto 37.23,16.15
step
label "Kill_Sentinel_Spies"
kill 12 Sentinel Spy##16330 |q 9160/1 |goto 37.24,16.46
stickystart "Kill_Quel'dorei_Wraiths"
step
kill 6 Quel'dorei Ghost##16325 |q 9139/1 |goto 27.29,16.24
step
label "Kill_Quel'dorei_Wraiths"
kill 4 Quel'dorei Wraith##16326 |q 9139/2 |goto 27.29,16.24
step
click Rathis Tomber's Supplies##181133
collect Rathis Tomber's Supplies##22583 |q 9152/1 |goto 33.56,26.54
step
Kill enemies around this area
collect 8 Crystallized Mana Essence##22580 |q 9150/1 |goto 34.10,32.96
stickystart "Kill_Gangled_Cannibals"
step
kill 10 Risen Hungerer##16301 |q 9155/1 |goto 38.69,37.95
You can find more around [39.23,32.36]
step
label "Kill_Gangled_Cannibals"
kill 10 Gangled Cannibal##16309 |q 9155/2 |goto 38.69,37.95
You can find more around [39.23,32.36]
step
Follow the path up |goto 42.45,28.50 < 30 |only if walking
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Goldenmist Village##9139 |goto 46.34,28.36
accept Windrunner Village##9140 |goto 46.34,28.36
step
talk Rathis Tomber##16224
|tip He walks around this area.
turnin Tomber's Supplies##9152 |goto 47.15,28.59
step
talk Magister Darenis##16199
turnin Salvaging the Past##9150 |goto 46.03,31.96
step
talk Deathstalker Rathiel##16200
turnin Down the Dead Scar##9155 |goto 46.02,33.57
step
Enter the building |goto 45.17,32.37 < 7 |walk
talk Dame Auriferous##16231
|tip Inside the building.
turnin Investigate An'daroth##9160 |goto 44.89,32.50
accept Into Occupied Territory##9163 |goto 44.89,32.50
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
accept Troll Juju##9199 |goto 44.75,32.28
step
talk Advisor Valwyn##16289
|tip Inside the building.
accept Investigate the Amani Catacombs##9193 |goto 44.84,32.81
step
Follow the road |goto 47.98,22.20 < 50 |only if walking
Follow the path |goto 60.98,19.36 < 50 |only if walking
Continue following the path |goto 67.38,21.09 < 50 |only if walking
step
Enter the building |goto 71.07,32.01 < 7 |only if walking
talk Farstrider Sedina##16202
|tip Inside the building.
accept Bearers of the Plague##9158 |goto 72.49,32.13
step
talk Ranger Krenn'an##16462
accept Spirits of the Drowned##9274 |goto 72.21,29.77
step
kill 10 Ghostclaw Lynx##16348 |q 9158/1 |goto 75.87,28.39
You can find more around [71.31,40.14]
step
talk Farstrider Sedina##16202
|tip Inside the building.
turnin Bearers of the Plague##9158 |goto 72.49,32.13
accept Curbing the Plague##9159 |goto 72.49,32.13
step
talk Ranger Valanna##16219
turnin Help Ranger Valanna!##9145 |goto 69.40,15.18
accept Dealing with Zeb'Sora##9143 |goto 69.40,15.18
step
Kill Shadowpine enemies around this area
collect 6 Zeb'Sora Troll Ear##22639 |q 9143/1 |goto 76.01,11.78
step
talk Ranger Valanna##16219
turnin Dealing with Zeb'Sora##9143 |goto 69.40,15.18
accept Report to Captain Helios##9146 |goto 69.40,15.18
step
Enter the building |goto 71.08,32.00 < 7 |only if walking
talk Captain Helios##16220
turnin Report to Captain Helios##9146 |goto 72.37,29.64
accept Shadowpine Weaponry##9214 |goto 72.37,29.64
step
Run up the ramp |goto 71.83,30.05 < 7 |only if walking
talk Ranger Vynna##16203
|tip Upstairs inside the building.
accept The Traitor's Shadow##9161 |goto 71.95,32.64
step
talk Farstrider Solanna##16463
|tip Inside the building.
accept Attack on Zeb'Tela##9276 |goto 72.32,31.25
step
talk Geranis Whitemorn##16201
accept Forgotten Rituals##9157 |goto 72.29,19.09
stickystart "Kill_Vengeful_Apparitions"
stickystart "Collect_Wavefront_Medallion"
step
kill 8 Ravening Apparition##16327 |q 9274/1 |goto 73.36,22.28
|tip Underwater around this area.
step
label "Kill_Vengeful_Apparitions"
kill 8 Vengeful Apparition##16328 |q 9274/2 |goto 73.36,22.28
|tip Underwater around this area.
step
label "Collect_Wavefront_Medallion"
click Glistening Mud##181151+
|tip Underwater around this area.
collect 8 Wavefront Medallion##22674 |q 9157/1 |goto 73.36,22.28
step
talk Geranis Whitemorn##16201
turnin Forgotten Rituals##9157 |goto 72.29,19.09
accept Vanquishing Aquantion##9174 |goto 72.29,19.09
step
click Altar of Tidal Mastery##181157
|tip Underwater.
kill Aquantion##16292 |q 9174/1 |goto 71.34,15.04
step
talk Geranis Whitemorn##16201
turnin Vanquishing Aquantion##9174 |goto 72.29,19.09
step
Enter the building |goto 78.79,19.82 < 7 |only if walking
Run up the ramp |goto 80.11,20.61 < 7 |only if walking
click Dusty Journal##194341
|tip Upstairs on the balcony of the building.
turnin The Traitor's Shadow##9161 |goto 79.63,17.55
accept Hints of the Past##9162 |goto 79.63,17.55
step
Enter the building |goto 73.51,32.17 < 7 |only if walking
talk Ranger Krenn'an##16462
turnin Spirits of the Drowned##9274 |goto 72.21,29.77
step
Run up the ramp |goto 71.79,30.11 < 7 |only if walking
talk Ranger Vynna##16203
|tip Upstairs inside the building.
turnin Hints of the Past##9162 |goto 71.95,32.64
accept Report to Magister Kaendris##9172 |goto 71.95,32.64
step
Follow the path |goto 65.03,42.11 < 50 |only if walking
Follow the path |goto 56.71,45.23 < 20 |only if walking
Enter the building |goto 54.75,49.46 < 7 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin Report to Magister Kaendris##9172 |goto 55.07,48.84
accept The Twin Ziggurats##9176 |goto 55.07,48.84
step
Follow the path up |goto 46.57,37.70 < 50 |only if walking
Enter the building |goto 45.16,32.38 < 7 |walk
talk High Executor Mavren##16252
|tip Inside the building.
accept Retaking Windrunner Spire##9173 |goto 44.77,32.45
step
Run up the ramp |goto 48.87,30.93 < 10 |only if walking
talk Magistrix Aminel##16205
|tip Upstairs on the balcony of the building.
accept Rotting Hearts##9216 |goto 48.92,31.31
accept Spinal Dust##9218 |goto 48.92,31.31
step
Follow the road |goto 43.72,27.78 < 50 |only if walking
Kill Grimscale enemies around this area
collect 6 Plagued Murloc Spine##22579 |q 9149/1 |goto 20.11,22.04
step
click Night Elf Plans: An'daroth##181138
|tip It looks like an unrolled white scroll.
collect Night Elf Plans: An'daroth##22590 |q 9163/1 |goto 12.52,26.51
It can also spawn at [13.71,26.82]
step
click Night Elf Plans: An'owyn##181139
|tip It looks like an unrolled brown scroll.
collect Night Elf Plans: An'owyn##22591 |q 9163/2 |goto 12.86,23.94
It can also spawn at [12.78,25.14]
step
Run up the ramp |goto 10.43,24.34 < 7 |only if walking
click Night Elf Plans: Scrying on the Sin'dorei##181140
|tip On the top deck of the ship.
collect Night Elf Plans: Scrying on the Sin'dorei##22592 |q 9163/3 |goto 10.45,22.58
stickystart "Kill_Spindleweb_Lurkers"
stickystart "Kill_Vampiric_Mistbats"
step
kill Spindleweb Spider##16350+
collect 5 Crunchy Spider Leg##22644 |q 9171/1 |goto 27.36,29.43
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [33.63,20.31]
step
label "Kill_Spindleweb_Lurkers"
kill 8 Spindleweb Lurker##16351 |q 9159/2 |goto 25.92,41.24
You can find more around: |notinsticky
[21.07,37.41]
[16.51,36.87]
step
label "Kill_Vampiric_Mistbats"
kill 10 Vampiric Mistbat##16354 |q 9159/1 |goto 25.92,41.24
You can find more around: |notinsticky
[21.07,37.41]
[16.51,36.87]
stickystart "Collect_Gargoyle_Fragments"
step
kill Phantasmal Seeker##16323+
collect 6 Phantasmal Substance##22566 |q 9140/1 |goto 18.67,46.01
step
label "Collect_Gargoyle_Fragments"
kill Stonewing Slayer##16324+
collect 4 Gargoyle Fragment##22567 |q 9140/2 |goto 18.67,46.01
stickystart "Kill_Deatholme_Acolytes"
stickystart "Kill_Fallen_Rangers"
step
Follow the path up |goto 18.84,58.43 < 20 |only if walking
Kill enemies around this area
collect The Lady's Necklace##22597 |n
use The Lady's Necklace##22597
accept The Lady's Necklace##9175 |goto 12.46,56.91
step
label "Kill_Deatholme_Acolytes"
kill 8 Deatholme Acolyte##16315 |q 9173/1 |goto 12.46,56.91
step
label "Kill_Fallen_Rangers"
kill 10 Fallen Ranger##16314 |q 9173/2 |goto 12.46,56.91
step
Follow the road |goto 19.01,58.51 < 40 |only if walking
Follow the path |goto 29.96,55.20 < 50 |only if walking
talk Apprentice Shatharia##16293
accept Underlight Ore Samples##9207 |goto 31.43,48.33
stickystart "Kill_Blackpaw_Shamans"
stickystart "Kill_Blackpaw_Scavengers"
stickystart "Kill_Blackpaw_Gnolls"
step
Kill Blackpaw enemies around this area
|tip You can find more inside the two nearby caves.
collect 6 Underlight Ore##22634 |q 9207/1 |goto 29.08,48.45
step
label "Kill_Blackpaw_Shamans"
kill 4 Blackpaw Shaman##16337 |q 9192/3 |goto 29.08,48.45
|tip You can find more inside the two nearby caves. |notinsticky
step
label "Kill_Blackpaw_Scavengers"
kill 6 Blackpaw Scavenger##16335 |q 9192/2 |goto 29.08,48.45
|tip You can find more inside the two nearby caves. |notinsticky
step
label "Kill_Blackpaw_Gnolls"
kill 8 Blackpaw Gnoll##16334 |q 9192/1 |goto 29.08,48.45
|tip You can find more inside the two nearby caves. |notinsticky
step
Enter the building |goto 34.35,49.14 < 10 |walk
click Dented Chest##181238
|tip Inside the building.
collect Stone of Light##22598 |q 9176/2 |goto 34.30,47.66
step
Kill enemies around this area
|tip Only Dreadbone and Deathcage enemies will drop the quest item.
collect 10 Spinal Dust##22642 |q 9218/1 |goto 38.06,58.61
step
Kill Risen enemies around this area
collect 10 Rotting Heart##22641 |q 9216/1 |goto 39.16,36.32
step
Follow the path up |goto 41.72,46.20 < 15 |only if walking
Enter the building |goto 40.60,48.36 < 10 |walk
click Worn Chest##181239
|tip Inside the building.
collect Stone of Flame##22599 |q 9176/1 |goto 40.37,49.76
step
Follow the road |goto 46.35,39.23 < 40 |only if walking
talk Apothecary Renzithen##16198
turnin The Plagued Coast##9149 |goto 47.66,34.86
step
Enter the building |goto 45.17,32.37 < 7 |walk
talk Dame Auriferous##16231
|tip Inside the building.
turnin Into Occupied Territory##9163 |goto 44.88,32.51
accept Deliver the Plans to An'telas##9166 |goto 44.88,32.51
step
talk High Executor Mavren##16252
|tip Inside the building.
turnin Retaking Windrunner Spire##9173 |goto 44.77,32.45
turnin The Lady's Necklace##9175 |goto 44.77,32.45
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
turnin Trouble at the Underlight Mines##9192 |goto 44.74,32.28
step
talk Magister Darenis##16199
accept The Sanctum of the Sun##9151 |goto 46.03,31.96
step
talk Master Chef Mouldier##16253
turnin Culinary Crunch##9171 |goto 48.43,30.93
step
Run up the ramp |goto 48.90,30.97 < 10 |only if walking
talk Magistrix Aminel##16205
|tip Upstairs on the balcony of the building.
turnin Rotting Hearts##9216 |goto 48.92,31.31
turnin Spinal Dust##9218 |goto 48.92,31.31
step
talk Arcanist Vandril##16197
|tip He walks around this area.
turnin Windrunner Village##9140 |goto 46.34,28.36
stickystart "Burn_Mummified_Troll_Remains"
step
Follow the road |goto 49.69,20.65 < 50 |only if walking
Follow the path up |goto 55.06,20.70 < 30 |only if walking
Enter the crypt |goto 58.18,27.27 < 7 |walk
Kill enemies around this area
|tip Inside the crypt.
collect 8 Troll Juju##22633 |q 9199/1 |goto 60.49,30.29
step
label "Burn_Mummified_Troll_Remains"
click Mummified Troll Remains##181148+
|tip They look like mummies laying on the ground around this area.
|tip Inside the crypt. |notinsticky
Burn #10# Mummified Troll Remains |q 9193/1 |goto 60.49,30.29
step
Follow the path |goto 61.68,28.55 < 10 |walk
Investigate the Amani Catacombs |q 9193/2 |goto 62.95,31.33
|tip Inside the crypt.
step
talk Ranger Lilatha##16295
|tip Inside the crypt.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept Escape from the Catacombs##9212 |goto 62.93,32.73
step
Watch the dialogue
|tip Follow Ranger Lilatha and protect her as she walks.
|tip She eventually walks to this location.
Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1 |goto 72.23,30.14
step
talk Farstrider Sedina##16202
|tip Inside the building.
turnin Curbing the Plague##9159 |goto 72.49,32.13
step
talk Captain Helios##16220
turnin Escape from the Catacombs##9212 |goto 72.37,29.64
stickystart "Collect_Shadowcaster_Maces"
stickystart "Kill_Shadowpine_Shadowcasters"
stickystart "Kill_Shadowpine_Headhunters"
step
kill Shadowpine Headhunter##16344+
collect 3 Headhunter Axe##23165 |q 9214/1 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
label "Collect_Shadowcaster_Maces"
kill Shadowpine Shadowcaster##16469+
collect 3 Shadowcaster Mace##23167 |q 9214/2 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
label "Kill_Shadowpine_Shadowcasters"
kill 8 Shadowpine Shadowcaster##16469 |q 9276/1 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
label "Kill_Shadowpine_Headhunters"
kill 8 Shadowpine Headhunter##16344 |q 9276/2 |goto 78.45,37.89
You can find more around [75.98,43.56]
step
talk Farstrider Solanna##16463
|tip Inside the building.
turnin Attack on Zeb'Tela##9276 |goto 72.32,31.25
accept Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
Run up the ramp |goto 72.64,29.94 < 7 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
accept A Little Dash of Seasoning##9275 |goto 72.62,31.57
step
Follow the path |goto 65.61,41.82 < 40 |only if walking
Follow the path up |goto 60.69,42.46 < 20 |only if walking
talk Magister Sylastor##16237
turnin Deliver the Plans to An'telas##9166 |goto 60.29,35.63
accept Deactivate An'owyn##9169 |goto 60.29,35.63
stickystart "Collect_Catlord_Claws"
stickystart "Collect_Hexxer_Staves"
stickystart "Kill_Shadowpine_Catlords"
stickystart "Kill_Shadowpine_Hexxers"
step
Enter the building |goto 67.52,58.08 < 10 |walk
click Fresh Fish Rack##181252
|tip Inside the building.
Poison the Fresh Fish Rack |q 9275/3 |goto 68.23,57.79
step
Follow the path |goto 63.61,60.49 < 30 |only if walking
click Raw Meat Rack##181250
Poison the Raw Meat Rack |q 9275/1 |goto 65.06,66.71
step
click Smoked Meat Rack##181251
Poison the Smoked Meat Rack |q 9275/2 |goto 62.99,75.02
step
label "Collect_Catlord_Claws"
kill Shadowpine Catlord##16345+
collect 3 Catlord Claws##22677 |q 9214/3 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
label "Collect_Hexxer_Staves"
kill Shadowpine Hexxer##16346+
collect 3 Hexxer Stave##23166 |q 9214/4 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
label "Kill_Shadowpine_Catlords"
kill 10 Shadowpine Catlord##16345 |q 9277/1 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
label "Kill_Shadowpine_Hexxers"
kill 10 Shadowpine Hexxer##16346 |q 9277/2 |goto 62.60,70.85
You can find more around [66.99,56.31]
step
Follow the path |goto 59.49,60.23 < 70 |only if walking
kill Sentinel Infiltrator##16333+
collect Crystal Controlling Orb##23191 |goto 57.69,64.87 |q 9169
step
click Night Elf Moon Crystal##181359
Deactivate the Night Elf Moon Crystal |q 9169/1 |goto 58.22,64.93
step
Follow the path up |goto 66.81,41.02 < 100 |only if walking
talk Farstrider Solanna##16463
|tip Inside the building.
turnin Assault on Zeb'Nowa##9277 |goto 72.32,31.25
step
talk Captain Helios##16220
turnin Shadowpine Weaponry##9214 |goto 72.37,29.64
step
Run up the ramp |goto 72.82,30.06 < 7 |only if walking
talk Apothecary Venustus##16464
|tip Upstairs inside the building.
turnin A Little Dash of Seasoning##9275 |goto 72.62,31.57
step
Follow the path |goto 65.61,41.82 < 40 |only if walking
Follow the path up |goto 60.69,42.46 < 20 |only if walking
talk Magister Sylastor##16237
turnin Deactivate An'owyn##9169 |goto 60.29,35.63
step
Follow the path |goto 56.80,45.18 < 20 |only if walking
Enter the building |goto 54.75,49.45 < 7 |walk
talk Magister Kaendris##16239
|tip Inside the building.
turnin The Twin Ziggurats##9176 |goto 55.07,48.84
step
talk Magister Quallestis##16291
|tip Inside the building.
turnin Underlight Ore Samples##9207 |goto 54.95,48.49
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin The Sanctum of the Sun##9151 |goto 54.87,48.55
accept War on Deatholme##9220 |goto 54.87,48.55
step
talk Apprentice Vor'el##16480
accept Clearing the Way##9281 |goto 46.40,56.42
stickystart "Kill_Ghostclaw_Ravagers"
step
kill 10 Greater Spindleweb##16352 |q 9281/1 |goto 50.90,60.79
You can find more around [42.58,58.20]
step
label "Kill_Ghostclaw_Ravagers"
kill 10 Ghostclaw Ravager##16349 |q 9281/2 |goto 50.90,60.79
You can find more around [42.58,58.20]
stickystart "Kill_Eyes_Of_DarKhan"
stickystart "Kill_Wailers"
step
label "Kill_Nerubis_Centurions"
Follow the path |goto 36.15,71.20 < 30 |only if walking
kill 6 Nerubis Centurion##16319 |q 9220/2 |goto 37.78,76.97
|tip They look like undead spiders.
You can find more around [36.62,85.32]
step
label "Kill_Eyes_Of_DarKhan"
kill 5 Eye of Dar'Khan##16320 |q 9220/1 |goto 34.69,77.03
|tip They look like shadow ghosts.
step
label "Kill_Wailers"
kill 6 Wailer##16321 |q 9220/3 |goto 34.69,77.03
|tip They look like female ghost banshees.
step
Follow the path |goto 35.32,74.19 < 30 |only if walking
talk Apprentice Vor'el##16480
turnin Clearing the Way##9281 |goto 46.40,56.42
step
Enter the building |goto 54.75,49.44 < 7 |walk
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin War on Deatholme##9220 |goto 54.87,48.55
accept Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
step
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
accept A Restorative Draught##9877 |goto 54.83,48.35
step
Follow the road |goto 46.51,38.03 < 40 |only if walking
talk Apothecary Renzithen##16198
turnin A Restorative Draught##9877 |goto 47.66,34.86
accept Captives at Deatholme##9164 |goto 47.66,34.86
step
Enter the building |goto 45.17,32.38 < 7 |walk
talk Advisor Valwyn##16289
|tip Inside the building.
turnin Investigate the Amani Catacombs##9193 |goto 44.84,32.81
step
talk Deathstalker Maltendis##16251
|tip Inside the building.
turnin Troll Juju##9199 |goto 44.75,32.28
step
Enter the building |goto 48.34,31.98 < 7 |walk
talk Innkeeper Kalarin##16542
|tip Inside the building.
home Tranquillien |goto 48.91,32.42 |q 9138
step
Follow the path |goto 43.35,50.81 < 70 |only if walking
Follow the path |goto 36.15,71.20 < 30 |only if walking
Enter the crypt |goto 31.70,73.67 < 7 |walk
kill Jurion the Deceiver##16248 |q 9170/3 |goto 32.09,74.45
|tip Inside the crypt.
step
talk Apothecary Enith##16208
|tip Inside the crypt.
Choose _<Administer the restorative draught.>_
Rescue Apothecary Enith |q 9164/1 |goto 32.14,73.95
step
Leave the crypt and follow the road |goto 30.02,76.45 < 30 |only if walking
Enter the building |goto 29.95,87.79 < 10 |walk
kill Masophet the Black##16249 |q 9170/4 |goto 29.28,88.89 |or
|tip Inside the building.
|tip He can spawn in multiple locations, so he may not be here.
Click Here if He's Not Here |confirm |q 9170 |or
step
Enter the building |goto 32.82,88.18 < 10 |walk
kill Borgoth the Bloodletter##16247 |q 9170/2 |goto 32.66,90.48 |or
|tip Inside the building.
|tip He can spawn in multiple locations, so he may not be here.
Click Here if He's Not Here |confirm |q 9170 |or
step
talk Ranger Vedoran##16209
|tip Downstairs inside the building.
Choose _<Administer the restorative draught.>_
Rescue Ranger Vedoran |q 9164/3 |goto 32.79,89.92
step
Enter the building |goto 35.06,87.96 < 10 |walk
kill Masophet the Black##16249 |q 9170/4 |goto 35.78,89.12
|tip Inside the building.
|tip He should be at this location, if he wasn't at the other location a few steps ago.
step
Follow the path up |goto 37.63,84.74 < 20 |only if walking
Enter the building |goto 39.77,83.43 < 10 |walk
talk Apprentice Varnis##16206
|tip Inside the building.
Choose _<Administer the restorative draught.>_
Rescue Ranger Vedoran |q 9164/2 |goto 40.98,83.22
step
kill Borgoth the Bloodletter##16247 |q 9170/2 |goto 41.26,83.04
|tip Inside the building.
|tip He should be at this location, if he wasn't at the other location a few steps ago.
step
kill Mirdoran the Fallen##16250 |q 9170/1 |goto 37.35,79.33
|tip Inside the building.
step
Follow the path |goto 48.66,35.17 < 20 |only if walking
Continue following the path |goto 55.80,45.63 < 40 |only if walking
Enter the building |goto 54.75,49.44 < 7 |walk
talk Arcanist Janeda##16240
|tip Upstairs inside the building.
turnin Captives at Deatholme##9164 |goto 54.84,48.35
step
talk Magister Idonis##16204
|tip Upstairs inside the building.
turnin Dar'Khan's Lieutenants##9170 |goto 54.87,48.55
step
Follow the road |goto 46.42,38.21 < 40 |only if walking
Enter the building |goto 45.16,32.38 < 7 |walk
talk High Executor Mavren##16252
|tip Inside the building.
accept Journey to Undercity##9177 |goto 44.77,32.45
step
Follow the path |goto Undercity/0 52.25,64.25 < 10 |walk
talk Lady Sylvanas Windrunner##10181
turnin Journey to Undercity##9177 |goto Undercity/0 58.05,91.79
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-61)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hellfire",
next="Leveling Guides\\The Burning Crusade (58-70)\\Zangarmarsh (61-63)",
condition_suggested=function() return level >= 58 and level <= 61 and not completedq(9472) end,
},[[
step
Follow the road |goto Swamp of Sorrows/0 35.60,58.30 < 50 |only if walking
Continue following the road |goto Blasted Lands/0 50.46,21.74 < 50 |only if walking
Follow the path down |goto Blasted Lands/0 57.28,47.04 < 20 |only if walking
talk Warlord Dar'toon##19254
accept Through the Dark Portal##9407 |goto Blasted Lands/0 58.10,56.00
step
talk Lieutenant General Orion##19253
turnin Through the Dark Portal##9407 |goto Hellfire Peninsula/0 87.35,49.78
accept Arrival in Outland##10120 |goto Hellfire Peninsula/0 87.35,49.78
step
talk Vlagga Freyfeather##18930
turnin Arrival in Outland##10120 |goto 87.34,48.14
accept Journey to Thrallmar##10289 |goto 87.34,48.14
step
talk Vlagga Freyfeather##18930 |goto 87.34,48.14
Tell her _"Send me to Thrallmar!"_
Begin Flying to Thrallmar |goto 56.27,36.38 < 30 |noway |q 10289
step
Fly to Thrallmar |goto 56.26,36.42 < 30 |c |q 10289 |notravel
step
talk General Krakork##19255
|tip He walks around this area.
turnin Journey to Thrallmar##10289 |goto 55.87,36.87
accept Report to Nazgrel##10291 |goto 55.87,36.87
step
Enter the building |goto 56.43,37.77 < 10 |walk
talk Floyd Pinkus##16602
|tip Inside the building.
home Thrallmar |goto 56.71,37.47 |q 10291
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Report to Nazgrel##10291 |goto 55.02,35.96
accept Eradicate the Burning Legion##10121 |goto 55.02,35.96
step
talk Vurtok Axebreaker##21256
|tip Inside the building.
accept Bonechewer Blood##10450 |goto 55.13,36.39
step
talk Megzeg Nukklebust##21283
accept I Work... For the Horde!##10086 |goto 55.18,38.79
step
Follow the path |goto 55.64,41.80 < 15 |only if walking
talk Sergeant Shatterskull##19256
|tip He walks around this area.
turnin Eradicate the Burning Legion##10121 |goto 58.09,41.28
accept Felspark Ravine##10123 |goto 58.09,41.28
stickystart "Slay_Flamewaker_Imps"
stickystart "Slay_Infernal_Warbringers"
step
kill 1 Dreadcaller##19434 |q 10123/1 |goto 63.80,37.41
step
label "Slay_Flamewaker_Imps"
kill 4 Flamewaker Imp##19136 |q 10123/2 |goto 63.80,37.41
step
label "Slay_Infernal_Warbringers"
kill 6 Infernal Warbringer##19261 |q 10123/3 |goto 63.80,37.41
stickystart "Collect_Salvaged_Woods"
stickystart "Collect_Bonechewer_Bloods"
step
click Salvageable Metal##182938+
|tip They look like metal cogs and piles on the ground around this area.
collect 8 Salvaged Metal##67419 |q 10086/1 |goto 61.28,47.49
You can find more around: |notinsticky
[58.63,46.69]
[55.69,46.55]
[53.15,47.13]
step
label "Collect_Salvaged_Woods"
click Salvageable Wood##182936+
|tip They look like piles of wooden planks and barrels on the ground around this area.
collect 8 Salvaged Wood##67420 |q 10086/2 |goto 61.28,47.49
You can find more around: |notinsticky
[58.63,46.69]
[55.69,46.55]
[53.15,47.13]
step
label "Collect_Bonechewer_Bloods"
Kill Bonechewer enemies around this area
collect 12 Bonechewer Blood##30327 |q 10450/1 |goto 61.28,47.49
You can find more around: |notinsticky
[58.63,46.69]
[55.69,46.55]
[53.15,47.13]
step
Follow the path |goto 55.63,41.77 < 15 |only if walking
talk Megzeg Nukklebust##21283
turnin I Work... For the Horde!##10086 |goto 55.18,38.79
accept Burn It Up... For the Horde!##10087 |goto 55.18,38.79
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Vurtok Axebreaker##21256
|tip Inside the building.
turnin Bonechewer Blood##10450 |goto 55.13,36.39
accept Apothecary Zelana##10449 |goto 55.13,36.39
step
Follow the path |goto 55.64,41.80 < 15 |only if walking
talk Sergeant Shatterskull##19256
|tip He walks around this area.
turnin Felspark Ravine##10123 |goto 58.09,41.28
accept Forward Base: Reaver's Fall##10124 |goto 58.09,41.28
step
Follow the path up |goto 63.45,45.96 < 30 |only if walking
talk Forward Commander To'arch##19273
turnin Forward Base: Reaver's Fall##10124 |goto 65.89,43.59
accept Disrupt Their Reinforcements##10208 |goto 65.89,43.59
step
talk Apothecary Zelana##21257
turnin Apothecary Zelana##10449 |goto 66.17,41.95
accept Spinebreaker Post##10242 |goto 66.17,41.95
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513 |goto 70.44,46.33 |q 10208
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Xilus##184290
|tip Stand inside of it.
Disrupt Port Xilus |q 10208/1 |goto 70.83,45.48
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Kruul##184289
|tip Stand inside of it.
Disrupt Port Kruul |q 10208/2 |goto 74.01,38.73
step
Follow the path up |goto 68.18,45.06 < 30 |only if walking
talk Forward Commander To'arch##19273
turnin Disrupt Their Reinforcements##10208 |goto 65.89,43.59
accept Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"I'm on a bombing mission for Forward Commander To'arch. I need a wyvern destroyer!"_
Mount a Wyvern Destroyer |ontaxi |goto 66.10,43.72 |q 10129
step
use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Bomb Gateway Shaadraz |q 10129/2 |goto 77.73,51.81
step
use Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Bomb Gateway Murketh |q 10129/1 |goto 78.02,47.19
step
Return the Wyvern Destroyer |offtaxi |goto 66.10,43.72 |q 10129 |notravel
step
talk Forward Commander To'arch##19273
turnin Mission: Gateways Murketh and Shaadraz##10129 |goto 65.89,43.59
accept Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
accept Return to Thrallmar##10388 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"Send me to the Abyssal Shelf!"_
Mount a Wyvern Destroyer |ontaxi |goto 66.10,43.72 |q 10162
stickystart "Destroy_Fel_Cannons"
stickystart "Slay_Ganarg_Peons"
step
use the Area 52 Special##28132
|tip Use it to bomb the area below you as you fly.
kill 5 Mo'arg Overseer##19397 |q 10162/2 |goto 72.62,20.81
|tip They look like enemies with a drill hand.
step
label "Destroy_Fel_Cannons"
use the Area 52 Special##28132
|tip Use it on the enemies on the ground as you fly.
|tip If you don't complete this in the first run, you can try again by talking to the same NPC.
Destroy #5# Fel Cannons |q 10162/3 |goto 72.62,20.81
|tip They look like brown and green metal demon cannons on the ground around this area as you fly.
step
label "Slay_Ganarg_Peons"
use the Area 52 Special##28132
|tip Use it on the enemies on the ground as you fly.
|tip If you don't complete this in the first run, you can try again by talking to the same NPC.
kill 20 Gan'arg Peon##19398 |q 10162/1 |goto 72.62,20.81
step
Return the Wyvern Destroyer |offtaxi |goto 66.10,43.72 |q 10162 |notravel
step
talk Forward Commander To'arch##19273
turnin Mission: The Abyssal Shelf##10162 |goto 65.89,43.59
step
talk Wing Commander Brack##19401
Tell him _"Lend me a Windrider. I'm going to Spinebreaker Post!"_
Begin Flying to Spinebreaker Post |ontaxi |goto 66.10,43.71 |q 10278 |future
step
Fly to Spinebreaker Post |offtaxi |goto 61.54,81.29 |q 10278 |future |notravel
step
talk Amilya Airheart##19558
fpath Spinebreaker Ridge |goto 61.65,81.20
step
talk Ogath the Mad##19683
accept The Warp Rifts##10278 |goto 61.87,81.53
step
talk Emissary Mordiba##19682
accept Make Them Listen##10220 |goto 61.78,81.70
step
talk Apothecary Albreck##21279
turnin Spinebreaker Post##10242 |goto 61.14,81.77
accept Boiling Blood##10538 |goto 61.14,81.77
step
talk Grelag##16858
accept Preparing the Salve##9345 |goto 60.93,81.67
step
click Wanted Poster##184945
accept Wanted: Worg Master Kruush##10809 |goto 61.22,80.61
step
click Hellfire Spineleaf##181372+
|tip They look like small brown and green plants all around this area.
collect 12 Hellfire Spineleaf##23205 |q 9345/1 |goto 61.87,73.51
You can find more around: |notinsticky
[66.77,68.57]
[63.12,58.68]
step
Avoid the Alliance guard near the large wooden cart |goto 62.76,57.04 < 50 |only if walking
use Flaming Torch##27479
Burn the Western Cannon |q 10087/2 |goto 55.34,53.76
step
use Flaming Torch##27479
Burn the Eastern Cannon |q 10087/1 |goto 60.66,52.43
step
Kill enemies around this area
|tip Being a level higher will make the next few quests easier.
Reach Level 59 |ding 59 |goto 57.47,53.42
stickystart "Collect_Bleeding_Hollow_Blood"
step
Avoid the Alliance guard near the large wooden cart |goto 63.71,60.49 < 50 |only if walking
Follow the path |goto 68.17,69.78 < 20 |only if walking
kill Worg Master Kruush##19442
|tip He walks around this area.
collect Worg Master's Head##31374 |q 10809/1 |goto 68.46,73.62
step
label "Collect_Bleeding_Hollow_Blood"
Kill Bleeding Hollow enemies around this area
collect 12 Bleeding Hollow Blood##30425 |q 10538 |goto 67.37,74.60
step
click Cursed Cauldron##184715+
|tip You will have to click it 6 times.
|tip Each time you click the cauldron, scarabs will run out that will attack you.
|tip Immediately after clicking the cauldron, run away and wait until the scarabs disappear.
collect 12 Boiled Blood##30430 |q 10538/1 |goto 65.20,71.20
step
Follow the path |goto 61.09,80.81 < 30 |only if walking
talk Captain Darkhowl##22107
turnin Wanted: Worg Master Kruush##10809 |goto 61.21,81.32
accept Zeth'Gor Must Burn!##10792 |goto 61.21,81.32
step
talk Grelag##16858
turnin Preparing the Salve##9345 |goto 60.93,81.67
accept Investigate the Crash##10213 |goto 60.93,81.67
step
talk Apothecary Albreck##21279
turnin Boiling Blood##10538 |goto 61.14,81.77
accept Apothecary Antonivich##10835 |goto 61.14,81.77
step
talk Zezzak##22231
accept The Eyes of Grillok##10813 |goto 61.66,81.85
step
talk Megzeg Nukklebust##21283
turnin Burn It Up... For the Horde!##10087 |goto 55.18,38.79
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Return to Thrallmar##10388 |goto 55.02,35.97
accept Forge Camp: Mageddon##10390 |goto 55.02,35.97
step
Follow the path up |goto 53.97,39.50 < 30 |only if walking
Enter the building |goto 52.75,36.44 < 7 |walk
talk Apothecary Antonivich##16588
|tip Inside the building.
turnin Apothecary Antonivich##10835 |goto 52.29,36.46
accept A Burden of Souls##10864 |goto 52.29,36.46
stickystart "Slay_Ganarg_Servants"
step
Follow the path up |goto 61.26,36.40 < 30 |only if walking
Follow the path |goto 63.26,30.39 < 30 |only if walking
kill Razorsaw##20798
|tip He walks around this area.
collect Head of Forgefiend Razorsaw##29586 |q 10390/2 |goto 64.69,30.21
collect Burning Legion Missive##29590 |q 10393 |future
step
use the Burning Legion Missive##29590
accept Vile Plans##10393
step
label "Slay_Ganarg_Servants"
kill 10 Gan'arg Servant##16947 |q 10390/1 |goto 64.95,31.81
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Magister Bloodhawk##21175
|tip Inside the building.
turnin Vile Plans##10393 |goto 55.12,36.03
step
talk Nazgrel##3230
|tip Inside the building.
turnin Forge Camp: Mageddon##10390 |goto 55.02,35.97
accept Cannons of Rage##10391 |goto 55.02,35.97
step
Follow the path up |goto 61.26,36.40 < 30 |only if walking
Follow the path |goto 63.26,30.39 < 30 |only if walking
kill Fel Cannon MKI##22461+
|tip They are lined up along the cliff edge around this area.
Slay #3# Fel Cannon MKI |q 10391/1 |goto 58.12,32.86
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Cannons of Rage##10391 |goto 55.02,35.96
accept Doorway to the Abyss##10392|goto 55.02,35.96
step
Follow the path up |goto 57.24,35.15 < 15 |only if walking
Follow the path |goto 53.83,27.75 < 30 |only if walking
kill Warbringer Arix'Amal##19298 |q 10392/1 |goto 53.09,26.47
collect Burning Legion Gate Key##29795 |q 10392/3 |goto 53.09,26.47
step
click Rune of Spite##182935
|tip It looks like a small green floating glyph inside the portal.
|tip Stand right underneath it to be able to click it.
Close the Burning Legion Gate |q 10392/2 |goto 53.05,27.63
step
Enter the building |goto 55.14,37.34 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin Doorway to the Abyss##10392 |goto 55.02,35.96
step
Follow the path down |goto 53.49,34.58 < 30 |only if walking
talk Foreman Razelcraz##16915
|tip He walks around this area.
accept Outland Sucks!##10236 |goto 51.37,30.53
stickystart "Collect_Shredder_Spare_Parts"
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close.
collect Eroded Leather Case##23338 |n
use the Eroded Leather Case##23338
accept Missing Missive##9373 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
label "Collect_Shredder_Spare_Parts"
click Shredder Parts##235310+
|tip They look like wooden crates on the ground around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin Outland Sucks!##10236 |goto 51.37,30.53
accept How to Serve Goblins##10238 |goto 51.37,30.53
stickystart "Reap_Shattered_Hand_Souls"
step
click Manni's Cage##183936
Save Manni |q 10238/1 |goto 45.12,41.09
step
click Moh's Cage##183940
Save Moh |q 10238/2 |goto 46.46,45.15
step
click Jakk's Cage##183941
Save Jakk |q 10238/3 |goto 47.49,46.60
step
label "Reap_Shattered_Hand_Souls"
Kill Shattered Hand enemies around this area
Reap #20# Shattered Hand Souls |q 10864/1 |goto 47.12,45.59
step
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin How to Serve Goblins##10238 |goto 51.37,30.53
accept Shizz Work##10629 |goto 51.37,30.53
step
use the Felhound Whistle##30803
|tip This will summon a Fel Guard Hound next to you.
Click Here After Summoning the Hound |confirm |q 10629 |goto 51.31,30.55
step
kill Deranged Helboar##16863+
|tip The Fel Guard Hound will eat their corpses.
click Felhound Poo+
|tip Small piles of poop will appear on the ground.
collect Shredder Keys##30794 |q 10629/1 |goto 49.23,30.16
step
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin Shizz Work##10629 |goto 51.37,30.53
accept Beneath Thrallmar##10630 |goto 51.37,30.53
step
Enter the mine |goto 51.59,31.74 < 7 |walk
kill Urga'zz##18976 |q 10630/1 |goto 54.38,31.34
|tip Inside the mine.
step
Follow the path |goto 53.40,31.68 < 7 |walk
Leave the mine |goto 51.59,31.74 < 7 |walk
talk Foreman Razelcraz##16915
|tip He walks around this area.
turnin Beneath Thrallmar##10630 |goto 51.37,30.53
step
Follow the path up |goto 52.13,33.54 < 30 |only if walking
Follow the path up |goto 53.75,38.94 < 20 |only if walking
Enter the building |goto 52.76,36.44 < 7 |walk
talk Apothecary Antonivich##16588
|tip Inside the building.
turnin A Burden of Souls##10864 |goto 52.28,36.46
step
Kill enemies around this area
|tip You need to be at least level 60 to be able to accept the next quests.
Reach Level 60 |ding 60 |goto 55.78,46.75
step
talk Martik Tor'seldori##16577
accept Falcon Watch##9498 |goto 55.18,39.12 |only if not BloodElf
accept Falcon Watch##9499 |goto 55.18,39.12 |only BloodElf
step
Enter the building |goto 55.14,37.37 < 10 |walk
talk Magister Bloodhawk##21175
|tip Inside the building.
accept The Agony and the Darkness##10389 |goto 55.13,36.03
step
talk Nazgrel##3230
|tip Inside the building.
accept The Assassin##9400 |goto 55.02,35.97
stickystart "Kill_Unyielding_Sorcerers"
stickystart "Kill_Unyielding_Knights"
stickystart "Kill_Unyielding_Footmen"
step
label "Accept_Decipher_the_Tome"
Kill Unyielding enemies around this area
collect A Mysterious Tome##28552 |n
use A Mysterious Tome##28552
accept Decipher the Tome##10229 |goto 55.54,80.84
|tip You will eventually automatically accept this quest after looting.
step
label "Kill_Unyielding_Sorcerers"
kill 6 Unyielding Sorcerer##16905 |q 10220/3 |goto 55.10,80.50
|tip You can find a few more on the outside of the walls around this area, but they are mostly concentrated in this area.
step
label "Kill_Unyielding_Knights"
kill 8 Unyielding Knight##16906 |q 10220/2 |goto 54.45,85.49
You can find more around: |notinsticky
[55.58,77.08]
[52.35,78.08]
step
label "Kill_Unyielding_Footmen"
kill 12 Unyielding Footman##16904 |q 10220/1 |goto 57.68,75.69
You can find more around: |notinsticky
[54.99,77.48]
[51.70,79.11]
[54.26,85.48]
step
talk "Screaming" Screed Luckheed##19367
turnin Investigate the Crash##10213 |goto 49.15,74.86
accept In Case of Emergency...##10161 |goto 49.15,74.86
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.24,74.83
step
click Zeppelin Debris##183397+
|tip They look like pieces of metal and wood around this area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 65.30,65.93
You can find more around: |notinsticky
[61.75,68.94]
[61.00,75.45]
[59.08,70.25]
[56.49,72.87]
step
Follow the path |goto 61.04,80.73 < 30 |only if walking
talk Emissary Mordiba##19682
turnin Make Them Listen##10220 |goto 61.78,81.70
step
talk Althen the Historian##19736
turnin Decipher the Tome##10229 |goto 61.74,81.78
accept The Battle Horn##10230 |goto 61.74,81.78
step
kill Lieutenant Commander Thalvos##16978
|tip He walks around this area.
collect Unyielding Battle Horn##28562 |q 10230/1 |goto 54.77,83.72
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.15,74.86
accept Voidwalkers Gone Wild##9351 |goto 49.15,74.86
stickystart "Collect_Condensed_Voidwalker_Essences"
step
use the Unstable Warp Rift Generator##29027
|tip Use it next to warp rifts.
|tip They look like big black balls of lightning around this area.
kill Unstable Voidwalker##20145+
collect 3 Warp Nether##29051 |q 10278/1 |goto 46.30,83.13
You can find another warp rift at [50.04,83.14]
step
label "Collect_Condensed_Voidwalker_Essences"
Kill Voidwalker enemies around this area
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 46.31,83.29
You can find more around [46.31,83.29]
step
Follow the path |goto 44.95,80.65 < 40 |only if walking
kill Razorfang Ravager##16933+
|tip The Razorfang Hatchlings will not drop the quest item.
click Ravager Egg+
|tip They look like large white eggs on the ground around this area.
collect 12 Ravager Egg##23217 |q 9349/1 |goto 40.90,85.11
You can find more around [36.30,90.18]
step
Follow the path |goto 35.65,90.23 < 30 |only if walking
Follow the road |goto Terokkar Forest/0 54.37,20.55 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.22,27.06 < 30 |only if walking
Cross the bridge |goto Shattrath City/0 78.05,56.78 < 20 |only if walking
talk Nutral##18940
fpath Shattrath |goto Shattrath City/0 64.07,41.11
step
Cross the bridge |goto 66.93,51.13 < 20 |only if walking
Follow the road |goto Terokkar Forest/0 38.68,26.61 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.53,26.91 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 53.21,22.18 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 36.53,90.02 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 44.69,81.04 < 40 |only if walking
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto Hellfire Peninsula/0 49.15,74.86
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto 49.24,74.84
accept Helboar, the Other White Meat##9361 |goto 49.24,74.84
step
kill Deranged Helboar##16863+
collect Tainted Helboar Meat##23270+ |n
use the Purification Mixture##23268
|tip Use it when you have Tainted Helboar Meat.
|tip They won't all become Purified.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 51.15,77.96
You can find more around:
[50.50,70.03]
[54.69,70.85]
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.24,74.84
accept Smooth as Butter##9356 |goto 49.24,74.84
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 57.40,72.19
You can find more around:
[59.09,69.04]
[62.96,67.81]
[64.53,64.36]
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.24,74.84
step
Follow the path |goto 55.78,72.34 < 50 |only if walking
talk Ogath the Mad##19683
turnin The Warp Rifts##10278 |goto 61.87,81.53
accept Void Ridge##10294 |goto 61.87,81.53
step
talk Althen the Historian##19736
turnin The Battle Horn##10230 |goto 61.74,81.78
accept Bloody Vengeance##10250 |goto 61.74,81.78
step
use the Unyielding Battle Horn##28651
kill Urtrak##19862 |q 10250/1 |goto 63.49,77.55
|tip Allies will appear and help you fight.
step
Follow the path |goto 62.57,71.47 < 70 |only if walking
Continue following the path |goto 67.39,64.94 < 70 |only if walking
Follow the path up |goto 71.83,67.25 < 20 |only if walking
Kill Voidwalker enemies around this area
collect 40 Void Ridge Soul Shard##29161 |q 10294/1 |goto 77.41,69.43
step
kill Bleeding Hollow Peon##16907+
collect 4 Bleeding Hollow Torch##31347 |goto 68.89,69.75 |q 10792
step
use Bleeding Hollow Torch##31347
collect 4 Burning Bleeding Hollow Torch##31346 |goto 69.18,69.23 |q 10792
|tip These will only last for 5 minutes, so try to hurry when doing the next 4 steps.
step
use the Burning Bleeding Hollow Torch##31346
Burn the Eastern Hovel |q 10792/2 |goto 69.50,70.23
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use the Burning Bleeding Hollow Torch##31346
Burn the Stable |q 10792/4 |goto 68.62,72.90
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use the Burning Bleeding Hollow Torch##31346
Burn the Western Hovel |q 10792/3 |goto 67.49,75.73
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use the Burning Bleeding Hollow Torch##31346
Burn the Barracks |q 10792/1 |goto 69.26,76.13
|tip If your torches burn out, kill Bleeding Hollow Peons to get more torches.
|tip You can use the torches at the Forge to get more Burning Torches to complete the quest with.
The Forge is located at [69.18,69.23]
step
use Zezzak's Shard##31463
|tip Use it on an Eye of Grillok.
|tip They look like floating green eyes around this area.
|tip Try to do it with no other enemies around.
|tip You have to let it channel until you get the debuff.
|tip You will gain a debuff that will make enemies attack you from further away.
|tip After you absorb the eye, try to mount up and run out of the Zeth'Gor area as fast as you can, and try to stay away from enemies.
Absorb an Eye of Grillok |havebuff spell:38495 |goto 66.87,72.82 |q 10813
step
Follow the path |goto 61.06,80.76 < 30 |only if walking
Return the Eye of Grillok |q 10813/1 |goto 61.64,81.81
step
talk Zezzak##22231
turnin The Eyes of Grillok##10813 |goto 61.66,81.85
step
talk Althen the Historian##19736
turnin Bloody Vengeance##10250 |goto 61.74,81.78
accept Honor the Fallen##10258 |goto 61.74,81.78
step
talk Ogath the Mad##19683
turnin Void Ridge##10294 |goto 61.87,81.53
step
talk Captain Darkhowl##22107
turnin Zeth'Gor Must Burn!##10792 |goto 61.21,81.32
step
Enter the building |goto 56.62,77.63 < 7 |walk
talk Commander Hogarth##19937
|tip Inside the building.
turnin Honor the Fallen##10258 |goto 56.92,77.37
step
Kill enemies around this area
|tip You need to be at least level 61 to be able to accept some quests soon.
Reach Level 61 |ding 61 |goto 55.78,46.75
step
Follow the road |goto 45.73,44.35 < 40 |only if walking
Follow the path |goto 33.43,45.12 < 20 |only if walking
Find Krun Spinebreaker |q 9400/1 |goto 33.61,43.53
step
clicknpc Fel Orc Corpse##17062
turnin The Assassin##9400 |goto 33.61,43.53
accept A Strange Weapon##9401 |goto 33.61,43.53
step
Follow the road |goto 27.81,57.82 < 30 |only if walking
Follow the path up |goto 25.92,61.35 < 20 |only if walking
talk Magistrix Carinda##16793
accept Arelion's Journal##9374 |goto 26.37,60.32
step
Enter the building |goto 26.83,60.06 < 7 |walk
talk Apothecary Azethen##16794
|tip Inside the building.
accept Source of the Corruption##9387 |goto 26.79,59.71
step
talk Ryathen the Somber##16791
|tip Inside the building.
accept In Need of Felblood##9366 |goto 26.98,59.54
step
talk Arcanist Calesthris Dawnstar##16792
|tip Inside the building.
accept Magic of the Arakkoa##9396 |goto 27.05,59.77
step
Follow the path up |goto 27.37,62.68 < 20 |only if walking
talk Falconer Drenna Riverwind##16790
|tip She walks around this area.
accept Trueflight Arrows##9381 |goto 27.71,60.34
accept Birds of a Feather##9397 |goto 27.71,60.34
accept Helping the Cenarion Post##10442 |goto 27.71,60.34
step
talk Innalia##18942
fpath Falcon Watch |goto 27.79,59.99
step
Enter the building |goto 28.20,60.32 < 7 |walk
click Orb of Translocation##184500 |goto 28.35,60.20
|tip Inside the building.
Teleport to the Balcony |goto 28.28,60.12 < 2 |noway |q 9340 |future
step
talk Ranger Captain Venn'ren##16789
|tip On top of the building.
turnin Falcon Watch##9498 |goto 28.49,60.24 |only if not BloodElf
turnin Falcon Watch##9499 |goto 28.49,60.24 |only BloodElf
accept The Great Fissure##9340 |goto 28.49,60.24
step
click Orb of Translocation##184500 |goto 28.39,60.20
|tip On top of the building.
Teleport Back Down |goto 28.28,60.26 < 2 |noway |q 9340
step
Enter the building |goto 55.14,37.38 < 10 |walk
talk Nazgrel##3230
|tip Inside the building.
turnin A Strange Weapon##9401 |goto 55.02,35.96
accept The Warchief's Mandate##9405 |goto 55.02,35.96
step
talk Far Seer Regulkut##16574
turnin The Warchief's Mandate##9405 |goto 54.23,37.90
accept A Spirit Guide##9410 |goto 54.23,37.90
stickystart "Collect_Felblood_Samples"
stickystart "Slay_Terrorfiends"
step
Follow the road |goto 45.73,44.35 < 40 |only if walking
Follow the path |goto 40.95,43.57 < 30 |only if walking
click Arelion's Knapsack##184115
collect Arelion's Knapsack##31955 |n
use Arelion's Knapsack##31955
collect Arelion's Journal##23339 |q 9374/1 |goto 40.04,37.18
step
label "Collect_Felblood_Samples"
kill Terrorfiend##16951+
collect 6 Felblood Sample##23269 |q 9366/1 |goto 39.81,33.29
step
label "Slay_Terrorfiends"
kill 10 Terrorfiend##16951 |q 10389/1 |goto 39.81,33.29
step
Follow the path |goto 37.73,44.39 < 30 |only if walking
Follow the path |goto 33.43,45.12 < 20 |only if walking
use the Ancestral Spirit Wolf Totem##23669
Summon an Ancestral Spirit Wolf |havebuff spell:29938 |goto 33.62,43.53 |q 9410
step
Watch the dialogue
|tip Follow the Ancestral Spirit Wolf as it walks.
|tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
|tip It eventually walks to this location.
Follow the Ancestral Spirit Wolf |goto 31.99,27.79 < 10 |q 9410
step
talk Gorkan Bloodfist##16845
turnin A Spirit Guide##9410 |goto 31.99,27.79
accept The Mag'har##9406 |goto 31.99,27.79
step
Follow the path |goto 34.38,31.33 < 30 |only if walking
kill Bonestripper Vulture##16973+
collect 8 Bonestripper Tail Feather##23387 |q 9381/1 |goto 26.02,46.15
You can find more around [29.61,55.02]
stickystart "Kill_Stonescythe_Whelps"
step
kill 3 Stonescythe Alpha##16929 |q 9340/2 |goto 34.16,63.05
|tip There are a few inside this cave.
|tip You can find more outside the cave, but they are more rare and spread out.
|tip Be careful of the elite enemy inside the cave.
step
label "Kill_Stonescythe_Whelps"
kill 8 Stonescythe Whelp##16927 |q 9340/1 |goto 34.26,61.82
step
Follow the path |goto 27.37,58.22 < 30 |only if walking
Follow the path up |goto 25.94,61.33 < 20 |only if walking
talk Magistrix Carinda##16793
turnin Arelion's Journal##9374 |goto 26.37,60.32
accept Arelion's Secret##10286 |goto 26.37,60.32
step
Enter the building |goto 26.84,60.04 < 7 |walk
talk Ryathen the Somber##16791
|tip Inside the building.
turnin In Need of Felblood##9366 |goto 26.98,59.54
accept The Cleansing Must Be Stopped##9370 |goto 26.98,59.54
step
Follow the path up |goto 27.28,62.71 < 15 |only if walking
talk Falconer Drenna Riverwind##16790
|tip She walks around this area.
turnin Trueflight Arrows##9381 |goto 27.71,60.34
step
Enter the building |goto 28.20,60.32 < 7 |walk
click Orb of Translocation##184500 |goto 28.35,60.20
|tip Inside the building.
Teleport to the Balcony |goto 28.28,60.12 < 2 |noway |q 9391 |future
step
talk Ranger Captain Venn'ren##16789
|tip On top of the building.
turnin The Great Fissure##9340 |goto 28.49,60.24
accept Marking the Path##9391 |goto 28.49,60.24
step
click Orb of Translocation##184500 |goto 28.39,60.20
|tip On top of the building.
Teleport Back Down |goto 28.28,60.26 < 2 |noway |q 9391
step
Enter the building |goto 55.14,37.37 < 10 |walk
talk Magister Bloodhawk##21175
|tip Inside the building.
turnin The Agony and the Darkness##10389 |goto 55.12,36.03
step
talk Nazgrel##3230
|tip Inside the building.
turnin The Mag'har##9406 |goto 55.02,35.97
accept Messenger to Thrall##9438 |goto 55.02,35.97
step
Enter the building |goto Orgrimmar/0 40.28,36.96 < 10 |walk
talk Thrall##4949
|tip Inside the building.
turnin Messenger to Thrall##9438 |goto Orgrimmar/0 31.61,37.83
accept Envoy to the Mag'har##9441 |goto Orgrimmar/0 31.61,37.83
step
Follow the road |goto Hellfire Peninsula/0 45.85,44.30 < 40 |only if walking
Follow the path |goto Hellfire Peninsula/0 40.91,43.42 < 30 |only if walking
use the Signaling Gem##23358
kill Draenei Anchorite##16994 |q 9370/1 |goto Hellfire Peninsula/0 39.04,40.33
|tip He appears with 2 bodyguards, so be ready to fight.
step
Follow the road |goto 36.74,44.91 < 40 |only if walking
Follow the path |goto 33.40,45.30 < 30 |only if walking
Follow the path up |goto 30.07,34.94 < 20 |only if walking
Follow the path |goto 34.27,34.48 < 30 |only if walking
Follow the path |goto 32.58,28.41 < 10 |only if walking
talk Gorkan Bloodfist##16845
turnin Envoy to the Mag'har##9441 |goto 31.99,27.79
step
talk Earthcaller Ryga##17123
accept A Debilitating Sickness##9442 |goto 32.09,28.36
step
Follow the path |goto 34.48,30.93 < 30 |only if walking
Follow the path down |goto 33.77,34.61 < 30 |only if walking
Follow the path |goto 30.69,39.83 < 70 |only if walking
click Southern Beacon
Light the Southern Beacon |q 9391/3 |goto 36.10,65.31
step
Enter the cave |goto 34.16,63.03 < 7 |walk
click Drycap Mushroom
|tip They look like brown mushrooms on the ground around this area.
|tip Inside the cave.
|tip Be careful to avoid Blacktalon the Savage, an elite enemy inside the cave.
collect Drycap Mushroom##23753 |q 9442/1 |goto 34.21,64.53
step
Leave the cave |goto 34.16,63.03 < 7 |walk
click Central Beacon
Light the Central Beacon |q 9391/2 |goto 34.09,60.08
step
click Western Beacon
Light the Western Beacon |q 9391/1 |goto 30.07,60.57
stickystart "Collect_Haaleshi_Scrolls"
stickystart "Cage_A_Female_Kaliri_Hatchling"
step
Follow the path |goto 26.20,71.39 < 20 |only if walking
Follow the path up |goto 26.04,77.31 < 7 |only if walking
kill Avruu##17084
|tip He walks along this ledge around this area.
collect Avruu's Orb##23580 |n
use Avruu's Orb##23580
accept Avruu's Orb##9418 |goto 25.66,76.40
step
click Haal'eshi Altar##181606
Choose _"Place Avruu's Orb on the Altar."_
kill Aeranas##17085
|tip He will eventually surrender.
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 28.92,81.46
step
label "Collect_Haaleshi_Scrolls"
Kill Haal'eshi enemies around this area
collect 4 Haal'eshi Scroll##23483 |q 9396/1 |goto 25.88,75.23
step
label "Cage_A_Female_Kaliri_Hatchling"
click Kaliri Nest##181582+
|tip They look like bird nests with pink eggs in them on the ground around this area.
|tip Either a male or female hatchling will appear.
use the Empty Birdcage##23485
|tip Use it on a Female Kaliri Hatchling.
Cage the Female Kaliri Hatchling |q 9397/1 |goto 25.88,75.23
step
talk Wounded Blood Elf Pilgrim##16993
|tip Inside the cave.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept The Road to Falcon Watch##9375 |goto 24.57,76.05
step
Watch the dialogue
|tip Follow the Wounded Blood Elf Pilgrim and protect her as she walks.
|tip Let her walk ahead and get attacked first, so she can tank the enemies.
|tip Focus on killing the enemy she is fighting.
|tip She eventually walks to this location.
|tip If you find this quest too difficult, try to find someone to help you, or skip it.
Escort the Wounded Blood Elf Pilgrim to Falcon Watch |q 9375/1 |goto 27.17,61.89
step
talk Taleris Dawngazer##17015
turnin The Road to Falcon Watch##9375 |goto 27.16,61.90
accept A Pilgrim's Plight##9376 |goto 27.16,61.90
step
Enter the building |goto 26.83,60.05 < 7 |walk
talk Arcanist Calesthris Dawnstar##16792
|tip Inside the building.
turnin Magic of the Arakkoa##9396 |goto 27.05,59.77
step
talk Ryathen the Somber##16791
|tip Inside the building.
turnin The Cleansing Must Be Stopped##9370 |goto 26.99,59.54
step
Follow the path up |goto 27.27,62.70 < 15 |only if walking
talk Falconer Drenna Riverwind##16790
|tip She walks around this area.
turnin Birds of a Feather##9397 |goto 27.71,60.34
step
Enter the building |goto 28.20,60.32 < 7 |walk
click Orb of Translocation##184500 |goto 28.35,60.20
|tip Inside the building.
Teleport to the Balcony |goto 28.28,60.12 < 2 |noway |q 9391
step
talk Ranger Captain Venn'ren##16789
|tip On top of the building.
turnin Marking the Path##9391 |goto 28.49,60.24
step
click Orb of Translocation##184500 |goto 28.39,60.20
|tip On top of the building.
Teleport Back Down |goto 28.28,60.26 < 2 |noway |q 9376
step
click Torn Pilgrim's Pack##184478
collect Torn Pilgrim's Pack##23343 |q 9376/1 |goto 22.12,68.30
step
talk Taleris Dawngazer##17015
turnin A Pilgrim's Plight##9376 |goto 27.16,61.90
step
Enter the building |goto 26.83,60.05 < 7 |walk
talk Innkeeper Bazil Olof'tazun##18905
|tip Inside the building.
home Falcon Watch |goto 26.88,59.53
step
talk Magister Aledis##20159
|tip He rides along the road on a hawkstrider mount, going between Falcon Watch and Zangarmarsh.
Ask him _"Magistrix Carinda has sent me to ask you about Arelion's secret. Who was he seeing?"_
kill Magister Aledis##20159
|tip He will eventually surrender.
turnin Arelion's Secret##10286 |goto 25.62,61.21
accept The Mistress Revealed##10287 |goto 25.62,61.21
Also check around: |notinsticky
[26.83,58.54]
[32.50,56.73]
[29.36,50.77]
[21.29,49.04]
[8.52,50.14]
step
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.70,52.09
turnin Helping the Cenarion Post##10442 |goto 15.70,52.09
accept Demonic Contamination##9372 |goto 15.70,52.09
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
accept Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
talk Amythiel Mistwalker##16885
accept The Cenarion Expedition##9912 |goto 16.03,52.15
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 22.82,55.58
You can find more around: |notinsticky
[18.96,55.46]
[23.82,60.38]
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.70,52.09
accept Testing the Antidote##10255 |goto 15.70,52.09
step
use the Cenarion Antidote##23337
|tip Use it on a Hulking Helboar around this area.
kill Dreadtusk
Administer the Antidote |q 10255/1 |goto 22.82,55.58
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.70,52.09
stickystart "Collect_Demonic_Essences"
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
accept Naladu##10403 |goto 15.59,58.75
step
Run up the stairs |goto 14.30,61.14 < 20 |only if walking
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Naladu##10403 |goto 16.27,65.08
accept A Traitor Among Us##10367 |goto 16.27,65.08
step
Enter the building |goto 14.37,62.66 < 7 |walk
click Metal Coffer##184466
|tip Inside the building.
|tip Wait for Arzeth the Merciless, an elite enemy who walks around nearby, to walk down the stairs before trying to enter the building.
collect Sha'naar Key##29501 |q 10367/1 |goto 14.34,63.49
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin A Traitor Among Us##10367 |goto 16.27,65.08
accept The Dreghood Elders##10368 |goto 16.27,65.08
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Akoru |q 10368/2 |goto 15.59,58.75
step
Enter the building |goto 13.03,58.64 < 7 |walk
talk Aylaan the Waterwaker##20679
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Aylaan |q 10368/3 |goto 13.00,58.43
step
Enter the building |goto 13.29,60.77 < 7 |walk
talk Morod the Windstirrer##20677
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Morod |q 10368/1 |goto 13.13,61.04
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin The Dreghood Elders##10368 |goto 16.27,65.08
accept Arzeth's Demise##10369 |goto 16.27,65.08
step
use the Staff of the Dreghood Elders##29513
|tip Use it on Arzeth the Merciless.
|tip He will become weakened and easier to kill.
|tip He spawns at this location, but walks around this area.
kill Arzeth the Powerless##20680 |q 10369/1 |goto 14.33,62.17
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Arzeth's Demise##10369 |goto 16.27,65.081
step
label "Collect_Demonic_Essences"
kill Illidari Taskmaster##17058+
|tip Kill the Illidari Taskmasters, and ignore their helpers.
|tip They will stop attacking you after you kill the taskmasters.
collect 5 Demonic Essence##29113 |q 9387/1 |goto 14.91,58.72
stickystart "Kill_Thornfang_Venomspitters"
step
kill 8 Thornfang Ravager##19349 |q 10159/1 |goto 10.10,50.68
step
label "Kill_Thornfang_Venomspitters"
kill 8 Thornfang Venomspitter##19350 |q 10159/2 |goto 10.10,50.68
step
Enter the building |goto Zangarmarsh/0 78.67,63.27 < 5 |walk
talk Innkeeper Coryth Stoktron##18907
|tip Inside the building.
buy Cenarion Spirits##29112 |goto Zangarmarsh/0 78.49,62.95 |q 9472
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
turnin Keep Thornfang Hill Clear!##10159 |goto Hellfire Peninsula/0 15.68,52.16
step
Follow the path |goto 27.59,48.43 < 100 |only if walking
Follow the path up |goto 30.07,34.94 < 20 |only if walking
Follow the path |goto 34.27,34.48 < 30 |only if walking
Follow the path |goto 32.58,28.41 < 10 |only if walking
talk Earthcaller Ryga##17123
turnin A Debilitating Sickness##9442 |goto 32.09,28.36
accept Administering the Salve##9447 |goto 32.09,28.36
step
use the Healing Salve##23394
|tip Use it on Debilitated Mag'har Grunts.
|tip They look like orcs that aren't wearing shoulder armor on the ground around this whole area.
|tip They tend to be near bonfires.
Heal #10# Debilitated Grunts |q 9447/1 |goto 35.77,32.80
You can find more around [32.39,32.74]
step
Follow the path |goto 32.58,28.41 < 10 |only if walking
talk Earthcaller Ryga##17123
turnin Administering the Salve##9447 |goto 32.09,28.36
step
talk Apothecary Azethen##16794
|tip Inside the building.
turnin Source of the Corruption##9387 |goto 26.79,59.71
step
talk Magistrix Carinda##16793
turnin The Mistress Revealed##10287 |goto 26.37,60.32
accept Arelion's Mistress##9472 |goto 26.37,60.32
step
talk Viera Sunwhisper##17226
|tip Accept the "Life's Finer Pleasures" quest.
Click Here After Accepting the Quest |confirm |goto 27.15,62.11 |q 9472
step
Watch the dialogue
|tip Follow Viera Sunwhisper as she walks.
|tip She eventually walks to this location.
clicknpc Viera Sunwhisper##17226
use Carinda's Scroll of Retribution##23693
|tip Use it on Viera Sunwhisper when she stops walking.
Use Carinda's Scroll of Retribution |q 9472/1 |goto 26.54,63.91
step
talk Magistrix Carinda##16793
turnin Arelion's Mistress##9472 |goto 26.37,60.32
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Zangarmarsh (61-63)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Zangarmarsh",
next="Leveling Guides\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)",
condition_suggested=function() return level >= 61 and level <= 63 and not completedq(9817) end,
},[[
step
talk Ikeyen##17956
accept The Umbrafen Tribe##9747 |goto Zangarmarsh/0 80.39,64.16
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto 80.32,64.17
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
accept The Dying Balance##9895 |goto 78.53,63.15
step
talk Innkeeper Coryth Stoktron##18907
|tip Inside the building.
home Cenarion Refuge |goto 78.49,62.94 |q 9785 |future
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin The Cenarion Expedition##9912 |goto 78.40,62.02
accept Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept Warden Hamoot##9778 |goto 78.40,62.02
step
Enter the building |goto 79.14,65.21 < 5 |only if walking
talk Warden Hamoot##17858
|tip Upstairs at the top of the tower.
turnin Warden Hamoot##9778 |goto 79.08,65.27
accept A Warm Welcome##9728 |goto 79.08,65.27
step
talk Gur'zil##20762
fpath Swamprat Post |goto 84.77,55.11
step
talk Zurai##18011
turnin Report to Zurai##10103 |goto 85.28,54.75
accept Thick Hydra Scales##9774 |goto 85.28,54.75
accept News from Zangarmarsh##9796 |goto 85.28,54.75
step
talk Reavij##18012
accept Menacing Marshfangs##9770 |goto 84.96,54.04
step
talk Magasha##18016
accept There's No Explanation for Fashion##9769 |goto 84.36,54.34
accept No More Mushrooms!##9773 |goto 84.36,54.34
step
use the Potion of Water Breathing##25539
|tip Use it next to the lake around this area.
|tip You will be killing enemies underwater in the lake in the next step.
Gain Greater Water Breathing |havebuff 134716 |goto 73.67,61.43 |q 9773
stickystart "Collect_Thick_Hydra_Scales"
step
kill Umbrafen Eel##18138+
|tip Underwater in the whole lake around this area.
collect 8 Eel Filet##24374 |q 9773/1 |goto 75.09,73.78
step
label "Collect_Thick_Hydra_Scales"
kill Mire Hydra##18213+
|tip Along the edge of the lake around this area.
collect 12 Thick Hydra Scale##24375 |q 9774/1 |goto 73.67,61.43
You can find more around [77.41,74.42]
stickystart "Collect_Unidentified_Plant_Parts"
stickystart "Collect_Naga_Claws"
stickystart "Collect_Diaphanous_Wings"
step
Investigate Umbrafen Lake |q 9716/1 |goto 71.15,81.89
|tip Outside the cave.
step
label "Collect_Unidentified_Plant_Parts"
Kill enemies around this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
label "Collect_Naga_Claws"
Kill Darkcrest enemies around this area
collect 30 Naga Claws##24280 |q 9728/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
label "Collect_Diaphanous_Wings"
kill Umbraglow Stinger##18132+
collect 8 Diaphanous Wing##24372 |q 9769/1 |goto 80.35,71.69
You can find more around [78.57,81.53]
step
kill Boglash##18281 |q 9895/1 |goto 81.68,72.37
|tip He walks around this area in the water.
|tip He spawns near this location.
|tip He's elite, but you should be able to solo him fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
Also check around [83.50,77.87]
stickystart "Kill_Umbrafen_Oracles"
stickystart "Kill_Umbrafen_Seers"
stickystart "Kill_Umbrafen_Witchdoctors"
step
Enter the building |goto 84.94,90.15 < 10 |only if walking
kill Kataru##18080 |q 9747/1 |goto 85.29,90.93
|tip At the top of the tower.
step
label "Kill_Umbrafen_Oracles"
kill 6 Umbrafen Oracle##18077 |q 9747/2 |goto 84.66,86.90
step
label "Kill_Umbrafen_Seers"
kill 8 Umbrafen Seer##18079 |q 9747/3 |goto 84.66,86.90
step
label "Kill_Umbrafen_Witchdoctors"
kill 6 Umbrafen Witchdoctor##20115 |q 9747/4 |goto 84.66,86.90
step
talk Kayra Longmane##17969
|tip Inside the building.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept Escape from Umbrafen##9752 |goto 83.37,85.54
step
Watch the dialogue
|tip Follow Kayra Longmane and protect her as she walks.
|tip She eventually walks to this location.
Escort Kayra Longmane |q 9752/1 |goto 79.83,71.20
step
talk Ikeyen##17956
turnin The Umbrafen Tribe##9747 |goto 80.39,64.15
accept A Damp, Dark Place##9788 |goto 80.39,64.15
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto 80.32,64.17
accept Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Windcaller Blackhoof##18070
accept Safeguarding the Watchers##9894 |goto 80.37,64.72
step
talk Warden Hamoot##17858
|tip At the top of the tower.
turnin A Warm Welcome##9728 |goto 79.09,65.27
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
turnin The Dying Balance##9895 |goto 78.53,63.15
accept Watcher Leesa'oh##9697 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9709)
accept What's Wrong at Cenarion Thicket?##9957 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9968)
step
talk Ysiel Windsinger##17841
|tip On the balcony of the building.
turnin Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept As the Crow Flies##9718 |goto 78.40,62.02
turnin Escape from Umbrafen##9752 |goto 78.40,62.02
step
use the Stormcrow Amulet##25465
Watch the dialogue
Explore the Lakes of Zangarmarsh |q 9718/1 |goto 78.40,62.02
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin As the Crow Flies##9718 |goto 78.40,62.02
accept Balance Must Be Preserved##9720 |goto 78.40,62.02
step
talk Zurai##18011
turnin Thick Hydra Scales##9774 |goto 85.28,54.75
accept Searching for Scout Jyoba##9771 |goto 85.28,54.75
accept Report to Shadow Hunter Denjai##9775 |goto 85.28,54.75
step
talk Magasha##18016
turnin There's No Explanation for Fashion##9769 |goto 84.36,54.34
turnin No More Mushrooms!##9773 |goto 84.36,54.34
accept A Job Undone##9899 |goto 84.36,54.34
stickystart "Kill_Marshfang_Rippers"
step
kill Sporewing##18280 |q 9899/1 |goto 77.2,45.9
|tip He looks like a larger brown sporebat flies low to the ground around this area.
step
label "Kill_Marshfang_Rippers"
kill 10 Marshfang Ripper##18130 |q 9770/1 |goto 85.18,49.64
You can find more around: |notinsticky
[76.64,49.21]
[72.21,47.21]
stickystart "Collect_Bog_Lord_Tendrils"
step
talk Scout Jyoba##18035
turnin Searching for Scout Jyoba##9771 |goto 80.75,36.28
accept Jyoba's Report##9772 |goto 80.75,36.28
stickystart "Collect_Scout_Jyobas_Report"
step
kill Withered Giant##18124+
collect Withered Basidium##24484 |n
use the Withered Basidium##24484
accept Withered Basidium##9828 |goto 81.11,41.33
step
label "Collect_Scout_Jyobas_Report"
kill Withered Giant##18124+
collect Scout Jyoba's Report##24373 |q 9772/1 |goto 81.11,41.33
step
label "Collect_Bog_Lord_Tendrils"
kill Withered Bog Lord##19402+
collect 6 Bog Lord Tendril##24291 |goto 81.11,41.33 |q 9743 |future
|tip Save these, you will need them for a later quest.
|tip Be careful to not accidenatally sell these to a vendor.
stickystart "Accept_Drain_Schematics"
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Serpent Lake Controls |q 9720/3 |goto 61.99,40.83
step
label "Accept_Drain_Schematics"
Kill Bloodscale enemies around this area
collect Drain Schematics##24330 |n
use the Drain Schematics##24330
accept Drain Schematics##9731 |goto 60.65,37.90
step
use the Ironvine Seeds##24355
|tip An enemy will appear.
Disable the Lagoon Pump Controls |q 9720/4 |goto 63.13,64.12
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.59,80.31
stickystart "Kill_Marsh_Lurkers"
stickystart "Kill_Marsh_Dredgers"
step
Follow the path up |goto 75.10,89.17 < 10 |only if walking
Enter the cave |goto 74.45,92.05 < 15 |walk
Follow the path |goto 71.85,93.00 < 10 |walk
click Ikeyen's Belongings##182122
|tip Inside the cave.
collect Ikeyen's Belongings##24411 |q 9788/1 |goto 70.53,97.90
step
Follow the path |goto 72.25,96.81 < 10 |walk
kill Lord Klaq##18282 |q 9894/1 |goto 72.50,94.03
|tip He walks around this area.
|tip Downstairs inside the cave.
|tip If you find it too difficult, try to find someone to help you, or skip it.
step
label "Kill_Marsh_Lurkers"
kill 10 Marsh Lurker##18136 |q 10096/2 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Marsh_Dredgers"
kill 10 Marsh Dredger##18137 |q 10096/1 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
step
talk Lauranna Thar'well##17909
turnin Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Ikeyen##17956
turnin A Damp, Dark Place##9788 |goto 80.39,64.16
step
talk Windcaller Blackhoof##18070
turnin Safeguarding the Watchers##9894 |goto 80.37,64.72
accept Blessings of the Ancients##9785 |goto 80.37,64.72
step
talk Ashyen##17900
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, wise ancient."_
Receive the Mark of Lore |q 9785/1 |goto 81.09,63.91
step
talk Keleth##17901
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, mighty ancient."_
Receive the Mark of War |q 9785/2 |goto 78.98,67.42
step
talk Windcaller Blackhoof##18070
turnin Blessings of the Ancients##9785 |goto 80.37,64.72
step
talk Zurai##18011
turnin Jyoba's Report##9772 |goto 85.28,54.75
step
talk Reavij##18012
turnin Menacing Marshfangs##9770 |goto 84.96,54.04
accept Nothin' Says Lovin' Like a Big Stinger##9898 |goto 84.96,54.04
turnin Withered Basidium##9828 |goto 84.96,54.04
step
talk Magasha##18016
turnin A Job Undone##9899 |goto 84.36,54.34
step
Follow the path |goto 35.51,53.00 < 20 |only if walking
Continue following the path |goto 33.56,50.15 < 15 |only if walking
talk Du'ga##18791
fpath Zabra'jin |goto 33.07,51.07
step
talk Seer Janidi##18017
accept Spirits of the Feralfen##9846 |goto 32.38,51.96
step
talk Zurjaya##18018
accept Angling to Beat the Competition##9845 |goto 32.25,49.60
step
talk Witch Doctor Tor'gash##18014
accept Burstcap Mushrooms, Mon!##9814 |goto 32.89,48.90
step
click Wanted Poster##184945
accept WANTED: Boss Grog'ak##9820 |goto 31.99,49.33
accept Wanted: Chieftain Mummaki##10117 |goto 31.99,49.33
step
talk Gambarinka##18015
accept Stinging the Stingers##9841 |goto 31.63,49.20
step
Run up the stairs |goto 30.40,50.85 < 7 |walk
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin Report to Shadow Hunter Denjai##9775 |goto 30.74,50.89
step
_Note:_
|tip While completing the many quests coming up, keep an eye out for Glowcaps.
|tip They look like small orange glowing mushrooms on the ground.
|tip You will need 10 of them for a later quest, so just collect them as you walk around.
|tip You will be reminded to get them later, also.
Click Here to Continue |confirm |q 9808 |future
step
Follow the path |goto 30.10,52.16 < 15 |only if walking
click Burstcap Mushroom##182095+
|tip They look like small, blue and brown mushrooms around this area.
collect 6 Burstcap Mushroom##24468 |q 9814/1 |goto 28.92,52.56
You can find more around: |notinsticky
[34.60,49.06]
[37.51,47.67]
stickystart "Kill_Fenclaw_Thrashers"
step
Locate the Drain |q 9731/1 |goto 50.38,40.87
|tip Underwater.
|tip Swim straight down at this location.
step
label "Kill_Fenclaw_Thrashers"
kill 10 Fenclaw Thrasher##18214 |q 9845/1 |goto 49.99,40.92
|tip Underwater around this area.
step
kill Blacksting##18283
|tip He flies low to the ground around this area.
collect Blacksting's Stinger##25448 |q 9898/1 |goto 49.69,59.67
step
Kill Feralfen enemies around this area
collect 10 Feralfen Protection Totem##24497 |q 9846/1 |goto 46.21,60.62
step
kill "Count" Ungula##18285
|tip He flies low to the ground around this area.
collect "Count" Ungula's Mandible##25459 |n
use "Count" Ungula's Mandible##25459
accept The Count of the Marshes##9911 |goto 32.90,59.52
step
Kill enemies around this area
|tip Only Sporebats and Marsh Walkers will drop these.
collect 6 Fertile Spores##24449 |goto 37.02,58.64 |q 9806 |future
|tip Save these, you will need them for a later quest.
step
Follow the road |goto 29.69,56.20 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin Watcher Leesa'oh##9697 |goto 23.32,66.20 |only if havequest(9697) or completedq(9697)
accept Observing the Sporelings##9701 |goto 23.32,66.20
turnin The Count of the Marshes##9911 |goto 23.32,66.20
step
talk Fahssn##17923
|tip He walks around this area.
accept The Sporelings' Plight##9739 |goto 19.07,63.86
accept Natural Enemies##9743 |goto 19.07,63.86
step
talk Fahssn##17923
|tip He walks around this area.
turnin Natural Enemies##9743 |goto 19.07,63.86
stickystart "Collect_Mature_Spore_Sacs"
step
Investigate the Spawning Glen |q 9701/1 |goto 14.89,61.18
step
label "Collect_Mature_Spore_Sacs"
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 14.10,60.87
step
talk Fahssn##17923
|tip He walks around this area.
turnin The Sporelings' Plight##9739 |goto 19.07,63.86
step
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |n
_And_
Kill enemies around this area
collect 6 Bog Lord Tendril##24291 |n
|tip Once you've collected either of these, turn them in to Fahssn.
Reach Neutral Reputation with the Sporeggar |q 50131/1 |goto 14.10,60.87
Talk to Fahssn around [19.07,63.86]
|tip He walks around this area.
|tip Repeatedly complete the "More Spore Sacs" and "More Tendrils!" quests until you reach Neutral reputation with Sporeggar.
step
talk Fahssn##17923
|tip He walks around this area.
accept Sporeggar##9919 |goto 19.07,63.86
step
talk Watcher Leesa'oh##17831
turnin Observing the Sporelings##9701 |goto 23.32,66.21
accept A Question of Gluttony##9702 |goto 23.32,66.21
step
click Discarded Nutriment##182256+
|tip They look like small green-glowing dark colored mushrooms on the ground around this area.
collect 10 Discarded Nutriment##24233 |q 9702/1 |goto 30.03,62.90
step
talk Watcher Leesa'oh##17831
turnin A Question of Gluttony##9702 |goto 23.32,66.21
accept Familiar Fungi##9708 |goto 23.32,66.21
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Marshlight Lake Pump Controls |q 9720/2 |goto 25.42,42.87
stickystart "Collect_Mushroom_Samples"
step
kill Boss Grog'ak##18159
|tip He looks like a larger armored ogre that walks around this area.
collect Boss Grog'ak's Head##24472 |q 9820/1 |goto 34.42,34.59
step
label "Collect_Mushroom_Samples"
Kill Ango'rosh enemies around this area
collect 15 Mushroom Sample##24238 |q 9708/1 |goto 32.97,32.57
step
Follow the path |goto 32.30,46.95 < 20 |only if walking
talk Witch Doctor Tor'gash##18014
turnin Burstcap Mushrooms, Mon!##9814 |goto 32.89,48.90
accept Have You Ever Seen One of These?##9816 |goto 32.89,48.90
step
talk Zurjaya##18018
turnin Angling to Beat the Competition##9845 |goto 32.25,49.60
accept The Biggest of Them All##9903 |goto 32.25,49.60
accept Pursuing Terrorclaw##9904 |goto 32.25,49.60
step
talk Seer Janidi##18017
turnin Spirits of the Feralfen##9846 |goto 32.38,51.96
accept A Spirit Ally?##9847 |goto 32.38,51.96
step
Enter the building |goto 31.07,50.66 < 7 |only if walking
Run up the stairs |goto 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin WANTED: Boss Grog'ak##9820 |goto 30.74,50.89
accept Impending Attack##9822 |goto 30.74,50.89
step
Follow the path |goto 30.15,49.28 < 15 |only if walking
talk Watcher Leesa'oh##17831
turnin Familiar Fungi##9708 |goto 23.32,66.20
accept Stealing Back the Mushrooms##9709 |goto 23.32,66.20
step
Enter the building |goto 19.54,51.83 < 7 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Sporeggar##9919 |goto 19.68,52.06
accept Glowcap Mushrooms##9808 |goto 19.68,52.06
step
Enter the building |goto 19.23,49.72 < 7 |walk
talk Gshaff##17925
|tip Inside the building.
accept Fertile Spores##9806 |goto 19.15,49.39
step
talk Gshaff##17925
|tip Inside the building.
turnin Fertile Spores##9806 |goto 19.15,49.39
step
click Glowcap##182053+
|tip They look like small orange glowing mushrooms on the ground around this area.
collect 10 Glowcap Mushroom##24245 |q 9808/1 |goto 32.71,36.34
step
Enter the building |goto 19.54,51.83 < 7 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Glowcap Mushrooms##9808 |goto 19.68,52.06
step
kill Terrorclaw##20477 |q 9904/1 |goto 22.33,45.90
step
kill 8 Marshlight Bleeder##18133 |q 9841/1 |goto 15.81,41.93
You can find more around [21.01,31.65]
step
Run up the ramp |goto 19.51,27.09 < 7 |only if walking
click Ango'rosh Attack Plans##182166
|tip At the top of the tower.
collect Ango'rosh Attack Plans##24471 |q 9822/1 |goto 19.89,27.09
step
kill Mragesh##18286 |q 9903/1 |goto 42.21,41.43
|tip Underwater.
step
Follow the path |goto 35.08,52.00 < 20 |only if walking
Follow the path |goto 33.56,50.15 < 20 |only if walking
talk Zurjaya##18018
turnin The Biggest of Them All##9903 |goto 32.25,49.60
turnin Pursuing Terrorclaw##9904 |goto 32.25,49.60
step
talk Gambarinka##18015
turnin Stinging the Stingers##9841 |goto 31.63,49.20
accept The Sharpest Blades##9842 |goto 31.63,49.20
step
Enter the building |goto 31.07,50.66 < 7 |only if walking
Run up the stairs |goto 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin Impending Attack##9822 |goto 30.74,50.89
accept Us or Them##9823 |goto 30.74,50.89
accept Message to the Daggerfen##10118 |goto 30.74,50.89
step
Follow the path |goto 33.52,50.13 < 20 |only if walking
use the Feralfen Totem##24498
kill Feralfen Serpent Spirit##18185 |q 9847/1 |goto 44.33,66.53
step
kill Marshfang Slicer##18131+
collect 10 Marshfang Slicer Blade##24493 |q 9842/1 |goto 35.90,58.70
You can find more around [25.34,57.53]
step
Follow the path |goto 35.51,53.01 < 20 |only if walking
Follow the path |goto 33.55,50.17 < 20 |only if walking
talk Seer Janidi##18017
turnin A Spirit Ally?##9847 |goto 32.38,51.96
step
talk Gambarinka##18015
turnin The Sharpest Blades##9842 |goto 31.63,49.20
step
Enter the building |goto 31.08,50.65 < 7 |walk
talk Merajit##18245
|tip Inside the building.
home Zabra'jin |goto 30.66,50.93 |q 9775
stickystart "Slay_Daggerfen_Assassins"
stickystart "Slay_Daggerfen_Muckdwellers"
step
Follow the path |goto 32.29,47.05 < 20 |only if walking
Enter the building |goto 24.31,26.75 < 7 |only if walking
kill Chieftain Mummaki##19174
|tip Upstairs, at the top of the building..
collect Chieftain Mummaki's Totem##27943 |q 10117/1 |goto 23.78,26.75
step
use the Murloc Cage##24470
Release Murlocs at Daggerfen Village |q 9816/1 |goto 26.78,22.60
step
label "Slay_Daggerfen_Assassins"
kill 3 Daggerfen Assassin##18116 |q 10118/1 |goto 26.78,22.60
|tip They are stealthed around this area.
step
label "Slay_Daggerfen_Muckdwellers"
kill 15 Daggerfen Muckdweller##18115 |q 10118/2 |goto 26.78,22.60
stickystart "Collect_Boxes_of_Mushrooms"
stickystart "Kill_Angorosh_Maulers"
stickystart "Kill_Angorosh_Souleaters"
step
Cross the bridge |goto 17.08,13.11 < 15 |only if walking
Follow the path up |goto 17.77,9.83 < 10 |only if walking
Enter the building |goto 18.69,7.80 < 10 |walk
kill Overlord Gorefist##18160 |q 9823/1 |goto 18.40,7.79
|tip Inside the building.
step
label "Collect_Boxes_of_Mushrooms"
Kill Ango'rosh enemies around this area
click Box of Mushrooms##182050+
|tip They look like wooden boxes on the ground around this area.
collect 10 Box of Mushrooms##24240 |q 9709/1 |goto 19.74,6.90
step
label "Kill_Angorosh_Maulers"
kill 10 Ango'rosh Mauler##18120 |q 9823/2 |goto 19.74,6.90
step
label "Kill_Angorosh_Souleaters"
kill 10 Ango'rosh Souleater##18121 |q 9823/3 |goto 20.08,4.75
step
Run up the stairs |goto 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
turnin Us or Them##9823 |goto 30.74,50.89
turnin Message to the Daggerfen##10118 |goto 30.74,50.89
turnin Wanted: Chieftain Mummaki##10117 |goto 30.74,50.89
accept News for Rakoria##10105 |goto 30.74,50.89
step
talk Witch Doctor Tor'gash##18014
turnin Have You Ever Seen One of These?##9816 |goto 32.89,48.90
step
Follow the path |goto 30.09,52.16 < 20 |only if walking
talk Watcher Leesa'oh##17831
turnin Stealing Back the Mushrooms##9709 |goto 23.32,66.20
step
Follow the path |goto 30.11,52.11 < 15 |only if walking
talk Reavij##18012
turnin Nothin' Says Lovin' Like a Big Stinger##9898 |goto 84.96,54.04
step
Enter the building |goto 78.67,63.27 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside, on the balcony of the building.
turnin Balance Must Be Preserved##9720 |goto 78.40,62.02
turnin Drain Schematics##9731 |goto 78.40,62.02
accept Warning the Cenarion Circle##9724 |goto 78.40,62.02
step
talk Amythiel Mistwalker##16885
turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula/0 16.03,52.15
accept Return to the Marsh##9732 |goto Hellfire Peninsula/0 16.03,52.15
step
Enter the building |goto Zangarmarsh/0 78.67,63.27 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside, on the balcony of the building.
turnin Return to the Marsh##9732 |goto Zangarmarsh/0 78.40,62.02
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Terokkar",
next="Leveling Guides\\The Burning Crusade (58-70)\\Nagrand (65-67)",
condition_suggested=function() return level >= 63 and level <= 65 and not completedq(10009) end,
},[[
step
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
talk Seth##18653
|tip In the doorway of the building.
|tip He may walk around this area.
accept Rather Be Fishin'##10037 |goto 63.95,15.53
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.75,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.75,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Scryers faction by completing this quest.
step
_Detecting the Faction You Chose:_
The Aldor |condition rep ('The Aldor') >= Neutral	|or	|next "Aldor_Allegiance"
The Scryers |condition rep ('The Scryers') >= Neutral	|or	|next "Scryers_Allegiance"
step
label "Aldor_Allegiance"
talk Archmage Khadgar##18166
|tip Inside the building.
accept Ishanah##10554 |goto Shattrath City/0  54.75,44.32
step
Ride the elevator up |goto 41.68,38.61 < 10 |only if walking
talk Adyen the Lightwarden##18537
accept Marks of Kil'jaeden##10325 |goto 30.76,34.63
step
Enter the building |goto 25.41,30.48 < 10 |walk
talk Ishanah##18538
|tip Inside the building.
turnin Ishanah##10554 |goto 23.96,29.72
accept Restoring the Light##10021 |goto 23.96,29.72
step
Enter the building |goto 28.25,48.09 < 10 |walk
talk Minalei##19046
|tip Inside the building.
home Shattrath City |goto 28.29,49.36 |q 10553 |future
|next "Aldor_Scryers_Merge"
step
label "Scryers_Allegiance"
talk Archmage Khadgar##18166
|tip Inside the building.
accept Voren'thal the Seer##10553 |goto Shattrath City/0 54.75,44.32
step
Ride the elevator up |goto 49.96,62.94 < 10 |only if walking
talk Magistrix Fyalenn##18531
accept Firewing Signets##10412 |goto 45.20,81.46
step
Enter the building |goto 28.50,33.48 < 15 |walk
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
turnin Voren'thal the Seer##10553 |goto 42.80,91.70
step
Enter the building |goto 55.80,80.54 < 7 |walk
talk Innkeeper Haelthol##19232
|tip Inside the building.
home Shattrath City |goto 56.34,81.56 |q 9793 |future
|next "Aldor_Scryers_Merge"
step
label "Aldor_Scryers_Merge"
Cross the bridge |goto Shattrath City/0 58.35,25.41 < 20 |only if walking
kill Shimmerscale Eel##18750+
|tip Underwater around this area.
collect 8 Pristine Shimmerscale Eel##25891 |q 10037/1 |goto Terokkar Forest/0 39.54,10.61
step
talk Earthbinder Tavgren##18446
turnin What's Wrong at Cenarion Thicket?##9957 |goto 44.33,26.31
accept Strange Energy##9968 |goto 44.33,26.31
accept Clues in the Thicket##9971 |goto 44.33,26.31
stickystart "Collect_Vicious_Teromoth_Samples"
step
talk Warden Treelos##18424
|tip He walks around this area.
accept It's Watching You!##9951 |goto 44.11,23.37
step
Enter the building |goto 44.58,21.78 < 15 |only if walking
click Strange Object##183789
|tip Inside the building.
Examine the Strange Object |q 9971/1 |goto 45.12,21.78
step
Enter the building |goto 43.47,22.25 < 7 |only if walking
kill Naphthal'ar##18438 |q 9951/1 |goto 43.39,22.10
|tip At the top of the tower.
step
talk Warden Treelos##18424
|tip He walks around this area.
turnin It's Watching You!##9951 |goto 44.11,23.37
step
label "Collect_Vicious_Teromoth_Samples"
kill Vicious Teromoth##18437+
collect 4 Vicious Teromoth Sample##24279 |q 9968/2 |goto 44.28,23.46
step
talk Earthbinder Tavgren##18446
turnin Clues in the Thicket##9971 |goto 44.33,26.31
step
kill Teromoth##18468+
collect 4 Teromoth Sample##25672 |q 9968/1 |goto 45.8,29.8
step
talk Earthbinder Tavgren##18446
turnin Strange Energy##9968 |goto 44.33,26.31
accept By Any Means Necessary##9978 |goto 44.33,26.31
step
talk Empoor##18482
|tip He walks along the road between Shattrath City and Tuurem.
Tell him _"Empoor, you're going to tell me what I want to know, or else!"_
kill Empoor##18482
|tip He will eventually surrender.
turnin By Any Means Necessary##9978 |goto 47.46,27.17
accept Wind Trader Lathrai##9979 |goto 47.46,27.17
step
Avoid Tuurem |goto 50.38,32.48 < 50 |only if walking
Follow the road |goto 52.60,38.53 <  30 |only if walking
Cross the bridge |goto 51.37,43.09 < 20 |only if walking
talk Mokasa##18249
turnin News from Zangarmarsh##9796 |goto 49.71,43.33
step
talk Kerna##18807
fpath Stonebreaker Hold |goto 49.19,43.43
step
Enter the building |goto 49.24,45.16 < 15 |walk
talk Rokag##18386
|tip Inside the building.
accept Stymying the Arakkoa##9987 |goto 48.96,44.63
accept Surrender to the Horde##10862 |goto 48.96,44.63
step
talk Advisor Faila##18712
|tip Inside the building.
accept Speak with Scout Neftis##10039 |goto 48.93,44.58
accept Arakkoa War Path##10868 |goto 48.93,44.58
step
talk Kurgatok##18383
|tip Inside the building.
accept An Unwelcome Presence##10000 |goto 48.77,45.69
accept Magical Disturbances##10027 |goto 48.77,45.69
step
Enter the building |goto 49.94,46.10 < 7 |walk
talk Malukaz##18384
|tip Inside the building.
accept Vestments of the Wolf Spirit##10018 |goto 50.17,46.43
step
click Wanted Poster##184945
accept Wanted: Bonelashers Dead!##10034 |goto 49.81,45.28
step
talk Rakoria##18385
turnin News for Rakoria##10105 |goto 50.13,44.88
accept Olemba Seed Oil##9993 |goto 50.13,44.88
step
talk Seth##18653
|tip In the doorway of the building.
turnin Rather Be Fishin'##10037 |goto Shattrath City/0 63.95,15.53
step
talk Wind Trader Lathrai##18484
turnin Wind Trader Lathrai##9979 |goto 72.23,30.73
accept A Personal Favor##10112 |goto 72.23,30.73
step
Run up the ramp |goto 56.45,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on this wooden platform.
accept The Outcast's Plight##10917 |goto 52.01,18.10
step
talk Rilak the Redeemed##22292
turnin Surrender to the Horde##10862 |goto 52.57,21.00
accept The Eyes of Skettis##10847 |goto 52.57,21.00
step
Cross the bridge |goto 66.81,50.96 < 20 |only if walking
Follow the path |goto Terokkar Forest/0 46.39,26.38 < 70 |c |q 10847
stickystart "Kill_Shienor_Talonites"
stickystart "Kill_Shienor_Sorcerers"
step
click Eastern Altar##182565
Purify the Eastern Altar |q 10021/2 |goto 49.22,20.33
|only if havequest(10021) or completedq(10021)
step
click Northern Altar##182563
Purify the Northern Altar |q 10021/1 |goto 50.65,16.59
|only if havequest(10021) or completedq(10021)
step
click Western Altar##182566
Purify the Western Altar |q 10021/3 |goto 48.13,14.49
|only if havequest(10021) or completedq(10021)
step
Run up the ramp |goto 49.86,16.56 < 7 |only if walking
kill Ashkaz##18539 |q 9987/1 |goto 49.1,16.9
|tip Up on the wooden platform.
step
click Eye of Veil Reskk##185200
|tip Up on the wooden platform.
collect Eye of Veil Reskk##25638 |q 10847/1 |goto 50.13,19.40
step
Follow the path |goto 50.10,24.39 < 50 |only if walking
Enter the building |goto 59.34,23.68 < 7 |walk
kill Ayit##18540|q 9987/2 |goto 59.42,23.50
|tip Inside the building.
step
Enter the tree and follow the path up |goto 59.74,25.34 < 7 |only if walking
click Eye of Veil Shienor##185201
|tip Up on the wooden platform.
collect Eye of Veil Shienor##25642 |q 10847/2 |goto 57.87,23.15
step
label "Kill_Shienor_Talonites"
kill 14 Shienor Talonite##18449 |q 10868/1 |goto 58.77,25.44
step
label "Kill_Shienor_Sorcerers"
kill 6 Shienor Sorcerer##18450 |q 10868/2 |goto 58.77,25.44
|tip They are usually near or inside arakkoa buildings and structures around this area.
stickystart "Collect_Olemba_Seeds"
stickystart "Collect_Timber_Worg_Tails"
step
kill 10 Warp Stalker##18464 |q 10027/1 |goto 56.44,35.90
|tip They look like white lizards that sometimes stealth.
You can find more around: |notinsticky
[57.81,40.85]
[59.89,47.31]
step
label "Collect_Olemba_Seeds"
click Olemba Cone##182541+
|tip They look like small shiny white-blue pine cones on the ground near trees around this area.
collect 30 Olemba Seed##25745 |q 9993/1 |goto 56.44,35.90
You can find more around: |notinsticky
[57.81,40.85]
[59.89,47.31]
step
label "Collect_Timber_Worg_Tails"
Kill Timber Worg enemies around this area
|tip They look like wolves.
collect 12 Timber Worg Pelt##25812 |q 10018/1 |goto 56.44,35.90
You can find more around: |notinsticky
[57.81,40.85]
[59.89,47.31]
step
Cross the bridge |goto 51.39,43.09 < 20 |only if walking
talk Rakoria##18385
turnin Olemba Seed Oil##9993 |goto 50.13,44.88
accept And Now, the Moment of Truth##10201 |goto 50.13,44.88
step
talk Grek##19606
Ask him _"Grek, will you try out this new weapon oil Rakoria made?"_
Have Grek Test Olemba Oil |q 10201/1 |goto 49.85,45.30
step
talk Rakoria##18385
turnin And Now, the Moment of Truth##10201 |goto 50.13,44.88
step
Enter the building |goto 49.93,46.10 < 7 |walk
talk Malukaz##18384
|tip Inside the building.
turnin Vestments of the Wolf Spirit##10018 |goto 50.17,46.43
accept Patriarch Ironjaw##10023 |goto 50.17,46.43
step
Enter the building |goto 49.28,45.17 < 15 |walk
talk Kurgatok##18383
|tip Inside the building.
turnin Magical Disturbances##10027 |goto 48.77,45.69
step
talk Advisor Faila##18712
|tip Inside the building.
turnin Arakkoa War Path##10868 |goto 48.93,44.58
step
Enter the building |goto Shattrath City/0 25.47,30.53 < 10 |walk
talk Ishanah##18538
|tip Inside the building.
turnin Restoring the Light##10021 |goto Shattrath City/0 23.97,29.71
|only if havequest(10021) or completedq(10021)
step
talk Rilak the Redeemed##22292
turnin The Eyes of Skettis##10847 |goto 52.52,21.01
accept Seek Out Kirrik##10849 |goto 52.52,21.01
step
Cross the bridge |goto 66.81,50.96 < 20 |only if walking
Follow the road |goto Terokkar Forest/0 36.25,32.51 < 40 |only if walking
Follow the path |goto Terokkar Forest/0 36.66,42.48 < 30 |only if walking
talk Scout Neftis##18714
turnin Speak with Scout Neftis##10039 |goto 39.03,43.75
accept Who Are They?##10041 |goto 39.03,43.75
step
talk Scout Neftis##18714
Tell her _"Scout Neftis, I need another disguise."_
Gain an Orc Disguise |havebuff spell:32756 |goto 39.03,43.75 |q 10041
stickystart "Keep_Disguise"
step
Enter the building |goto 39.69,39.69 < 7 |walk
talk Shadowy Advisor##18719
|tip Inside the building.
Ask her _"Advisor, what's the latest news?"_
Talk to the Shadowy Advisor |q 10041/3 |goto 40.32,39.04
step
talk Shadowy Initiate##18716
Ask him _"What are you doing there?"_
Talk to the Shadowy Initiate |q 10041/1 |goto 39.03,39.68
step
talk Shadowy Laborer##18717
|tip It walks around this area.
Ask him _"Why are you fixing all of this up?"_
Talk to the Shadowy Laborer |q 10041/2 |goto 38.08,41.10
He can also be around [41.00,40.65]
step
label "Keep_Disguise"
_Be Careful to Not Lose the Shadowy Disguise_
|tip Shadowy Hunters can see through the disguise and will attack you.
|tip If you mount after getting the disguise, you will lose it.
|tip If you lose your disguise, you can talk to Scout Neftis again to get another one.
step
talk Scout Neftis##18714
turnin Who Are They?##10041 |goto 39.03,43.75
accept Kill the Shadow Council!##10043 |goto 39.03,43.75
stickystart "Slay_Shadowy_Executioners"
stickystart "Slay_Shadowy_Summoners"
step
Enter the building |goto 39.71,39.68 < 7 |only if walking
kill Shadowmaster Grieve##18720 |q 10043/3 |goto 40.37,39.14
|tip Inside the building.
step
label "Slay_Shadowy_Executioners"
kill 10 Shadowy Executioner##16519 |q 10043/1 |goto 39.34,40.64
step
label "Slay_Shadowy_Summoners"
kill 10 Shadowy Summoner##17088 |q 10043/2 |goto 39.34,40.64
step
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Seek Out Kirrik##10849 |goto 37.26,51.22
accept Veil Skith: Darkstone of Terokk##10839 |goto 37.26,51.22
step
talk Ethan##22365
accept Missing Friends##10852 |goto 37.73,51.34
step
talk Lakotae##22420
accept The Infested Protectors##10896 |goto 37.86,51.69
step
talk Mekeda##22370
|tip He walks around this area.
accept Before Darkness Falls##10878 |goto 37.44,51.31
step
Kill enemies around this area
kill 25 Wood Mite##22419+ |q 10896/1 |goto 39.68,47.32
|tip They appear after you kill Infested Root-walkers or Rotting Forest-Ragers.
You can find more around [46.39,50.87]
stickystart "Collect_Lathrais_Stolen_Goods"
stickystart "Rescue_Children"
stickystart "Collect_Arakkoa_Feathers"
step
use the Rod of Purification##31610
Attempt to Purify the Darkstone of Terokk |q 10839/1 |goto 30.82,42.07
step
Run up the ramp |goto 29.92,42.99 < 7 |only if walking
kill Urdak##18541|q 9987/3 |goto 31.4,42.5
|tip He walks around this area.
|tip Up on this wooden platform.
step
label "Collect_Lathrais_Stolen_Goods"
Kill Skithian enemies around this area
collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto 30.87,42.43
step
label "Rescue_Children"
Kill Skithian enemies around this area
collect Veil Skith Prison Key##31655+ |n
click Veil Skith Cage##1787+
|tip They look like yellow cages on the ground and up on the wooden platforms around this area.
Rescue #12# Children |q 10852/1 |goto 30.87,42.43
step
label "Collect_Arakkoa_Feathers"
Kill Skithian enemies around this area
collect 30 Arakkoa Feather##25719 |q 10917/1 |goto 30.38,42.31
|tip Be careful not to accidentally sell these to a vendor.
step
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Veil Skith: Darkstone of Terokk##10839 |goto 37.26,51.22
accept Veil Rhaze: Unliving Evil##10848 |goto 37.26,51.22
step
talk Ethan##22365
turnin Missing Friends##10852 |goto 37.73,51.34
step
talk Lakotae##22420
turnin The Infested Protectors##10896 |goto 37.86,51.69
step
talk High Priest Orglum##22278
accept The Tomb of Lights##10840 |goto 37.45,50.76
accept Vengeful Souls##10842 |goto 37.45,50.76
stickystart "Collect_Marks_Of_Kiljaeden"
stickystart "Kill_Cabal_Skirmishers"
stickystart "Kill_Cabal_Spellweavers"
stickystart "Kill_Cabal_Initiates"
step
Kill Cabal enemies around this area
collect Cabal Orders##31707 |n
use the Cabal Orders##31707
accept Cabal Orders##10880 |goto 39.61,55.95
step
label "Collect_Marks_Of_Kiljaeden"
Kill Cabal enemies around this area
collect 10 Mark of Kil'jaeden##29425 |q 10325/1 |goto 39.61,55.95
|only if havequest(10325) or completedq(10325)
step
label "Kill_Cabal_Skirmishers"
kill 8 Cabal Skirmisher##21661 |q 10878/1 |goto 39.61,55.95
step
label "Kill_Cabal_Spellweavers"
kill 4 Cabal Spell-weaver##21902 |q 10878/2 |goto 39.61,55.95
step
label "Kill_Cabal_Initiates"
kill 2 Cabal Initiate##21907 |q 10878/3 |goto 39.61,55.95
step
kill 10 Bonelasher##18470 |q 10034/1 |goto 43.88,51.84 |count 10
|tip You will come back to kill more.
stickystart "Kill_Ethereal_Nethermancers"
stickystart "Kill_Ethereal_Plunderers"
step
Enter the tomb |goto 47.00,55.32 < 7 |walk
kill 5 Vengeful Draenei##21636 |q 10842/1 |goto 49.15,54.80
|tip Inside the tomb. |notinsticky
step
label "Kill_Ethereal_Nethermancers"
kill 10 Ethereal Nethermancer##21370 |q 10840/1 |goto 47.00,55.30
|tip Inside and outside the tomb. |notinsticky
step
label "Kill_Ethereal_Plunderers"
kill 10 Ethereal Plunderer##21368 |q 10840/2 |goto 47.00,55.30
|tip Inside and outside the tomb. |notinsticky
step
kill 20 Bonelasher##18470 |q 10034/1 |goto 43.88,51.84
|tip Leave the tomb, if you ended up in there in the previous guide step.
step
talk Mekeda##22370
|tip He walks around this area.
turnin Before Darkness Falls##10878 |goto 37.44,51.31
turnin Cabal Orders##10880 |goto 37.44,51.31
accept The Shadow Tomb##10881 |goto 37.44,51.31
step
talk High Priest Orglum##22278
turnin The Tomb of Lights##10840 |goto 37.45,50.76
turnin Vengeful Souls##10842 |goto 37.45,50.76
step
talk Soolaveen##18675
accept Recover the Bones##10030 |goto 37.06,49.53
step
talk Adyen the Lightwarden##18537
turnin Marks of Kil'jaeden##10325 |goto Shattrath City/0 30.73,34.62
|only if havequest(10325) or completedq(10325)
step
Run up the ramp |goto 56.37,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on the wooden platform.
turnin The Outcast's Plight##10917 |goto 52.01,18.10
step
talk Wind Trader Lathrai##18484
turnin A Personal Favor##10112 |goto 72.23,30.76
accept Investigate Tuurem##9990 |goto 72.23,30.76
step
Enter the building |goto Terokkar Forest/0 49.28,45.17 < 15 |walk
talk Advisor Faila##18712
|tip Inside the building.
turnin Kill the Shadow Council!##10043 |goto Terokkar Forest/0 48.93,44.58
step
talk Mawg Grimshot##18705
turnin Wanted: Bonelashers Dead!##10034 |goto 49.25,45.88
step
Follow the path |goto 52.25,42.96 < 50 |only if walking
kill 12 Warped Peon##18595 |q 10000/1 |goto 66.30,51.51
step
talk Shadowstalker Kaide##18566
turnin An Unwelcome Presence##10000 |goto 63.38,42.72
accept The Firewing Liaison##10003 |goto 63.38,42.72
accept What Happens in Terokkar Stays in Terokkar##10008 |goto 63.38,42.72
stickystart "Slay_Bonechewer_Devastators"
stickystart "Slay_Bonechewer_Backbreakers"
step
Follow the path up |goto 66.38,51.99 < 20 |only if walking
Enter the building |goto 67.12,54.40 < 10 |only if walking
kill Lisaile Fireweaver##18583 |q 10003/1 |goto 67.85,53.28
|tip Inside the building.
step
click Fel Orc Plans##182549
|tip Inside the building.
accept An Unseen Hand##10013 |goto 67.92,53.56
step
label "Slay_Bonechewer_Devastators"
kill 10 Bonechewer Devastator##16772 |q 10008/1 |goto 66.34,52.51
step
label "Slay_Bonechewer_Backbreakers"
kill 6 Bonechewer Backbreaker##16810 |q 10008/2 |goto 66.34,52.51
step
talk Shadowstalker Kaide##18566
turnin The Firewing Liaison##10003 |goto 63.38,42.72
turnin What Happens in Terokkar Stays in Terokkar##10008 |goto 63.38,42.72
step
kill Ironjaw##18670
|tip He looks like a darker brown wolf that walks around this area.
collect Ironjaw's Pelt##25837 |q 10023/1 |goto 66.52,35.09
step
click Sealed Box##182542
|tip Inside the building.
collect Sealed Box##25727 |q 9990/1 |goto 54.00,29.99
step
talk Earthbinder Tavgren##18446
turnin Investigate Tuurem##9990 |goto 44.33,26.31
accept What Are These Things?##9995 |goto 44.33,26.31
step
Avoid Tuurem |goto 50.38,32.48 < 50 |only if walking
Follow the road |goto 52.60,38.53 <  30 |only if walking
Cross the bridge |goto 51.37,43.09 < 20 |only if walking
Enter the building |goto 49.27,45.16 < 15 |walk
talk Rokag##18386
|tip Inside the building.
turnin Stymying the Arakkoa##9987 |goto 48.96,44.63
turnin An Unseen Hand##10013 |goto 48.96,44.63
step
talk Tooki##18447
turnin What Are These Things?##9995 |goto 50.04,45.93
accept Report to Stonebreaker Camp##10448 |goto 50.04,45.93
step
Enter the building |goto 49.94,46.11 < 7 |walk
talk Malukaz##18384
|tip Inside the building.
turnin Patriarch Ironjaw##10023 |goto 50.17,46.43
accept Welcoming the Wolf Spirit##10791 |goto 50.17,46.43
step
use the Ceremonial Incense##31344
|tip Inside the building.
Help Malukaz Summon the Wolf Spirit |q 10791/1 |goto 50.17,46.43
step
talk Malukaz##18384
|tip Inside the building.
turnin Welcoming the Wolf Spirit##10791 |goto 50.17,46.43
step
Follow the path |goto 52.02,42.96 < 50 |only if walking
talk Sergeant Chawni##21007
|tip She walks around this area.
turnin Report to Stonebreaker Camp##10448 |goto 63.30,41.98
accept Attack on Firewing Point##9997 |goto 63.30,41.98
stickystart "Kill_Firewing_Bloodwarders"
stickystart "Kill_Firewing_Warlocks"
stickystart "Collect_Firewing_Signets"
step
kill 10 Firewing Defender##5355 |q 9997/1 |goto 71.26,37.30
step
label "Kill_Firewing_Bloodwarders"
kill 10 Firewing Bloodwarder##1410 |q 9997/2 |goto 71.26,37.30
step
label "Kill_Firewing_Warlocks"
kill 10 Firewing Warlock##16769 |q 9997/3 |goto 71.26,37.30
step
label "Collect_Firewing_Signets"
Kill Firewing enemies around this area
collect 10 Firewing Signet##29426 |q 10412/1 |goto 71.76,37.07
|only if havequest(10412) or completedq(10412)
step
talk Sergeant Chawni##21007
|tip She walks around this area.
turnin Attack on Firewing Point##9997 |goto 63.30,41.98
accept The Final Code##10447 |goto 63.30,41.98
step
Enter the building |goto 73.44,36.20 < 7 |only if walking
kill Sharth Voldoun##18554
|tip At the top of the tower.
|tip Click the Orb of Translocation on the balcony of the building to teleport to the top of the tower.
collect The Final Code##29912 |goto 73.92,35.80 |q 10447
step
click Orb of Translocation##184500 |goto 74.17,36.48
|tip At the top of the tower.
Return to the Ground |goto 73.33,36.32 < 10 |noway |q 10447
step
click Mana Bomb##184725
Activate the Mana Bomb |q 10447/1 |goto 71.27,37.37
step
Cross the bridge |goto 51.37,43.09 < 20 |only if walking
talk Tooki##18447
turnin The Final Code##10447 |goto 50.04,45.93
accept Letting Earthbinder Tavgren Know##10006 |goto 50.04,45.93
step
talk Magistrix Fyalenn##18531
turnin Firewing Signets##10412 |goto Shattrath City/0 45.20,81.46
|only if havequest(10412) or completedq(10412)
step
Cross the bridge |goto 66.81,50.96 < 20 |only if walking
talk Earthbinder Tavgren##18446
turnin Letting Earthbinder Tavgren Know##10006 |goto Terokkar Forest/0 44.34,26.31
stickystart "Kill_Screeching_Spirits"
stickystart "Kill_Spirit_Ravens"
stickystart "Collect_Restless_Bones"
step
Follow the road |goto 35.86,34.38 < 50 |only if walking
Follow the path |goto 36.34,44.57 < 50 |only if walking
kill 4 Deathtalon Spirit##21198 |q 10848/1 |goto 27.64,54.66
step
label "Kill_Screeching_Spirits"
kill 4 Screeching Spirit##21200 |q 10848/2 |goto 27.04,56.76
step
label "Kill_Spirit_Ravens"
kill 2 Spirit Raven##21324 |q 10848/3 |goto 27.04,56.76
step
Enter the tomb |goto 31.23,52.68 < 7 |walk
click Cabal Chest##185226
|tip Inside the tomb.
collect Gavel of K'alen##31710 |q 10881/2 |goto 29.67,51.69
step
click Cabal Chest##185226
|tip Inside the tomb.
collect Drape of Arunen##31709 |q 10881/1 |goto 32.08,51.19
step
click Cabal Chest##185226
|tip Inside the tomb.
collect Scroll of Atalor##31708 |q 10881/3 |goto 31.16,46.69
step
talk Akuno##22377
|tip Inside the tomb.
accept Escaping the Tomb##10887 |goto 30.62,49.06
step
Watch the dialogue
|tip Follow Akuno and protect him as he walks.
|tip He eventually walks to this location.
Escort Akuno |q 10887/1 |goto 33.77,51.61
step
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Veil Rhaze: Unliving Evil##10848 |goto 37.26,51.22
accept Veil Lithic: Preemptive Strike##10861 |goto 37.26,51.22
step
talk Mekeda##22370
|tip He walks around this area.
turnin Escaping the Tomb##10887 |goto 37.44,51.31
turnin The Shadow Tomb##10881 |goto 37.44,51.31
stickystop "Collect_Restless_Bones"
stickystart "Kill_Malevolent_Hatchlings"
step
Follow the path |goto 26.06,64.47 < 40 |only if walking
click Cursed Egg##185211+
|tip They look like brown spiked eggs on the ground around this area.
|tip Not every hatchling will be redeemed, some will attack you.
Redeem #3# Hatchlings |q 10861/1 |goto 24.00,72.47
step
label "Kill_Malevolent_Hatchlings"
click Cursed Egg##185211+ |notinsticky
|tip They look like brown spiked eggs on the ground around this area. |notinsticky
|tip Not every hatchling will be malevolent, some will be redeemed. |notinsticky
kill 3 Malevolent Hatchling##22337 |q 10861/2 |goto 24.00,72.47
stickystart "Collect_Restless_Bones"
step
Follow the path |goto 28.29,73.37 < 70 |only if walking
talk Commander Ra'vaj##22446
accept An Improper Burial##10913 |goto 31.00,76.11
step
talk Chief Archaeologist Letoll##22458
accept Digging Through Bones##10922 |goto 31.10,76.14
step
Watch the dialogue
|tip Follow Chief Archaeologist Letoll, and the group, and protect them as they walk.
|tip They eventually walk to this location.
kill Bone Sifter##22466
Protect the Explorers |q 10922/1 |goto 30.15,70.86
step
talk Scout Navrin##22364
accept Taken in the Night##10873 |goto 31.44,75.66
step
talk Dwarfowitz##22481
turnin Digging Through Bones##10922 |goto 30.98,76.18
step
talk Oakun##22456
accept The Dread Relic##10877 |goto 31.06,76.53
stickystart "Burn_Slain_Auchenai_Warrior_Corpses"
step
use the Sha'tari Torch##31769
|tip Use it next to Slain Sha'tar Vindicators.
|tip They look like armored draenei corpses on the ground around this area.
Burn #8# Slain Sha'tar Vindicator Corpses |q 10913/1 |goto 34.33,74.75
You can find more around [37.23,76.30]
step
label "Burn_Slain_Auchenai_Warrior_Corpses"
use the Sha'tari Torch##31769
|tip Use it next to Slain Auchenai Warriors.
|tip They look like robed draenei corpses on the ground around this area.
Burn #8# Slain Auchenai Warrior Corpses |q 10913/2 |goto 34.33,74.75
You can find more around [37.23,76.30]
step
talk Commander Ra'vaj##22446
turnin An Improper Burial##10913 |goto 31.00,76.11
accept A Hero Is Needed##10914 |goto 31.00,76.11
stickystart "Kill_Auchenai_Doomsayers"
step
kill 12 Auchenai Initiate##21284 |q 10914/1 |goto 33.92,72.14
step
label "Kill_Auchenai_Doomsayers"
kill 5 Auchenai Doomsayer##21285 |q 10914/2 |goto 33.92,72.14
step
label "Collect_Restless_Bones"
click Restless Bones##182584+
|tip They look like small white-glowing piles of bones on the ground around this area.
collect 10 Restless Bones##25842 |q 10030/1 |goto 33.92,72.14
step
click Massive Treasure Chest##185220
|tip A lot of enemies will appear.
|tip Immediately run away to the next step in the guide.
collect Dread Relic##31697 |q 10877/1 |goto 43.94,76.44
step
Enter the building |goto 44.10,72.28 < 15 |only if walking
Follow the path down |goto 41.87,71.13 < 10 |only if walking
Enter the building |goto 37.26,65.61 < 15 |walk
talk Ha'lei##19697
|tip Inside the building.
accept I See Dead Draenei##10227 |goto 35.09,65.09
step
talk Ramdor the Mad##19417
|tip Inside the building.
turnin Recover the Bones##10030 |goto 35.14,66.27
accept Helping the Lost Find Their Way##10031 |goto 35.14,66.27
turnin I See Dead Draenei##10227 |goto 35.14,66.27
accept Ezekiel##10228 |goto 35.14,66.27
step
Leave the building |goto 37.30,65.61 < 15 |walk
Enter the building |goto 40.78,71.01 < 10 |only if walking
Follow the path up |goto 42.88,71.72 < 10 |only if walking
Leave the building |goto 44.14,72.39 < 15 |only if walking
talk Vindicator Haylen##22462
accept For the Fallen##10920 |goto 49.71,76.18
stickystart "Kill_Dreadfang_Widows"
step
kill Netherweb Victim##22355+
|tip They look like white cocoons squirming on the ground around this area.
|tip They may not all contain Sha'tar Warriors.
Free #6# Sha'tar Warriors |q 10873/1 |goto 52.17,79.09
step
label "Kill_Dreadfang_Widows"
kill 20 Dreadfang Widow##18467 |q 10920/1 |goto 52.17,79.09
step
talk Vindicator Haylen##22462
turnin For the Fallen##10920 |goto 49.71,76.18
stickystart "Kill_Broken_Skeletons"
step
kill 10 Lost Spirit##18460 |q 10031/1 |goto 38.37,78.24
step
label "Kill_Broken_Skeletons"
kill 10 Broken Skeleton##16805 |q 10031/2 |goto 38.37,78.24
step
talk Scout Navrin##22364
turnin Taken in the Night##10873 |goto 31.44,75.64
step
talk Commander Ra'vaj##22446
turnin A Hero Is Needed##10914 |goto 31.00,76.11
accept The Fallen Exarch##10915 |goto 31.00,76.11
step
talk Oakun##22456
turnin The Dread Relic##10877 |goto 31.06,76.53
step
Follow the path |goto 33.96,68.11 < 30 |only if walking
click Auchenai Coffin##184999
Watch the dialogue
kill Reanimated Exarch##22452
Destroy the Contents of the Auchenai Coffin |q 10915/1 |goto 35.81,65.61
step
talk Commander Ra'vaj##22446
turnin The Fallen Exarch##10915 |goto 31.00,76.11
step
Follow the path |goto 32.55,60.15 < 100 |only if walking
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Veil Lithic: Preemptive Strike##10861 |goto 37.26,51.22
step
talk Soolaveen##18675
turnin Helping the Lost Find Their Way##10031 |goto 37.05,49.54
step
talk Ezekiel##19715
|tip He walks clockwise around this whole area surrounding the center of Shattrath City.
turnin Ezekiel##10228 |goto Shattrath City/0 61.62,40.74
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Nagrand (65-67)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Nagrand",
next="Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)",
condition_suggested=function() return level >= 65 and level <= 67 and not completedq(10172) end,
},[[
step
_Detecting Kurenai Reputation:
Unfriendly or Less	|condition rep ('Kurenai') <= Unfriendly	|or	|next "Get_Kurenai_Rep_To_Neutral"
Neutral or Higher	|condition rep ('Kurenai') >= Neutral		|or	|next "Start_Nagrand"
step
label "Get_Kurenai_Rep_To_Neutral"
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.76,44.32 |or
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.76,44.32 |or
|tip You will become aligned with the Scryers faction by completing this quest.
step
talk Messenger Gazgrigg##18091
accept Reinforcements for Garadar##9797 |goto Zangarmarsh/0 32.01,50.43
step
Follow the road |goto 78.68,57.37 < 70 |only if walking
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand/0 71.57,40.52
step
talk Hemet Nesingwary##18180
|tip He walks around this area.
accept Clefthoof Mastery##9789 |goto 71.52,40.82
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto 71.38,40.62
stickystart "Collect_Pairs_Of_Ivory_Tusks"
stickystart "Kill_Talbuk_Stags"
stickystart "Kill_Clefthoofs"
stickystart "Kill_Windrocs"
step
kill Dust Howler##17158+
|tip They look like tornado enemies.
|tip They are usually pretty spread out.
collect Howling Wind##24504 |n
use the Howling Wind##24504
accept The Howling Wind##9861 |goto 71.57,44.82
You can find more around [65.37,47.19]
step
label "Collect_Pairs_Of_Ivory_Tusks"
kill Wild Elekk##18334+
|tip They look like elephants.
collect 3 Pair of Ivory Tusks##25463 |goto 71.29,47.09 |q 9914 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [65.37,47.19]
step
label "Kill_Talbuk_Stags"
kill 30 Talbuk Stag##17130 |q 9857/1 |goto 71.29,47.09
You can find more around [65.37,47.19]
step
label "Kill_Clefthoofs"
kill 30 Clefthoof##18205 |q 9789/1 |goto 71.29,47.09
You can find more around [65.37,47.19]
step
label "Kill_Windrocs"
kill 30 Windroc##17128 |q 9854/1 |goto 71.29,47.09
You can find more around [65.37,47.19]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto 71.57,40.52
accept Windroc Mastery##9855 |goto 71.57,40.52
step
talk Hemet Nesingwary##18180
|tip He walks around this area.
turnin Clefthoof Mastery##9789 |goto 71.52,40.82
accept Clefthoof Mastery##9850 |goto 71.52,40.82
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto 71.38,40.62
accept Talbuk Mastery##9858 |goto 71.38,40.62
step
Follow the path |goto 60.33,36.44 < 20 |only if walking
talk Warden Bullrok##18407
accept Proving Your Strength##10479 |goto 55.79,37.94
step
click Garadar Bulletin Board##182392
accept Wanted: Giselda the Crone##9935 |goto 55.77,38.01
accept Wanted: Zorbo the Advisor##9939 |goto 55.77,38.01
step
talk Jorin Deadeye##18106
accept The Impotent Leader##9888 |goto 55.56,37.62
step
talk Captain Kroghan##18090
turnin Reinforcements for Garadar##9797 |goto 55.37,37.45
step
talk Elementalist Yal'hah##18234
|tip He walks around this area.
accept The Throne of the Elements##9870 |goto 55.17,39.01
step
talk Farseer Kurkush##18066
accept Vile Idolatry##9863 |goto 54.78,39.41
step
talk Farseer Corhuk##18067
accept The Missing War Party##9864 |goto 54.80,39.86
step
talk Farseer Margadesh##18068
accept Murkblood Leaders...##9867 |goto 54.53,39.96
step
Enter the building |goto 56.39,35.33 < 15 |walk
talk Matron Drakia##18302
|tip She walks around this area.
|tip Inside the building.
accept Missing Mag'hari Procession##9944 |goto 57.18,34.15
step
talk Gursha##18808
fpath Garadar |goto 57.19,35.25
step
Follow the path |goto 52.73,34.12 < 20 |only if walking
talk Consortium Recruiter##18335
accept The Consortium Needs You!##9913 |goto 51.94,34.78
step
talk Elementalist Morgh##18074
turnin The Howling Wind##9861 |goto 60.50,22.37
accept Murkblood Corrupters##9862 |goto 60.50,22.37
step
talk Elementalist Sharvak##18072
turnin The Throne of the Elements##9870 |goto 60.65,22.10
step
talk Elementalist Lo'ap##18073
accept A Rare Bean##9800 |goto 60.80,22.38
accept Muck Diving##9815 |goto 60.80,22.38
step
talk Elementalist Untrag##18071
accept The Underneath##9818 |goto 60.66,22.65
step
talk Gordawg##18099
|tip He walks around this area.
turnin The Underneath##9818 |goto 62.04,23.80
accept The Tortured Earth##9819 |goto 62.04,23.80
step
Follow the path |goto 62.18,34.97 < 50 |only if walking
kill 15 Tortured Earth Spirit##17156 |q 9819/1 |goto 67.17,37.81
You can find more around [72.44,43.78]
step
Follow the path |goto 62.18,34.97 < 50 |only if walking
talk Gordawg##18099
|tip He walks around this area.
turnin The Tortured Earth##9819 |goto 62.04,23.80
accept Eating Damnation##9821 |goto 62.04,23.80
stickystart "Collect_Digested_Caracoli"
stickystart "Kill_Talbuk_Thorngrazers"
step
kill Enraged Crusher##18062+
|tip You can find these along this cliffside.
collect 10 Enraged Crusher Core##24473 |q 9821/1 |goto 56.41,19.11
You can find more around: |notinsticky
[54.08,21.59]
[50.25,20.14]
step
label "Collect_Digested_Caracoli"
click Dung##182128+
|tip They look like piles of poop on the ground around this area.
collect 15 Digested Caracoli##24419 |q 9800/1 |goto 53.11,23.73
step
label "Kill_Talbuk_Thorngrazers"
kill 30 Talbuk Thorngrazer##17131 |q 9858/1 |goto 53.11,23.73
step
kill 30 Clefthoof Bull##17132 |q 9850/1 |goto 50.80,30.21
You can find more around [45.17,28.74]
step
kill Murkblood Invader##18238+
|tip They look like a group of three NPCs riding on elephants.
|tip They walk back and forth along this road.
|tip They to kite one away from the others, if you can't kill them all at once.
|tip They should all drop the quest item.
collect Murkblood Invasion Plans##24558 |n
use the Murkblood Invasion Plans##24558
accept Murkblood Invaders##9872 |goto 47.30,34.82
Also check around: |notinsticky
[41.10,26.87]
[35.36,27.29]
[33.74,34.05]
step
Follow the road |goto 52.72,34.12 < 20 |only if walking
talk Garrosh##18063
turnin Murkblood Invaders##9872 |goto 55.44,37.64
step
talk Gordawg##18099
|tip He walks around this area.
turnin Eating Damnation##9821 |goto 62.04,23.80
accept Shattering the Veil##9849 |goto 62.04,23.80
step
talk Elementalist Lo'ap##18073
turnin A Rare Bean##9800 |goto 60.80,22.38
accept Agitated Spirits of Skysong##9804 |goto 60.80,22.38
step
kill 12 Lake Spirit##17153 |q 9804/1 |goto 59.00,28.18
|tip Underwater.
step
talk Elementalist Lo'ap##18073
turnin Agitated Spirits of Skysong##9804 |goto 60.80,22.38
accept Blessing of Incineratus##9805 |goto 60.80,22.38
step
Follow the path up |goto 58.20,34.52 < 20 |only if walking
Enter the building |goto 57.37,34.55 < 7 |walk
talk Matron Tikkit##18913
|tip Inside the building.
home Garadar |goto 56.73,34.51 |q 9944
step
Follow the road |goto 55.58,50.34 < 50 |only if walking
kill 30 Ravenous Windroc##18220 |q 9855/1 |goto 48.77,60.66
step
Follow the path down |goto 54.64,61.51 < 20 |only if walking
Cross the bridge |goto 55.11,62.77 < 10 |only if walking
Follow the path |goto 57.70,63.70 < 20 |only if walking
talk Wazat##19035
|tip He walks around this area.
accept I Must Have Them!##10109 |goto 61.68,67.11
step
kill Dust Howler##17158+
|tip They look like tornado enemies.
|tip They are usually pretty spread out.
collect 3 Air Elemental Gas##27807|q 10109/1 |goto 70.18,56.60
You can find more around:
[65.09,47.82]
[69.70,44.70]
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto 71.38,40.62
step
talk Hemet Nesingwary##18180
|tip He walks around this area.
turnin Clefthoof Mastery##9850 |goto 71.52,40.82
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto 71.57,40.52
step
Follow the path |goto 68.47,59.61 < 70 |only if walking
talk Wazat##19035
|tip He walks around this area.
turnin I Must Have Them!##10109 |goto 61.68,67.11
step
Follow the road |goto 72.82,72.96 < 50 |only if walking
talk Kilrath##18273
turnin The Impotent Leader##9888 |goto Terokkar Forest/0 19.77,60.85
accept Don't Kill the Fat One##9889 |goto Terokkar Forest/0 19.77,60.85
step
kill 10 Boulderfist Invader##18260 |q 9889/1 |goto 19.99,63.72
|tip Be careful not to fight Unkor the Ruthless.
|tip You will need to fight him in the next step.
step
kill Unkor the Ruthless##18262
|tip He will eventually surrender.
Fight Unkor Until He Submits |q 9889/2 |goto 20.06,63.23
step
talk Unkor the Ruthless##18262
turnin Don't Kill the Fat One##9889 |goto 20.06,63.23
accept Success!##9890 |goto 20.06,63.23
step
talk Kilrath##18273
turnin Success!##9890 |goto 19.77,60.85
accept Because Kilrath is a Coward##9891 |goto 19.77,60.85
step
talk Jorin Deadeye##18106
turnin Because Kilrath is a Coward##9891 |goto Nagrand/0 55.56,37.62
accept Message in a Battle##9906 |goto Nagrand/0 55.56,37.62
step
talk Elkay'gan the Mystic##18300
accept Standards and Practices##9910 |goto 55.63,37.53
step
use Living Fire##24467
|tip Inside the building.
Destroy the Western Hut |q 9805/2 |goto 70.74,51.11
step
use Living Fire##24467
|tip Inside the building.
Destroy the Large Hut |q 9805/1 |goto 72.42,50.31
step
use Living Fire##24467
|tip Inside the building.
Destroy the Eastern Hut |q 9805/4 |goto 72.76,54.70
step
use Living Fire##24467
|tip Inside the building.
Destroy the Southern Hut |q 9805/3 |goto 71.21,53.26
stickystart "Collect_Obsidian_Warbeads"
stickystart "Kill_Boulderfist_Mystics"
stickystart "Kill_Boulderfist_Crushers"
step
Follow the road |goto 70.61,64.01 < 70 |only if walking
use the Mag'har Battle Standard##25458
Place the First Battle Standard |q 9910/1 |goto 72.16,70.10
step
Follow the path up |goto 73.94,67.99 < 15 |only if walking
Continue up the path |goto 74.22,67.78 < 20 |only if walking
use the Mag'har Battle Standard##25458
Place the Second Battle Standard |q 9910/2 |goto 74.68,69.84
step
Follow the path up |goto 75.05,68.21 < 15 |only if walking
use the Mag'har Battle Standard##25458
Place the Third Battle Standard |q 9910/3 |goto 75.78,68.27
step
label "Collect_Obsidian_Warbeads"
Kill Boulderfist enemies around this area
collect 10 Obsidian Warbeads##25433 |q 10479/1 |goto 48.3,21.5
step
label "Kill_Boulderfist_Mystics"
kill 15 Boulderfist Mystic##17135 |q 9906/1 |goto 73.41,70.20
step
label "Kill_Boulderfist_Crushers"
kill 15 Boulderfist Crusher##17134 |q 9906/2 |goto 73.41,70.20
step
Follow the road |goto 71.39,67.41 < 50 |only if walking
Follow the path |goto 60.33,36.43 < 20 |only if walking
talk Warden Bullrok##18407
turnin Proving Your Strength##10479 |goto 55.79,37.94
step
talk Elkay'gan the Mystic##18300
turnin Standards and Practices##9910 |goto 55.63,37.53
accept Bleeding Hollow Supply Crates##9916 |goto 55.63,37.53
step
talk Jorin Deadeye##18106
turnin Message in a Battle##9906 |goto 55.56,37.62
accept An Audacious Advance##9907 |goto 55.56,37.62
step
talk Elementalist Lo'ap##18073
turnin Blessing of Incineratus##9805 |goto 60.80,22.38
accept The Spirit Polluted##9810 |goto 60.80,22.38
step
Follow the path down |goto 44.40,34.89 < 20 |only if walking
kill Muck Spawn##17154+
collect 5 Muck-ridden Core##24469 |q 9815/1 |goto 41.58,39.33
stickystart "Kill_Boulderfist_Mages"
stickystart "Kill_Boulderfist_Mages"
step
click Bleeding Hollow Supply Crate##182265+
|tip They look like wooden boxes with a red symbol on the side of them on the ground around this area.
|tip Inside and outside the cave.
collect 20 Bleeding Hollow Supply Crate##25460 |q 9916/1 |goto 40.76,31.44
step
label "Kill_Boulderfist_Warriors
kill 25 Boulderfist Warrior##17136 |q 9907/1 |goto 40.76,31.44
|tip Inside and outside the cave.
step
label "Kill_Boulderfist_Mages"
kill 25 Boulderfist Mage##17137 |q 9907/2 |goto 40.76,31.44
|tip Inside and outside the cave.
step
Follow the path |goto 41.57,36.67 < 50 |only if walking
Follow the path up |goto 44.17,37.89 < 15 |only if walking
Follow the path |goto 52.70,34.13 < 20 |only if walking
talk Jorin Deadeye##18106
turnin An Audacious Advance##9907 |goto 55.56,37.62
accept Diplomatic Measures##10107 |goto 55.56,37.62
step
talk Elkay'gan the Mystic##18300
turnin Bleeding Hollow Supply Crates##9916 |goto 55.63,37.53
step
talk Matron Celestine##18301
accept He Called Himself Altruis...##9983 |goto 55.20,36.10
step
Follow the road |goto 52.63,34.11 < 20 |only if walking
Cross the bridge |goto 39.38,26.71 < 15 |only if walking
talk Saurfang the Younger##18229
turnin The Missing War Party##9864 |goto 32.44,36.03
accept Once Were Warriors##9865 |goto 32.44,36.03
step
talk Elder Yorley##18414
turnin Missing Mag'hari Procession##9944 |goto 32.31,36.15
accept War on the Warmaul##9945 |goto 32.31,36.15
step
talk Elder Ungriz##18415
accept Finding the Survivors##9948 |goto 32.36,36.21
stickystart "Kill_Warmaul_Brutes"
stickystart "Kill_Warmaul_Warlocks"
step
Follow the path up |goto 29.27,31.89 < 15 |only if walking
Continue up the path |goto 26.37,29.79 < 10 |only if walking
Kill Warmaul enemies around this area
collect Warmaul Prison Key##25604+ |n
click Warmaul Prison##32347+
|tip They look like wooden brown cages on the ground around this area.
Free #15# Mag'har Prisoners |q 9948/1 |goto 23.91,29.30
You can find more up the path that starts at [26.29,29.62]
step
label "Kill_Warmaul_Brutes"
kill 15 Warmaul Brute##18065 |q 9945/1 |goto 23.91,29.30
You can find more up the path that starts at [26.29,29.62]
step
label "Kill_Warmaul_Warlocks"
kill 15 Warmaul Warlock##18037 |q 9945/2 |goto 23.91,29.30
You can find more up the path that starts at [26.29,29.62]
step
Follow the path down |goto 27.14,30.20 < 20 |only if walking
talk Elder Yorley##18414
turnin War on the Warmaul##9945 |goto 32.31,36.15
step
talk Elder Ungriz##18415
turnin Finding the Survivors##9948 |goto 32.36,36.21
stickystart "Collect_Murkblood_Idols"
stickystart "Kill_Murkblood_Putrifiers"
stickystart "Kill_Murkblood_Raiders"
stickystart "Kill_Murkblood_Scaveners"
step
Enter the building |goto 30.50,41.39 < 7 |walk
kill Ortor of Murkblood##18204
|tip Inside the building.
collect Head of Ortor of Murkblood##24543 |q 9867/1 |goto 30.84,42.36
step
label "Collect_Murkblood_Idols"
Kill Murkblood enemies around this area
collect 20 Murkblood Idol##24542 |q 9863/1 |goto 32.37,43.29
step
label "Kill_Murkblood_Putrifiers"
kill 8 Murkblood Putrifier##18202 |q 9862/1 |goto 32.15,43.59
step
label "Kill_Murkblood_Raiders"
kill 20 Murkblood Raider##18203 |q 9865/2 |goto 32.23,42.34
step
label "Kill_Murkblood_Scaveners"
kill 40 Murkblood Scavenger##18207 |q 9865/1 |goto 32.23,42.34
stickystart "Kill_Lake_Surgers"
step
kill Watoosun's Polluted Essence##18145 |q 9810/1 |goto 33.03,50.88
|tip Underwater.
step
label "Kill_Lake_Surgers"
kill 10 Lake Surger##17155 |q 9810/2 |goto 33.80,48.90
|tip Underwater around this area.
step
talk Saurfang the Younger##18229
turnin Once Were Warriors##9865 |goto 32.44,36.03
accept He Will Walk The Earth...##9866 |goto 32.44,36.03
step
talk Altruis the Sufferer##18417
turnin He Called Himself Altruis...##9983 |goto 27.34,43.09
step
_Note:_
|tip You must not be on your mount when accepting the quest in the next step.
|tip Dismount now.
Click Here to Continue |confirm |q 9991 |future
step
talk Altruis the Sufferer##18417
accept Survey the Land##9991 |goto 27.34,43.09
step
Begin Surveying the Land |ontaxi |goto 27.34,43.09 |q 9991
step
Watch the dialogue
|tip You will fly around for a bit.
Return to Altruis the Sufferer |q 9991/1 |goto 27.34,43.09
step
talk Altruis the Sufferer##18417
turnin Survey the Land##9991 |goto 27.34,43.09
step
talk Zerid##18276
accept Gava'xi##9900 |goto 30.78,58.14
accept Matters of Security##9925 |goto 30.78,58.14
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto 31.36,57.80
accept Stealing from Thieves##9882 |goto 31.36,57.80 |only if rep ('The Consortium') < Friendly
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto 31.77,56.78
step
talk Shadrek##18333
turnin A Head Full of Ivory##9914 |goto 31.77,56.78
stickystart "Kill_Voidspawns"
step
kill Shattered Rumbler##17157+
use Gordawg's Boulder##24501
|tip Use it on Shattered Rumblers around this area.
kill 30 Minion of Gurok##18181 |q 9849/1 |goto 28.91,68.55
|tip They appear after you kill Shattered Rumblers.
You can find more around [29.86,78.76]
step
click Oshu'gun Crystal Fragment##182258+
|tip They look like green and white crystals on the ground around this area.
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto 35.03,65.00
You can find more around [41.21,70.42]
|only if havequest(9882) or completedq(9882)
step
label "Kill_Voidspawns"
kill 12 Voidspawn##17981 |q 9925/1 |goto 39.98,74.63
|tip They look like voidwalkers.
|tip You can find them all around the huge stone mountain.
step
kill Gava'xi##18298 |q 9900/1 |goto 42.40,73.49
|tip He looks like an ethereal.
|tip He spawns here and walks around this area.
step
talk Zerid##18276
turnin Gava'xi##9900 |goto 30.78,58.14
turnin Matters of Security##9925 |goto 30.78,58.14
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto 31.36,57.80
|only if havequest(9882) or completedq(9882)
step
talk Farseer Kurkush##18066
turnin Vile Idolatry##9863 |goto 54.78,39.41
step
talk Farseer Corhuk##18067
turnin He Will Walk The Earth...##9866 |goto 54.80,39.86
step
talk Farseer Margadesh##18068
turnin Murkblood Leaders...##9867 |goto 54.53,39.96
step
Follow the road |goto 68.49,52.18 < 50 |only if walking
Follow the path up |goto 73.05,69.36 < 15 |only if walking
Continue up the path |goto 74.27,67.78 < 20 |only if walking
talk Lantresor of the Blade##18261
Tell him _"I have killed many of your ogres, Lantresor. I have no fear."_
Hear the Tale of the Blademaster |q 10107/1 |goto 73.81,62.60
step
talk Lantresor of the Blade##18261
turnin Diplomatic Measures##10107 |goto 73.81,62.60
accept Armaments for Deception##9928 |goto 73.81,62.60
accept Ruthless Cunning##9927 |goto 73.81,62.60
stickystart "Plant_Warmaul_Ogre_Banners"
stickystart "Collect_Kilsorrow_Armaments"
stickystart "Slay_Kilsorrow_Agents"
step
Follow the path down |goto 75.49,67.57 < 15 |only if walking
Follow the path |goto 69.97,76.51 < 15 |only if walking
Enter the building |goto 70.93,81.27 < 7 |walk
kill Giselda the Crone##18391 |q 9935/1 |goto 71.16,82.35
|tip Inside the building.
step
label "Plant_Warmaul_Ogre_Banners"
Kill Kil'sorrow enemies around this area
use the Warmaul Ogre Banner##25552
|tip Use it near their corpses.
Plant #20# Warmaul Ogre Banners |q 9927/1 |goto 70.45,79.23
step
label "Collect_Kilsorrow_Armaments"
click Kil'sorrow Armament##182355+
|tip They look like wooden boxes with red axes on them on the ground around this area.
|tip Also check inside the buildings.
collect 20 Kil'sorrow Armaments##25554 |q 9928/1 |goto 70.45,79.23
step
label "Slay_Kilsorrow_Agents"
Kill Kil'sorrow enemies around this area
Slay #15# Kil'sorrow Agents |q 9935/2 |goto 70.57,79.65
step
Follow the path up |goto 73.05,69.36 < 15 |only if walking
Continue up the path |goto 74.27,67.78 < 20 |only if walking
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto 73.81,62.60
turnin Ruthless Cunning##9927 |goto 73.81,62.60
accept Returning the Favor##9931 |goto 73.81,62.60
accept Body of Evidence##9932 |goto 73.81,62.60
stickystart "Plant_Kilsorrow_Banners"
stickystart "Kill_Warmaul_Shamans"
stickystart "Kill_Warmaul_Reavers"
step
Follow the path down |goto 75.49,67.57 < 15 |only if walking
Follow the road |goto 71.34,67.97 < 50 |only if walking
Follow the path |goto 67.68,52.49 < 50 |only if walking
Continue following the path |goto 55.96,48.14 < 50 |only if walking
use the Damp Woolen Blanket##25658
|tip Use it next to the Blazing Warmaul Pyre.
|tip Two Boulderfist Saboteurs will appear nearby.
Watch the dialogue
|tip Follow and protect the two Boulderfist Saboteurs as they plant the bodies around this area.
Plant the Kil'sorrow Bodies |q 9932/1 |goto 46.66,24.32
step
Follow the path up |goto 45.69,21.73 < 15 |only if walking
Enter the cave |goto 46.24,18.78 < 10 |walk
kill Zorbo the Advisor##18413 |q 9939/1 |goto 46.48,18.20
|tip Inside the cave.
step
label "Plant_Kilsorrow_Banners"
Kill enemies around this area
use the Kil'sorrow Banner##25555
|tip Use it near their corpses.
Plant #20# Kil'sorrow Banners |q 9931/1 |goto 45.37,22.12
step
label "Kill_Warmaul_Shamans"
kill 10 Warmaul Shaman##18064 |q 9939/2 |goto 45.37,22.12
step
label "Kill_Warmaul_Reavers"
kill 10 Warmaul Reaver##17138 |q 9939/3 |goto 45.37,22.12
step
Follow the path |goto 50.48,38.17 < 70 |only if walking
Follow the road |goto 68.51,53.29 < 50 |only if walking
Follow the path up |goto 73.05,69.36 < 15 |only if walking
Continue up the path |goto 74.27,67.78 < 20 |only if walking
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto 73.81,62.60
turnin Body of Evidence##9932 |goto 73.81,62.60
accept Message to Garadar##9934 |goto 73.81,62.60
step
Follow the path down |goto 75.49,67.57 < 15 |only if walking
Follow the road |goto 71.34,67.97 < 50 |only if walking
Continue following the road |goto 60.43,36.49 < 20 |only if walking
talk Warden Bullrok##18407
turnin Wanted: Giselda the Crone##9935 |goto 55.79,37.94
turnin Wanted: Zorbo the Advisor##9939 |goto 55.79,37.94
step
talk Garrosh##18063
turnin Message to Garadar##9934 |goto 55.44,37.64
step
talk Gordawg##18099
|tip He walks around this area.
turnin Shattering the Veil##9849 |goto 62.04,23.80
step
talk Elementalist Lo'ap##18073
turnin The Spirit Polluted##9810 |goto 60.80,22.38
turnin Muck Diving##9815 |goto 60.80,22.38
step
talk Elementalist Morgh##18074
turnin Murkblood Corrupters##9862 |goto 60.50,22.37
step
_Do You Want to Do the Ring of Blood?_
|tip You can now do the optional Ring of Blood group quests.
|tip These quests require a 5-man group, but will give a lot of experience quickly, if you can find a group easily.
|tip In total, the quests can be done quickly, in one location, and give roughly 100,000 experience total.
Yes - Complete the Ring of Blood with a Group	|confirm	|next "Start_Ring_of_Blood_Quests"
No - Move on to Blade's Edge Mountains		|confirm	|next "Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)"
|only if not completedq(9977)
step
label "Start_Ring_of_Blood_Quests"
talk Gurgthock##18471
accept The Ring of Blood: Brokentoe##9962 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Brokentoe##18398
Defeat Brokentoe |q 9962/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Murkblood Twin##18399+
Defeat The Blue Brothers |q 9967/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Rokdar the Sundered Lord##18400
Defeat Rokdar the Sundered Lord |q 9970/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Skra'gath##18401
Defeat Skra'gath |q 9972/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Warmaul Champion##18402
Defeat the Warmaul Champion |q 9973/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Mogor##18069
|tip You will have to kill him twice.
Defeat Mogor, Hero of the Warmaul |q 9977/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto 42.78,20.68
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\BladesEdge",
next="Leveling Guides\\The Burning Crusade (58-70)\\Netherstorm (68-70)",
condition_suggested=function() return level >= 67 and level <= 68 and not completedq(11091) end,
},[[
step
Enter the building |goto Zangarmarsh/0 31.07,50.66 < 7 |only if walking
Run up the stairs |goto Zangarmarsh/0 30.40,50.85 < 7 |only if walking
talk Shadow Hunter Denjai##18013
|tip Upstairs on the roof of the building.
accept The Ogre Threat##9795 |goto Zangarmarsh/0 30.74,50.89
step
Follow the path |goto 84.34,55.24 < 20 |only if walking
Follow the path up |goto 69.24,35.76 < 30 |only if walking
talk Grunt Grahk##22489
accept Killing the Crawlers##10928 |goto Blade's Edge Mountains/0 52.96,96.22
step
Enter the tunnel |goto 52.27,93.74 < 30 |walk
kill 6 Cavern Crawler##22044 |q 10928/1 |goto 51.47,89.94
|tip Inside the tunnel.
step
Leave the tunnel |goto 51.56,78.24 < 30 |only if walking
Follow the path |goto 51.48,59.22 < 20 |only if walking
talk Tor'chunk Twoclaws##21147
turnin Killing the Crawlers##10928 |goto 51.94,58.41
accept The Bladespire Threat##10503 |goto 51.94,58.41
step
talk Thinill##0
turnin The Ogre Threat##9795 |goto 51.92,57.76
step
click Wanted Poster##184945
accept Felling an Ancient Tree##10489 |goto 51.94,57.77
step
talk Gor'drek##21117
|tip He walks around this area.
accept The Encroaching Wilderness##10486 |goto 52.32,57.75
step
Follow the path |goto 52.35,55.23 < 20 |only if walking
talk Unoke Tenderhoof##18953
fpath Thunderlord Stronghold |goto 52.05,54.13
step
kill 12 Bladewing Bloodletter##21033 |q 10486/1 |goto 50.86,62.82
You can find more around [51.62,71.41]
step
Follow the path |goto 51.48,59.22 < 20 |only if walking
talk Gor'drek##21117
|tip He walks around this area.
turnin The Encroaching Wilderness##10486 |goto 52.32,57.75
accept Dust from the Drakes##10487 |goto 52.32,57.75
stickystart "Kill_Bladespire_Raptors"
stickystart "Kill_Bladespire_Ogres"
step
Follow the path down |goto 49.58,54.97 < 30 |only if walking
Kill Bladespire enemies around this area
|tip Only the ogres will drop the quest item.
collect Thunderlord Clan Artifact##30431 |n
use the Thunderlord Clan Artifact##30431
accept Thunderlord Clan Artifacts##10524 |goto 42.84,52.63
You can find more around [48.70,50.24]
step
Enter the building |goto 40.44,57.88 < 10 |walk
click Thunderlord Clan Drum##184726
|tip Inside the building.
collect Thunderlord Clan Drum##30432 |q 10524/2 |goto 40.18,58.33
step
Run up the ramp |goto 41.05,51.92 < 10 |only if walking
click Thunderlord Clan Arrow##184727
|tip On top of the stone structure.
collect Thunderlord Clan Arrow##30433 |q 10524/1 |goto 41.54,52.66
step
Enter the building |goto 41.35,47.14 < 10 |walk
click Thunderlord Clan Tablet##184728
|tip Inside the building.
collect Thunderlord Clan Tablet##30434 |q 10524/3 |goto 41.19,46.51
step
Follow the path |goto 43.65,52.83 < 40 |c |q 10503
step
label "Kill_Bladespire_Raptors"
kill 10 Bladespire Raptor##20728 |q 10503/2 |goto 42.84,52.63
You can find more around [48.70,50.24]
step
label "Kill_Bladespire_Ogres"
Kill Bladespire enemies around this area
Kill #30# Bladespire Ogres |q 10503/1 |goto 42.84,52.63
You can find more around [48.70,50.24]
step
Follow the path up |goto 50.92,51.10 < 20 |only if walking
Follow the path |goto 50.71,56.09 < 20 |only if walking
talk Tor'chunk Twoclaws##21147
turnin The Bladespire Threat##10503 |goto 51.94,58.41
accept The Bloodmaul Ogres##10505 |goto 51.94,58.41
step
talk Rokgah Bloodgrip##21311
turnin Thunderlord Clan Artifacts##10524 |goto 52.80,58.95
accept Vision Guide##10525 |goto 52.80,58.95
step
use the Fiery Soul Fragment##30481
Begin the Vision |havebuff spell:36573 |goto 52.80,58.95 |q 10525
step
Watch the dialogue
|tip You will fly as a ball of light.
|tip You will eventually fly to this location.
Discover the Final Thunderlord Artifact |q 10525/1 |goto 39.73,85.35 |notravel
step
talk Rokgah Bloodgrip##21311
turnin Vision Guide##10525 |goto 52.80,58.95
accept The Thunderspike##10526 |goto 52.80,58.95
step
Enter the building |goto 52.77,55.52 < 15 |walk
talk Gholah##19470
|tip Inside the building.
home Thunderlord Stronghold |goto 53.36,55.41 |q 10486
stickystart "Collect_Dust_Of_The_Fey_Drake"
step
Cross the bridge |goto 48.26,65.77 < 30 |only if walking
Follow the path |goto 41.62,66.24 < 30 |only if walking
kill Stronglimb Deeproot##21023
|tip He looks like a large tree that walks along the road around this area.
|tip Be careful to avoid the Alliance town nearby.
collect Stronglimb Deeproot's Trunk##30177 |q 10489/1 |goto 37.43,71.36
Also check around [37.41,78.65]
step
label "Collect_Dust_Of_The_Fey_Drake"
kill Fey Drake##20713+
collect 4 Dust of the Fey Drake##30174 |q 10487/1 |goto 37.58,72.25
You can find more around: |notinsticky
[37.36,78.13]
[40.13,68.15]
step
Follow the path down |goto 38.66,73.54 < 20 |only if walking
talk T'chali the Witch Doctor##21349
accept They Stole Me Hookah and Me Brews!##10542 |goto 44.97,72.30
stickystart "Collect_Bloodmaul_Brutebane_Brews"
stickystart "Kill_Bloodmaul_Ogres"
step
click T'chali's Hookah##184744
collect T'chali's Hookah##30468 |q 10542/1 |goto 42.11,81.23
step
Enter the mine |goto 42.48,83.50 < 10 |walk
click Thunderspike##5994+
|tip Inside the mine.
kill Gor Grimgut##21319
collect The Thunderspike##30435 |q 10526/1 |goto 39.72,85.50
step
Leave the cave |goto 42.48,83.52 < 10 |c |q 10542
step
label "Collect_Bloodmaul_Brutebane_Brews"
kill Bloodmaul Brewmaster##19957+
|tip They look like ogres carrying a bucket and mug of beer around this area.
click Bloodmaul Brew Keg##184504+
|tip They look like wooden barrels on the ground around this area.
collect 16 Bloodmaul Brutebane Brew##29443 |goto 45.64,79.12 |q 10542
|tip You only need 10 for this quest, but you'll need 6 more for another quest later on.
step
label "Kill_Bloodmaul_Ogres"
Kill Bloodmaul enemies around this area
Kill #30# Bloodmaul Ogres |q 10505/1 |goto 43.26,80.55
You can find more around [45.98,76.71]
step
talk T'chali the Witch Doctor##21349
turnin They Stole Me Hookah and Me Brews!##10542 |goto 44.97,72.30
accept Bladespire Kegger##10545 |goto 44.97,72.30
step
Follow the path |goto 45.34,63.51 < 50 |only if walking
Continue following the path |goto 44.59,56.44 < 30 |only if walking
use it Bloodmaul Brutebane Keg##30353
|tip Use it near Bladespire Ogres around this area.
|tip They will run to where you use the keg, to get a drink.
Get #5# Bladespire Ogres Drunk |q 10545/1 |goto 43.01,52.71
step
Follow the path |goto 44.85,54.37 < 40 |only if walking
Continue following the path |goto 45.34,63.51 < 50 |only if walking
talk T'chali the Witch Doctor##21349
turnin Bladespire Kegger##10545 |goto 44.97,72.30
accept Grimnok and Korgaah, I Am For You!##10543 |goto 44.97,72.30
step
Follow the path |goto 45.75,76.83 < 30 |only if walking
Run up the ramp |goto 45.59,80.24 < 7 |only if walking
kill Grimnok Battleborn##20095 |q 10543/1 |goto 45.44,80.40
|tip At the top of the tower.
step
Follow the path |goto 45.42,76.29 < 30 |only if walking
Continue following the path |goto 45.34,63.51 < 50 |only if walking
Continue following the path |goto 44.59,56.44 < 30 |only if walking
Run up the ramp |goto 42.81,46.70 < 10 |only if walking
use Bloodmaul Brutebane Keg##30353 |only if itemcount(30353) >= 1
use Bloodmaul Brutebane Brew##29443 |only if itemcount(29443) >= 1 and itemcount(30353) < 1
|tip Use it next to the doorway without getting too close.
|tip You can use it to lure the ogres out and kill them individually.
kill Korgaah##20723 |q 10543/2 |goto 43.16,46.08
|tip He has 2 elite bodyguards who won't be lured by the brew, but he can be lured by himself.
|tip Inside the building.
step
Follow the path |goto 44.14,53.01 < 50 |only if walking
Continue following the path |goto 45.34,63.51 < 50 |only if walking
talk T'chali the Witch Doctor##21349
turnin Grimnok and Korgaah, I Am For You!##10543 |goto 44.97,72.30
accept A Curse Upon Both of Your Clans!##10544 |goto 44.97,72.30
step
Follow the path |goto 45.72,76.55 < 30 |only if walking
use the Wicked Strong Fetish##30479
|tip Use it near the doorway of the building.
kill Bloodmaul Evil Spirit##21452+
|tip You can do this repeatedly on the same building.
Curse #2# Bloodmaul Outpost Buildings |q 10544/2 |goto 47.11,77.97
step
Follow the path |goto 45.42,76.08 < 30 |only if walking
Continue following the path |goto 45.34,63.51 < 50 |only if walking
Continue following the path |goto 44.59,56.44 < 30 |only if walking
use the Wicked Strong Fetish##30479
|tip Use it near the doorway of the building.
kill Bladespire Evil Spirit##21446+
|tip You can do this repeatedly on the same building.
Curse #5# Bladespire Hold Buildings |q 10544/1 |goto 41.98,57.50
step
Follow the path |goto 44.69,55.52 < 50 |only if walking
Continue following the path |goto 45.34,63.51 < 50 |only if walking
talk T'chali the Witch Doctor##21349
turnin A Curse Upon Both of Your Clans!##10544 |goto 44.97,72.30
step
talk Gor'drek##21117
|tip He walks around this area.
turnin Dust from the Drakes##10487 |goto 52.32,57.75
accept Protecting Our Own##10488 |goto 52.32,57.75
step
talk Rokgah Bloodgrip##21311
turnin The Thunderspike##10526 |goto 52.80,58.95
step
talk Garm Wolfbrother##21950
accept The Spirits Have Voices##10718 |goto 52.75,59.04
step
talk Tor'chunk Twoclaws##21147
turnin Felling an Ancient Tree##10489 |goto 51.94,58.41
turnin The Bloodmaul Ogres##10505 |goto 51.94,58.41
step
talk Rexxar##21984
turnin The Spirits Have Voices##10718 |goto 51.82,58.35
accept Whispers on the Wind##10614 |goto 51.82,58.35
step
use Gor'drek's Ointment##30175
|tip Use it on Thunderlord Dire Wolves around this area.
Strengthen #5# Thunderlord Dire Wolves |q 10488/1 |goto 51.04,65.22
step
Follow the path |goto 51.48,59.26 < 20 |only if walking
talk Gor'drek##21117
|tip He walks around this area.
turnin Protecting Our Own##10488 |goto 52.32,57.75
step
Follow the path down |goto 49.61,54.81 < 30 |only if walking
Follow the path |goto 50.63,48.93 < 40 |only if walking
Follow the path up |goto 58.73,46.07 < 20 |only if walking
talk Fhyn Leafshadow##22216
fpath Evergrove |goto 61.68,39.61
step
talk Tree Warden Chawn##22007
accept A Time for Negotiation...##10682 |goto 61.98,39.48
step
talk Mosswood the Ancient##22053
accept Little Embers##10770 |goto 61.25,38.47
accept From the Ashes##10771 |goto 61.25,38.47
step
talk Timeon##21782
accept Creating the Pendant##10567 |goto 62.16,39.11
step
talk Faradrella##22133
|tip She walks around this area.
accept Culling the Wild##10753 |goto 62.59,38.28
stickystart "Kill_Felsworn_Scalewings"
stickystart "Kill_Felsworn_Daggermaws"
stickystart "Kill_Fel_Corrupters"
step
Follow the path up |goto 65.35,39.94 < 20 |only if walking
kill Fel Corrupter##21300+
collect Damaged Mask##31384 |n
use the Damaged Mask##31384
accept Damaged Mask##10810 |goto 71.02,30.90
step
label "Kill_Felsworn_Scalewings"
kill 4 Felsworn Scalewing##21123 |q 10753/1 |goto 71.02,30.90
step
label "Kill_Felsworn_Daggermaws"
kill 4 Felsworn Daggermaw##21124 |q 10753/2 |goto 71.02,30.90
step
label "Kill_Fel_Corrupters"
kill 2 Fel Corrupter##21300 |q 10753/3 |goto 71.02,30.90
stickystart "Kill_Scorch_Imps"
step
click Fertile Volcanic Soil##185148
Plant in the Southern Volcanic Soil |q 10771/1 |goto 71.66,22.39
step
click Fertile Volcanic Soil##185148
Plant in the Central Volcanic Soil |q 10771/2 |goto 71.60,20.33
step
click Fertile Volcanic Soil##185148
Plant in the Northern Volcanic Soil |q 10771/3 |goto 71.59,18.51
step
label "Kill_Scorch_Imps"
kill 8 Scorch Imp##21021+ |q 10770/1 |goto 71.46,20.95
step
Follow the path down |goto 67.19,38.16 < 20 |only if walking
talk O'Mally Zapnabber##22020
turnin Damaged Mask##10810 |goto 62.65,40.38
accept Mystery Mask##10812 |goto 62.65,40.38
step
talk Wildlord Antelarion##22127
|tip He walks around this area.
turnin Mystery Mask##10812 |goto 62.54,39.91
accept Felsworn Gas Mask##10819 |goto 62.54,39.91
step
talk Mosswood the Ancient##22053
turnin Little Embers##10770 |goto 61.26,38.48
turnin From the Ashes##10771 |goto 61.26,38.48
step
talk Faradrella##22133
|tip She walks around this area.
turnin Culling the Wild##10753 |goto 62.59,38.28
step
Kill Ruuan'ok enemies around this area
collect 6 Ruuan'ok Claw##30704 |goto 65.04,31.57 |q 10567
step
use the Ruuan'ok Claw##30704+
Watch the dialogue
kill Harbinger of the Raven##21767
|tip It flies down to you.
collect Harbinger's Pendant##30706 |q 10567/1 |goto 64.47,33.11
step
talk Timeon##21782
turnin Creating the Pendant##10567 |goto 62.16,39.11
accept Whispers of the Raven God##10607 |goto 62.16,39.11
step
talk Overseer Nuaar##21981
|tip He looks like a neutral Draenei that walks around this large area.
Tell him _"Overseer, I am here to negotiate on behalf of the Cenarion Expedition."_
Negotiate with Overseer Nuaar |q 10682/1 |goto 59.37,37.97
You can also find him around [62.83,27.89]
step
talk Tree Warden Chawn##22007
turnin A Time for Negotiation...##10682 |goto 61.99,39.48
accept ...and a Time for Action##10713 |goto 61.99,39.48
step
talk Samia Inkling##21983
accept Poaching from Poachers##10717 |goto 61.94,39.45
stickystart "Kill_Wyrmcult_Hewers"
stickystart "Collect_Wyrmcult_Nets"
step
Kill Wyrmcult enemies around this area
collect Meeting Note##31120 |n
use the Meeting Note##31120
accept Did You Get The Note?##10719 |goto 59.37,37.97
You can find more around [62.83,27.89]
step
label "Kill_Wyrmcult_Hewers"
kill 10 Wyrmcult Hewer##21810 |q 10713/1 |goto 59.37,37.97
You can find more around [62.83,27.89]
step
label "Collect_Wyrmcult_Nets"
kill Wyrmcult Poacher##21809
collect 5 Wyrmcult Net##31119 |q 10717/1 |goto 59.37,37.97
You can find more around [62.83,27.89]
step
talk Samia Inkling##21983
turnin Poaching from Poachers##10717 |goto 61.94,39.45
accept Whelps of the Wyrmcult##10747 |goto 61.94,39.45
step
talk Tree Warden Chawn##22007
turnin ...and a Time for Action##10713 |goto 61.99,39.48
turnin Did You Get The Note?##10719 |goto 61.99,39.48
accept Wyrmskull Watcher##10894 |goto 61.99,39.48
step
talk Wildlord Antelarion##22127
|tip He walks around this area.
Ask him _"The Felsworn Gas Mask was destroyed, do you have another one?"_
collect Felsworn Gas Mask##31366 |goto 62.54,39.91 |q 10819
step
Follow the path up |goto 65.35,39.94 < 20 |only if walking
Equip the Felsworn Gas Mask |equipped Felsworn Gas Mask##31366 |goto 73.25,40.03 |q 10819
|tip Equip it at this location.
step
click Legion Communicator##244441
turnin Felsworn Gas Mask##10819 |goto 73.25,40.03
accept Deceive thy Enemy##10820 |goto 73.25,40.03
step
Equip your Regular Head Armor
Click After You Equip Your Head Armor |confirm |q 10820
stickystart "Kill_Doomforge_Engineers"
step
kill 4 Doomforge Attendant##19961 |q 10820/1 |goto 74.92,40.16
step
label "Kill_Doomforge_Engineers"
kill 4 Doomforge Engineer##19960 |q 10820/2 |goto 74.92,40.16
step
Equip the Felsworn Gas Mask |equipped Felsworn Gas Mask##31366 |goto 73.25,40.03 |q 10820
step
click Legion Communicator##244441
turnin Deceive thy Enemy##10820 |goto 73.25,40.03
step
Follow the road |goto 69.72,41.51 < 50 |only if walking
Continue following the road |goto 65.11,53.93 < 50 |only if walking
Follow the path down |goto 69.17,61.53 < 20 |only if walking
Follow the path up |goto 75.79,64.21 < 20 |only if walking
talk Sky-Master Maxxor##22455
fpath Mok'Nathal Village |goto 76.37,65.93
step
talk Dertrok##21496
accept The Stones of Vekh'nir##10565 |goto 75.14,62.10
step
talk Silmara##21896
accept The Softest Wings##10618 |goto 75.84,61.53
step
talk Taerek##21895
accept Silkwing Cocoons##10617 |goto 75.87,61.42
step
talk Leoroxx##22004
turnin Whispers on the Wind##10614 |goto 75.29,60.86
accept Reunion##10709 |goto 75.29,60.86
step
Enter the building |goto 75.87,60.54 < 10 |walk
talk Matron Varah##21088
|tip Inside the building.
accept Mok'Nathal Treats##10860 |goto 76.09,60.31
step
talk Rexxar##21984
turnin Reunion##10709 |goto 51.82,58.35
accept On Spirit's Wings##10714 |goto 51.82,58.35
step
Follow the path down |goto 61.74,29.90 < 20 |only if walking
use Rexxar's Whistle##31128
|tip Aim it next to the 2 ogres talking next to the stone table nearby.
Watch the dialogue
Eavesdrop on the Bloodmaul Ogres' Plans |q 10714/1 |goto 58.26,30.90
step
Follow the path up |goto 59.19,31.97 < 20 |only if walking
Follow the path |goto 61.97,30.04 < 30 |only if walking
talk Rexxar##21984
turnin On Spirit's Wings##10714 |goto 51.82,58.35
accept Baron Sablemane##10783 |goto 51.82,58.35
step
Follow the path down |goto 59.47,42.12 < 20 |only if walking
Follow the path |goto 55.39,47.60 < 30 |only if walking
Continue following the path |goto 50.89,43.42 < 30 |only if walking
talk Baron Sablemane##22103
turnin Baron Sablemane##10783 |goto 53.25,41.17
accept Into the Churning Gulch##10715 |goto 53.25,41.17
step
Kill Crust Burster enemies around this area
collect 7 Crust Burster Venom Gland##31132 |q 10715/1 |goto 46.88,44.68
step
talk Baron Sablemane##22103
turnin Into the Churning Gulch##10715 |goto 53.25,41.17
accept Baron Sablemane's Poison##10749 |goto 53.25,41.18
step
Follow the path |goto 50.92,44.27 < 30 |only if walking
Follow the path up |goto 58.42,46.20 < 15 |only if walking
talk Rexxar##21984
turnin Baron Sablemane's Poison##10749 |goto 51.82,58.35
accept The Smallest Creatures##10720 |goto 51.82,58.35
step
talk Tor'chunk Twoclaws##21147
accept Crush the Bloodmaul Camp##10784 |goto 51.94,58.41
step
Follow the path down |goto 61.60,29.78 < 20 |only if walking
use the Kodohide Drum##31141
Coax a Marmot |havebuff spell:38544 |goto 56.43,29.27 |q 10720
step
_Note:_
|tip The waypoint arrow will not work correctly for this quest.
|tip As a marmot, run north to the entrance of the Bloodmaul ogre camp.
|tip Once you reach the camp entrance, run west.
|tip The arrow won't point correctly, but you can see the correct location of the Ripe Moonshine Keg by opening your map.
|tip You will also see the map marker on your minimap.
|tip Run to the waypoint marker on your map without following the waypoint arrow.
|tip The keg looks like a wooden barrel laying on its side on the ground.
|tip It is between a building and a tower.
Poison the Keg of Ripe Moonshine |q 10720/2 |goto 55.37,28.17
|tip Use the "Poison Keg" ability on your action bar next to the keg.
step
_Note:_
|tip The waypoint arrow will not work correctly for this quest.
|tip As a marmot, run north from the previous keg.
|tip The arrow won't point correctly, but you can see the correct location of the Green Spot Grog Keg by opening your map.
|tip You will also see the map marker on your minimap.
|tip Run to the waypoint marker on your map without following the waypoint arrow.
|tip The keg looks like a wooden barrel laying on its side on the ground.
|tip It is near a bonfire between two buildings.
Poison the Keg of Green Spot Grog |q 10720/1 |goto 55.30,25.99
|tip Use the "Poison Keg" ability on your action bar next to the keg.
step
_Note:_
|tip The waypoint arrow will not work correctly for this quest.
|tip As a marmot, run north from the previous keg.
|tip The arrow won't point correctly, but you can see the correct location of the Fermented Seed Beer Keg by opening your map.
|tip You will also see the map marker on your minimap.
|tip Run to the waypoint marker on your map without following the waypoint arrow.
|tip The keg looks like a wooden barrel laying on its side on the ground.
|tip It is between a building and a tower.
Poison the Keg of Fermented Seed Beer |q 10720/3 |goto 55.98,23.14
|tip Use the "Poison Keg" ability on your action bar next to the keg.
step
Dismiss the Marmot |nobuff spell:38544 |q 10720
|tip Right-click the "Coax Marmot" buff at the top right of your screen near your minimap.
stickystart "Kill_Bloodmaul_Maulers"
step
kill 5 Bloodmaul Warlock##19994 |q 10784/2 |goto 56.07,26.53
step
label "Kill_Bloodmaul_Maulers"
kill 10 Bloodmaul Mauler##19993 |q 10784/1 |goto 56.07,26.53
step
Follow the path up |goto 58.59,30.70 < 20 |only if walking
Follow the path |goto 61.92,30.00 < 30 |only if walking
talk Rexxar##21984
turnin The Smallest Creatures##10720 |goto 51.82,58.35
accept A Boaring Time for Grulloc##10721 |goto 51.82,58.35
step
talk Tor'chunk Twoclaws##21147
turnin Crush the Bloodmaul Camp##10784 |goto 51.94,58.41
step
Follow the path down |goto 59.65,42.03 < 20 |only if walking
use Huffer's Whistle##31350
|tip A boar will appear and start distracting Grulloc.
|tip You will be running in quickly to loot Grulloc's Sack, on the ground next to Grulloc.
|tip Grulloc doesn't stay distracted for long, so run away quickly after completing the next step.
Click Here After Using the Whistle |confirm |goto 60.19,47.65
step
click Grulloc's Sack##185152
collect Grulloc's Sack##31349 |q 10721/1 |goto 60.89,47.78
step
Follow the path |goto 50.89,43.42 < 30 |only if walking
talk Baron Sablemane##22103
turnin A Boaring Time for Grulloc##10721 |goto 53.25,41.17
accept It's a Trap!##10785 |goto 53.25,41.17
step
Follow the path |goto 50.92,44.27 < 30 |only if walking
Follow the path up |goto 58.42,46.20 < 15 |only if walking
talk Rexxar##21984
turnin It's a Trap!##10785 |goto 51.82,58.35
accept Gorgrom the Dragon-Eater##10723 |goto 51.82,58.35
step
talk Tor'chunk Twoclaws##21147
accept Slaughter at Boulder'mok##10786 |goto 51.94,58.41
step
Enter the building |goto 62.72,38.45 < 7 |walk
talk Innkeeper Aelerya##22922
|tip Inside the building.
home Evergrove |goto 62.86,38.31 |q 11091 |future
step
Cross the bridge |goto 56.07,39.95 < 30 |only if walking
talk Watcher Moonshade##22386
|tip He walks around this area.
turnin Wyrmskull Watcher##10894 |goto 50.25,36.15
accept Longtail is the Lynchpin##10893 |goto 50.25,36.15
step
Enter the tunnel |goto 49.94,35.96 < 15 |walk
kill Draaca Longtail##22396 |q 10893/1 |goto 45.63,32.86
|tip She walks along this path inside the tunnel.
step
Leave the tunnel |goto 49.94,35.96 < 15 |walk
talk Watcher Moonshade##22386
|tip He walks around this area.
turnin Longtail is the Lynchpin##10893 |goto 50.25,36.15
accept Meeting at the Blackwing Coven##10722 |goto 50.25,36.15
stickystart "Accept_The_Truth_Unorbed"
step
Enter the tunnel |goto 49.94,35.96 < 15 |walk
Leave the tunnel |goto 43.21,30.14 < 20 |only if walking
Kill Grishna enemies around this area
|tip You must be within melee range of killing an enemy to receive the buff.
|tip Anytime the buff wears off while in this area, kill Grishna enemies to get it again.
Gain the Understanding of Ravenspeech |havebuff 132188 |goto 41.26,21.01 |q 10747 |future
step
Receive the Third Prophecy |q 10607/3 |goto 40.67,18.66
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
Receive the First Prophecy |q 10607/1 |goto 39.03,17.23
|tip Up on the wooden platform.
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
Receive the Second Prophecy |q 10607/2 |goto 42.46,21.63
|tip Up on the wooden platform.
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
Receive the Fourth Prophecy |q 10607/4 |goto 40.19,23.02
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
label "Accept_The_Truth_Unorbed"
Kill Grishna enemies around this area
collect Orb of the Grishna##31489 |n
use the Orb of the Grishna##31489
accept The Truth Unorbed##10825 |goto 41.26,21.01
stickystart "Kill_Bouldermok_Shamans"
stickystart "Kill_Bouldermok_Brutes"
step
Kill Boulder'mok enemies around this area
collect 3 Grisly Totem##31754 |q 10723 |goto 30.59,22.20
step
click Gorgrom's Altar##185234
Watch the dialogue
|tip Gorgrom will appear and die.
clicknpc Gorgrom the Dragon-Eater##21514
use the Grisly Totem##31754+
|tip Use them on his corpse.
Plant #3# Grisly Totems |q 10723/1 |goto 30.59,22.20
step
label "Kill_Bouldermok_Shamans"
kill 3 Boulder'mok Shaman##21047 |q 10786/2 |goto 30.59,22.20
step
label "Kill_Bouldermok_Brutes"
kill 5 Boulder'mok Brute##21046 |q 10786/1 |goto 30.59,22.20
stickystart "Capture_Wyrmcult_Blackwhelps"
step
Kill Wyrmcult enemies around this area
|tip Inside and outside the cave.
collect 5 Costume Scrbaps##31121 |goto 32.04,33.85 |q 10722
step
use the Costume Scraps##31121+
collect Overseer Disguise##31122 |q 10722
step
label "Capture_Wyrmcult_Blackwhelps"
use the Blackwhelp Net##31129
|tip Use it on Wyrmcult Blackwhelps.
|tip Walk next to the brown spiked eggs to spawn more Wyrmcult Blackwhelps.
|tip Inside the cave.
Capture #10# Wyrmcult Blackwhelps |q 10747/1 |goto 32.75,34.88
step
use the Overseer Disguise##31122
|tip Wait to use it at this location.
|tip Inside the cave.
Wear the Overseer Disguise |havebuff 132760 |goto 32.05,37.36 |q 10722
step
talk Kolphis Darkscale##22019
|tip Inside the cave.
Tell him _"I'm fine, thank you. You asked for me?"_
Attend the Meeting with Kolphis Darkscale |q 10722/1 |goto 32.64,37.49
step
talk Timeon##21782
turnin Whispers of the Raven God##10607 |goto 62.16,39.10
step
talk Samia Inkling##21983
turnin Whelps of the Wyrmcult##10747 |goto 61.94,39.45
step
talk Tree Warden Chawn##22007
turnin Meeting at the Blackwing Coven##10722 |goto 61.98,39.47
turnin The Truth Unorbed##10825 |goto 61.98,39.47
step
talk Rexxar##21984
turnin Gorgrom the Dragon-Eater##10723 |goto 51.82,58.35
step
talk Tor'chunk Twoclaws##21147
turnin Slaughter at Boulder'mok##10786 |goto 51.94,58.41
stickystart "Collect_Iridescent_Wings"
step
kill Silkwing Larva##20747+
collect 8 Silkwing Cocoon##30791 |q 10617/1 |goto 74.21,70.88
You can find more around [75.08,75.46]
step
label "Collect_Iridescent_Wings"
Kill Silkwing enemies around this area
collect 12 Iridescent Wing##30792 |q 10618/1 |goto 75.19,69.36
You can find more around [75.08,75.46]
step
Kill Vekh'nir enemies around this area
collect Vekh'nir Crystal##30561 |goto 77.80,74.66 |q 10565
step
use the Vekh'nir Crystal##30561
Charge the Vekh'nir Crystal |q 10565/1 |goto 77.80,74.66
step
talk Dertrok##21496
turnin The Stones of Vekh'nir##10565 |goto 75.14,62.10
step
Watch the dialogue
talk Dertrok##21496
accept Trial and Error##10566 |goto 75.14,62.10
step
talk Silmara##21896
turnin The Softest Wings##10618 |goto 75.84,61.53
step
talk Taerek##21895
turnin Silkwing Cocoons##10617 |goto 75.87,61.42
step
talk Leoroxx##22004
accept Understanding the Mok'Nathal##10846 |goto 75.29,60.86
step
use Dertrok's Wand Case##30650
collect Dertrok's First Wand##30651 |q 10566
collect Dertrok's Second Wand##30652 |q 10566
collect Dertrok's Third Wand##30653 |q 10566
collect Dertrok's Fourth Wand##30654 |q 10566
stickystart "Test_the_Wands"
step
Follow the path up |goto 73.61,75.03 < 30 |only if walking
Enter the cave |goto 71.35,74.42 < 7 |walk
Follow the path up |goto 69.78,73.08 < 10 |walk
kill Vekh##22305 |q 10846/1 |goto 70.07,72.17
|tip Inside the cave.
step
Follow the path up |goto 70.74,73.85 < 10 |walk
Leave the cave |goto 71.35,74.42 < 7 |c |q 10566
step
label "Test_the_Wands"
Kill Vekh'nir enemies around this area
collect Infused Vekh'nir Crystal##30655+ |n
use Dertrok's First Wand##30651 |only if not completedq(10566,1)
use Dertrok's Second Wand##30652 |only if not completedq(10566,2)
use Dertrok's Third Wand##30653 |only if not completedq(10566,3)
use Dertrok's Fourth Wand##30654 |only if not completedq(10566,4)
|tip Use it on a Dullgrom Dredger.
|tip They look like ogres with a swirling effect above their heads on the ground around this area.
Test the First Wand |q 10566/1 |goto 72.21,73.56
Test the Second Wand |q 10566/2 |goto 72.21,73.56
Test the Third Wand |q 10566/3 |goto 72.21,73.56
Test the Fourth Wand |q 10566/4 |goto 72.21,73.56
step
talk Dertrok##21496
turnin Trial and Error##10566 |goto 75.14,62.10
accept Ruuan Weald##10615 |goto 75.14,62.10
step
talk Leoroxx##22004
turnin Understanding the Mok'Nathal##10846 |goto 75.29,60.86
accept Since Time Forgotten...##10843 |goto 75.29,60.86
step
talk Spiritcaller Dohgar##22312
accept The Totems of My Enemy##10851 |goto 74.91,60.47
stickystart "Collect_Raptor_Ribs"
step
Follow the path up |goto 71.02,61.68 < 20 |only if walking
Follow the path |goto 69.02,63.81 < 20 |only if walking
kill Scalewing Serpent##20749+
collect 3 Serpent Flesh##31671 |q 10860/2 |goto 68.55,72.36
You can find more around: |notinsticky
[67.75,64.21]
[63.84,52.56]
step
label "Collect_Raptor_Ribs"
kill Daggermaw Lashtail##20751+
collect 3 Raptor Ribs##31670 |q 10860/1 |goto 68.55,72.36
You can find more around: |notinsticky
[67.75,64.21]
[63.84,52.56]
stickystart "Collect_Bladespire_Totems"
step
kill Gnosh Brognat##20768 |q 10843/1 |goto 57.14,54.49
step
label "Collect_Bladespire_Totems"
Kill Bladespire enemies around this area
collect 5 Bladespire Totem##31651 |q 10851/1 |goto 58.37,54.92
You can find more around [57.43,59.40]
step
Follow the road |goto 62.09,55.82 < 50 |only if walking
Follow the path down |goto 69.21,61.52 < 20 |only if walking
Follow the path |goto 74.18,62.80 < 30 |only if walking
talk Leoroxx##22004
turnin Since Time Forgotten...##10843 |goto 75.29,60.86
accept Slay the Brood Mother##10845 |goto 75.29,60.86
step
talk Spiritcaller Dohgar##22312
turnin The Totems of My Enemy##10851 |goto 74.91,60.47
accept Spirit Calling##10853 |goto 74.91,60.47
step
Enter the building |goto 75.87,60.54 < 10 |walk
talk Matron Varah##21088
|tip Inside the building.
turnin Mok'Nathal Treats##10860 |goto 76.09,60.31
stickystart "Collect_Lesser_Nether_Drake_Spirits"
step
Follow the path up |goto 71.09,61.60 < 20 |only if walking
Follow the path |goto 68.99,63.83 < 20 |only if walking
Continue following the path |goto 67.71,74.71 < 50 |only if walking
kill Dreadwing##21032 |q 10845/1 |goto 65.38,78.13
|tip She looks like a large spirit dragon that walks around this area.
step
label "Collect_Lesser_Nether_Drake_Spirits"
use the Spirit Calling Totems##31663
|tip Use it near Lesser Nether Drakes around this area.
|tip The totem only has 5 charges before you'll have to go get a replacement at Mok'nathal Village.
kill Lesser Nether Drake##21004+
|tip Try to kill at least 2 Lesser Nether Drakes per totem, to avoid having to run to get another one.
|tip If you are unable to attack them, open your Reputations by pressing "U", click "Netherwing", and choose "At War".
|tip This will allow you to attack them and complete the quest but you won't lose reputation.
collect 8 Lesser Nether Drake Spirit##31656 |q 10853/1 |goto 64.48,76.85
You can get another totem from Spiritcaller Dohgar at [74.91,60.47]
step
Follow the path |goto 67.71,74.71 < 50 |only if walking
Follow the path down |goto 69.16,63.68 < 20 |only if walking
Follow the path |goto 74.14,62.77 < 30 |only if walking
talk Leoroxx##22004
turnin Slay the Brood Mother##10845 |goto 75.29,60.86
step
talk Spiritcaller Dohgar##22312
turnin Spirit Calling##10853 |goto 74.91,60.47
accept Gather the Orbs##10859 |goto 74.91,60.47
step
Follow the path up |goto 71.14,61.56 < 20 |only if walking
Follow the path |goto 68.95,61.33 < 20 |only if walking
Follow the road |goto 65.07,53.14 < 50 |only if walking
use the Orb Collecting Totem##31668
|tip Use it here repeatedly.
|tip It will capture the Razaani Light Orbs as they spawn.
Collect #15# Razaani Light Orbs |q 10859/1 |goto 65.53,46.66
step
Follow the road |goto 65.07,53.78 < 50 |only if walking
Follow the path down |goto 69.17,61.51 < 20 |only if walking
Follow the path |goto 74.17,62.79 < 30 |only if walking
talk Spiritcaller Dohgar##22312
turnin Gather the Orbs##10859 |goto 74.91,60.47
accept Inform Leoroxx!##10865 |goto 74.91,60.47
step
talk Leoroxx##22004
turnin Inform Leoroxx!##10865 |goto 75.29,60.86
accept There Can Be Only One Response##10867 |goto 75.29,60.86
step
Follow the path up |goto 71.14,61.56 < 20 |only if walking
Follow the path |goto 68.95,61.33 < 20 |only if walking
Follow the road |goto 65.07,53.14 < 50 |only if walking
Kill Razaani enemies around this area
|tip When they die, yellow orbs will float into this portal.
|tip Keep an eye on this portal, Nexus-Prince Razaan will eventually emerge from it.
|tip You will see him yell in your chat when he appears.
kill Nexus-Prince Razaan##21057
click Collection of Souls##185033
|tip It appears above Nexus-Prince Razaan's corpse.
collect Collection of Souls##30890 |q 10867/1 |goto 66.40,44.09
step
talk Timeon##21782
turnin Ruuan Weald##10615 |goto 62.16,39.11
step
talk Spiritcaller Dohgar##22312
turnin There Can Be Only One Response##10867 |goto 74.91,60.47
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Netherstorm (68-70)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Netherstorm",
next="Leveling Guides\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)",
condition_suggested=function() return level >= 68 and level <= 70 and not completedq(10257) end,
},[[
step
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Scryers faction by completing this quest.
step
Follow the path up |goto Blade's Edge Mountains/0 65.30,39.96 < 20 |only if walking
Follow the road |goto Blade's Edge Mountains/0 74.52,23.06 < 50 |only if walking
Cross the bridge |goto Netherstorm/0 82.56,28.69 < 30 |only if walking
talk Netherologist Coppernickels##19569
|tip He walks around this area.
accept Off To Area 52##10183 |goto Netherstorm/0 21.05,55.86
step
talk Bot-Specialist Alley##19578
accept Recharging the Batteries##10190 |goto 31.52,56.59
step
kill Phase Hunter##18879+
|tip Don't kill them, just weaken them.
use the Battery Recharging Blaster##28369
|tip Use it on weakened Phase Hunters around this area.
|tip Kill them after you weaken them.
Charge #10# Battery Levels |q 10190/1 |goto 28.90,51.28
step
talk Bot-Specialist Alley##19578
turnin Recharging the Batteries##10190 |goto 31.52,56.59
step
talk Boots##19617
accept Securing the Shaleskin Shale##10342 |goto 32.27,63.92
step
talk Rocket-Chief Fuselage##19570
turnin Off To Area 52##10183 |goto 32.68,64.41
accept You're Hired!##10186 |goto 32.68,64.41
step
Enter the building |goto 32.11,64.52 < 7 |walk
talk Innkeeper Remi Dodoso##19571
|tip Inside the building.
home Area 52 |goto 31.95,64.42 |q 10280 |future
step
talk Spymaster Thalodien##19468
|tip Inside the building.
accept Manaforge B'naar##10189 |goto 32.00,64.07
|only if rep('The Scryers') >= Neutral
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Distraction at Manaforge B'naar##10241 |goto 32.07,64.17
|only if rep('The Aldor') >= Neutral
step
talk Ravandwyr##19217
accept The Archmage's Staff##10173 |goto 31.36,66.15
step
Follow the path |goto 33.59,64.90 < 10 |only if walking
talk Krexcil##18938
fpath Area 52 |goto 33.75,63.99
step
talk Maxx A. Million Mk. V##19589
|tip If he's not there, someone else may be escorting him.
|tip Wait for him to respawn.
|tip The quest is a group quest, but you should be able to solo it fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
accept Mark V is Alive!##10191 |goto 31.58,56.62
stickystart "Collect_Etherlithium_Matrix_Crystals"
step
Watch the dialogue
|tip Follow Maxx A. Million Mk. V and protect him as he walks.
|tip He eventually walks to this location.
Escort Maxx A. Million Mk. V Safely Through the Ruins of Enkaat |q 10191/1 |goto 31.59,56.63
step
talk Bot-Specialist Alley##19578
turnin Mark V is Alive!##10191 |goto 31.52,56.59
step
label "Collect_Etherlithium_Matrix_Crystals"
click Etherlithium Matrix Crystal##183767+
|tip They look like small red crystals on the ground around this area.
collect 10 Etherlithium Matrix Crystal##28364 |q 10186/1 |goto 33.85,54.31
step
kill Shaleskin Flayer##20210+
collect 5 Shaleskin Shale##29464 |q 10342/1 |goto 32.88,60.73
You can find more around [27.73,59.34]
step
Follow the path |goto 32.21,63.00 < 10 |only if walking
talk Boots##19617
turnin Securing the Shaleskin Shale##10342 |goto 32.27,63.92
accept That Little Extra Kick##10199 |goto 32.27,63.92
step
talk Rocket-Chief Fuselage##19570
turnin You're Hired!##10186 |goto 32.68,64.41
accept Invaluable Asset Zapping##10203 |goto 32.68,64.41
accept Report to Engineering##10225 |goto 32.68,64.41
step
talk Chief Engineer Trep##19709
|tip He walks around this area.
turnin Report to Engineering##10225 |goto 32.46,66.78
accept Essence for the Engines##10224 |goto 32.46,66.78
step
kill Mana Wraith##18864+
collect 7 Mana Wraith Essence##28527 |q 10224/1 |goto 34.71,58.42
step
talk Chief Engineer Trep##19709
|tip He walks around this area.
turnin Essence for the Engines##10224 |goto 32.46,66.78
accept Elemental Power Extraction##10226 |goto 32.46,66.78
step
Follow the road |goto 29.09,64.56 < 50 |only if walking
kill Captain Arathyn##19635
|tip He walks on a purple bird around this area.
collect B'naar Personnel Roster##28376 |q 10189/1 |goto 27.54,65.25
|only if rep ('The Scryers') >= Neutral
stickystart "Kill_Sunfury_Bloodwarders"
step
Follow the road |goto 29.09,64.56 < 50 |only if walking
kill 8 Sunfury Magister##18855+ |q 10241/1 |goto 25.63,67.22
|only if rep ('The Aldor') >= Neutral
step
label "Kill_Sunfury_Bloodwarders"
kill 8 Sunfury Bloodwarder##18853+ |q 10241/2 |goto 27.47,72.06
|only if rep ('The Aldor') >= Neutral
step
Follow the path |goto 26.14,73.27 < 30 |only if walking
use the Elemental Power Extractor##28547
|tip Use it on on Sundered Rumblers and Warp Aberrations around this area.
Kill enemies around this area
click Elemental Power##183933+
|tip They look like small blue crystals that appear above their corpses after you kill Sundered Rumblers and Warp Aberrations.
collect 5 Elemental Power##28548 |q 10226/1 |goto 22.17,77.52
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Distraction at Manaforge B'naar##10241 |goto 32.07,64.18
accept Measuring Warp Energies##10313 |goto 32.07,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
accept Naaru Technology##10243 |goto 32.03,64.18
accept Assisting the Consortium##10263 |goto 32.03,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Manaforge B'naar##10189 |goto 32.00,64.07
accept High Value Targets##10193 |goto 32.00,64.07
only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
accept Bloodgem Crystals##10204 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Nether-Stalker Khay'ji##19880
turnin Assisting the Consortium##10263 |goto 32.44,64.20
accept Consortium Crystal Collection##10265 |goto 32.44,64.20
step
click Multi-Spectrum Terrain Analyzer##183807
Retrieve the Multi-Spectrum Terrain Analyzer |q 10203/3 |goto 40.29,72.92
step
click Hyper Rotational Dig-A-Matic##183805
Retrieve the Hyper Rotational Dig-A-Matic |q 10203/1 |goto 41.04,73.67
step
kill Pentatharon##20215
collect Arklon Crystal Artifact##28829 |q 10265/1 |goto 42.46,72.75
step
click Big Wagon Full of Explosives##183808
Retrieve the Big Wagon Full of Explosives |q 10203/4 |goto 42.48,72.22
step
click Servo-Pneumatic Dredging Claw##183806
Retrieve the Servo-Pneumatic Dredging Claw |q 10203/2 |goto 41.44,71.85
step
use the Conjuring Powder##29207
kill Ekkorash the Inquisitor##19493
collect Archmage Vargoth's Staff##28292 |q 10173/1 |goto 40.90,72.56
step
kill Nether Ray##18880+
collect 5 Nether Ray Stinger##28417 |q 10199/1 |goto 44.88,70.68
step
Follow the road |goto 41.78,75.83 < 30 |only if walking
talk Lead Sapper Blastfizzle##19634
turnin Invaluable Asset Zapping##10203 |goto 34.19,68.15
accept Dr. Boom!##10221 |goto 34.19,68.15
step
Follow the path |goto 34.47,66.54 < 20 |only if walking
talk Nether-Stalker Khay'ji##19880
turnin Consortium Crystal Collection##10265 |goto 32.44,64.20
accept A Heap of Ethereals##10262 |goto 32.44,64.20
step
talk Boots##19617
turnin That Little Extra Kick##10199 |goto 32.27,63.92
step
talk Papa Wheeler##19645
accept Pick Your Part##10206 |goto 32.98,64.66
step
talk Ravandwyr##19217
turnin The Archmage's Staff##10173 |goto 31.36,66.15
accept Rebuilding the Staff##10300 |goto 31.36,66.15
step
talk Chief Engineer Trep##19709
|tip He walks around this area.
turnin Elemental Power Extraction##10226 |goto 32.45,66.78
step
use Boom's Doom##29429
|tip Use it repeatedly on Dr. Boom nearby.
|tip Stand on this barrel.
|tip You will be far enough away that he can't hurt you.
kill Dr. Boom##20284 |q 10221/1 |goto 34.71,59.53
step
Kill Disembodied enemies around this area
collect 4 Flawless Crystal Shard##29216 |q 10300/1 |goto 33.53,53.81
step
talk Lead Sapper Blastfizzle##19634
turnin Dr. Boom!##10221 |goto 34.19,68.15
step
Follow the path |goto 34.49,66.66 < 20 |only if walking
talk Ravandwyr##19217
turnin Rebuilding the Staff##10300 |goto 31.36,66.15
accept Curse of the Violet Tower##10174 |goto 31.36,66.15
stickystart "Kill_Sunfury_Geologists"
stickystart "Kill_Sunfury_Warp_Masters"
stickystart "Kill_Sunfury_Warp_Engineers"
step
kill Sunfury Magister##18855+
collect Bloodgem Shard##28452 |n
use the Bloodgem Shard##28452
|tip Use it next to a floating crystal around this area.
Siphon the Bloodgem Crystal |q 10204/1 |goto 25.16,66.11
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Geologists"
kill 8 Sunfury Geologist##19779 |q 10193/3 |goto 23.43,72.28
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Warp_Masters"
kill 2 Sunfury Warp-Master##18857 |q 10193/1 |goto 23.43,72.28
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Warp_Engineers"
kill 6 Sunfury Warp-Engineer##18852 |q 10193/2 |goto 22.71,71.91
|tip They are usually next to the wall of the manaforge.
You can find more around [28.78,71.84]
|only if rep ('The Scryers') >= Neutral
step
use the Warp-Attuned Orb##29324
Measure the Northern Pipeline |q 10313/1 |goto 25.71,60.61
|only if rep ('The Aldor') >= Neutral
step
use the Warp-Attuned Orb##29324
Measure the Western Pipeline |q 10313/4 |goto 20.90,66.88
|only if rep ('The Aldor') >= Neutral
step
use the Warp-Attuned Orb##29324
Measure the Southern Pipeline |q 10313/3 |goto 20.54,70.62
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 21.72,69.65 < 7 |walk
click B'naar Control Console##183770
|tip Inside the building.
turnin Naaru Technology##10243 |goto 23.17,68.17
accept B'naar Console Transcription##10245 |goto 23.17,68.17
|only if rep ('The Aldor') >= Neutral
step
Leave the building |goto 24.90,67.67 < 7 |walk
use the Warp-Attuned Orb##29324
Measure the Eastern Pipeline |q 10313/2 |goto 28.81,72.01
|only if rep ('The Aldor') >= Neutral
stickystart "Collect_Zaxxis_Insignias"
step
click Ethereal Technology##183814+
|tip They look like small glass boxes on the ground around this area.
collect 10 Ethereal Technology##28457 |q 10206/1 |goto 28.79,77.43
step
label "Collect_Zaxxis_Insignias"
Kill Zaxxis enemies around this area
collect 10 Zaxxis Insignia##29209 |q 10262/1 |goto 28.79,77.43
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Exarch Orelis##19466
|tip Inside the building.
turnin Measuring Warp Energies##10313 |goto 32.08,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin B'naar Console Transcription##10245 |goto 32.04,64.18
accept Shutting Down Manaforge B'naar##10299 |goto 32.04,64.18
|only if rep ('The Aldor') >= Neutral
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin High Value Targets##10193 |goto 32.00,64.07
accept Shutting Down Manaforge B'naar##10329 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
turnin Bloodgem Crystals##10204 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Nether-Stalker Khay'ji##19880
turnin A Heap of Ethereals##10262 |goto 32.44,64.21
accept Warp-Raider Nesaad##10205 |goto 32.44,64.21
step
talk Papa Wheeler##19645
turnin Pick Your Part##10206 |goto 32.98,64.66
accept In A Scrap With The Legion##10232 |goto 32.98,64.66
accept Help Mama Wheeler##10333 |goto 32.98,64.66
step
Enter the building |goto 24.91,67.67 < 7 |walk
kill Overseer Theredis##20416
|tip He walks back and forth in this hallway.
|tip Inside the building.
collect B'naar Access Crystal##29366 |q 10299/2 |goto 23.83,70.58 |only if rep ('The Aldor') >= Neutral
collect B'naar Access Crystal##29366 |q 10329/2 |goto 23.83,70.58 |only if rep ('The Scryers') >= Neutral
step
click B'naar Control Console##183770
|tip Inside the building.
Choose _<Begin emergency shutdown.>_
Kill the enemies that attack in waves
|tip This takes 2 minutes.
Shut Down Manaforge B'naar |q 10299/1 |goto 23.18,68.16 |only if rep ('The Aldor') >= Neutral
Shut Down Manaforge B'naar |q 10329/1 |goto 23.18,68.16 |only if rep ('The Scryers') >= Neutral
step
Leave the building |goto 24.89,67.67 < 7 |walk
kill Warp-Raider Nesaad##19641 |q 10205/1 |goto 28.27,79.60
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge B'naar##10299 |goto 32.04,64.18
accept Shutting Down Manaforge Coruu##10321 |goto 32.04,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Attack on Manaforge Coruu##10246 |goto 32.08,64.18
|only if rep ('The Aldor') >= Neutral
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Shutting Down Manaforge B'naar##10329 |goto 32.00,64.07
accept Stealth Flight##10194 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Nether-Stalker Khay'ji##19880
turnin Warp-Raider Nesaad##10205 |goto 32.44,64.21
accept Request for Assistance##10266 |goto 32.44,64.21
step
talk Veronia##20162
turnin Stealth Flight##10194 |goto 33.81,64.23
accept Behind Enemy Lines##10652 |goto 33.81,64.23
|only if rep ('The Scryers') >= Neutral
step
talk Veronia##20162
Tell her _"I'm as ready as I'll ever be."_
Take a Flight to Manaforge Coruu |ontaxi |goto 33.81,64.23 |q 10652
|only if rep ('The Scryers') >= Neutral
step
Fly to Manaforge Coruu |offtaxi |goto 48.24,86.66 |q 10652 |notavel
|only if rep ('The Scryers') >= Neutral
step
talk Caledis Brightdawn##19840
turnin Behind Enemy Lines##10652 |goto 48.24,86.60
accept A Convincing Disguise##10197 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
kill Sunfury Arcanist##20134+ |n
collect Sunfury Arcanist Robes##28635 |q 10197/3 |goto 47.7,84.9
|only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 47.26,80.93 < 10 |walk
kill Sunfury Researcher##20136+ |n
|tip Inside the building.
collect Sunfury Researcher Gloves##28636 |q 10197/1 |goto 48.38,81.74
|only if rep ('The Scryers') >= Neutral
step
Follow the path |goto 49.49,82.47 < 7 |walk
Leave the building |goto 50.38,83.07 < 10 |walk
kill Sunfury Guardsmen##18850+
collect Sunfury Guardsman Medallion##28637 |q 10197/2 |goto 51.22,83.75
|only if rep ('The Scryers') >= Neutral
step
talk Caledis Brightdawn##19840
turnin A Convincing Disguise##10197 |goto 48.24,86.60
accept Information Gathering##10198 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
use the Sunfury Disguise##28607
Wear the Sunfury Disguise |havebuff 133564
|only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 47.26,80.93 < 10 |walk
Follow the path |goto 48.14,81.54 < 7 |walk
Follow the path |goto 48.52,83.00 < 7 |walk
Watch the dialogue
|tip Inside the building.
|tip Be careful, the Arcane Annihilator can see through the disguise and will attack you.
Gather the Information |q 10198/1 |goto 48.19,84.07
|only if rep ('The Scryers') >= Neutral
step
Follow the path |goto 48.50,83.01 < 7 |walk
Follow the path |goto 48.14,81.54 < 7 |walk
Leave the building |goto 47.25,80.93 < 10 |walk
talk Caledis Brightdawn##19840
turnin Information Gathering##10198 |goto 48.24,86.60
accept Shutting Down Manaforge Coruu##10330 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
Follow the road |goto 38.03,75.49 < 50 |only if walking
Cross the bridge |goto 44.03,76.57 < 20 |only if walking
kill 8 Sunfury Arcanist##20134 |q 10246/2 |goto 46.57,81.22
|only if rep ('The Aldor') >= Neutral
stickystart "Kill_Sunfury_Researchers"
step
Enter the building |goto 47.26,80.93 < 7 |walk
kill Overseer Seylanna##20397
|tip Inside the building.
collect Coruu Access Crystal##29396 |q 10330/2 |goto 49.02,81.51 |only if rep ('The Scryers') >= Neutral
collect Coruu Access Crystal##29396 |q 10321/2 |goto 49.02,81.51 |only if rep ('The Aldor') >= Neutral
step
label "Kill_Sunfury_Researchers"
kill 5 Sunfury Researcher##20136+ |q 10246/1 |goto 48.38,81.74
|tip Inside the building. |notinsticky
|only if rep ('The Aldor') >= Neutral
step
click Coruu Control Console##183956
|tip Inside the building.
Choose _<Begin emergency shutdown.>_
Kill the enemies that attack in waves
|tip This takes 2 minutes.
Shut Down Manaforge Coruu |q 10321/1 |goto 48.95,81.51 |only if rep ('The Aldor') >= Neutral
Shut Down Manaforge Coruu |q 10330/1 |goto 48.95,81.51 |only if rep ('The Scryers') >= Neutral
step
Follow the path |goto 48.14,81.54 < 7 |walk
Leave the building |goto 47.25,80.93 < 10 |walk
talk Caledis Brightdawn##19840 |goto 48.24,86.60
turnin Shutting Down Manaforge Coruu##10330 |goto 48.24,86.60
accept Return to Thalodien##10200 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
talk Thadell##20464
accept Needs More Cowbell##10334 |goto 57.72,84.94
step
talk Apprentice Andrethan##20463
accept Indispensable Tools##10331 |goto 57.71,85.19
step
talk Custodian Dieworth##19488
accept Malevolent Remnants##10184 |goto 57.51,86.34
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Curse of the Violet Tower##10174
accept The Sigil of Krasus##10188
step
talk Custodian Dieworth##19488
accept A Fate Worse Than Death##10185 |goto 57.51,86.34
step
talk Lieutenant-Sorcerer Morran##19489
accept The Unending Invasion##10343 |goto 57.58,86.30
stickystart "Slay_Severed_Spirits"
step
kill Abjurist Belmara##19546
|tip She walks around this area.
collect Belmara's Tome##29234 |n
use Belmara's Tome##29234
accept Abjurist Belmara##10305 |goto 58.51,88.35
step
Enter the building |goto 60.17,87.29 < 7 |walk
kill Battle-Mage Dathric##19543
|tip Inside the building.
collect Dathric's Blade##29233 |n
use Dathric's Blade##29233
accept Battle-Mage Dathric##10182 |goto 60.41,88.01
step
kill Cohlien Frostweaver##19545
|tip He walks around this area.
collect Cohlien's Cap##29236 |n
use Cohlien's Cap##29236
accept Cohlien Frostweaver##10307 |goto 59.72,86.68
step
kill Kirin'Var Apprentice##20409+
collect Smithing Hammer##29365 |q 10331/1 |goto 61.12,84.87
step
kill Conjurer Luminrath##19544
|tip He walks around this area.
collect Luminrath's Mantle##29235 |n
use Luminrath's Mantle##29235
accept Conjurer Luminrath##10306 |goto 60.26,84.96
step
Cross the bridge |goto 59.23,83.89 < 15 |only if walking
talk Bessy##20415
|tip If she's not here, someone else may be escorting her.
|tip Wait for her to respawn.
|tip The quest is a group quest, but you should be able to solo it fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
turnin Needs More Cowbell##10334 |goto 59.15,78.79
accept When the Cows Come Home##10337 |goto 59.15,78.79
step
Watch the dialogue
|tip Follow Bessy and protect her as she walks.
|tip She eventually walks to this location.
|tip If you find this escort quest too
Escort Bessy on Her Way Home |q 10337/1 |goto 57.75,84.98
step
talk Thadell##20464
turnin When the Cows Come Home##10337 |goto 57.72,84.94
step
talk Apprentice Andrethan##20463
turnin Indispensable Tools##10331 |goto 57.71,85.19
accept Master Smith Rhonsus##10332 |goto 57.71,85.19
step
label "Slay_Severed_Spirits"
Kill Severed enemies around this area
Slay #20# Severed Spirits |q 10184/1 |goto 59.64,85.42
step
talk Custodian Dieworth##19488
turnin Malevolent Remnants##10184 |goto 57.51,86.34
accept The Annals of Kirin'Var##10312 |goto 57.51,86.34
stickystart "Kill_Mana_Seekers"
stickystart "Kill_Mageslayers"
step
Enter the building |goto 56.74,86.64 < 7 |walk
use Dathric's Blade##28351
|tip Inside the building.
Put Dathric's Spirit to Rest |q 10182/1 |goto 56.88,86.85
step
use Luminrath's Mantle##28352
Put Luminrath's Spirit to Rest |q 10306/1 |goto 56.41,87.80
step
click Mana Bomb Fragment##184433
collect Mana Bomb Fragment##29461 |q 10343/1 |goto 55.72,87.21
step
use Cohlien's Cap##28353
Put Cohlien's Spirit to Rest |q 10307/1 |goto 55.09,87.54
step
use Belmara's Tome##28336
Put Belmara's Spirit to Rest |q 10305/1 |goto 55.48,86.53
step
label "Kill_Mana_Seekers"
kill 10 Mana Seeker##18867 |q 10185/1 |goto 56.05,87.14
step
label "Kill_Mageslayers"
kill 10 Mageslayer##18866 |q 10185/2 |goto 56.05,87.14
step
talk Custodian Dieworth##19488
turnin Abjurist Belmara##10305 |goto 57.51,86.34
turnin A Fate Worse Than Death##10185 |goto 57.51,86.34
turnin Battle-Mage Dathric##10182 |goto 57.51,86.34
turnin Cohlien Frostweaver##10307 |goto 57.51,86.34
turnin Conjurer Luminrath##10306 |goto 57.51,86.34
step
talk Lieutenant-Sorcerer Morran##19489
turnin The Unending Invasion##10343 |goto 57.58,86.30
accept Potential Energy Source##10239 |goto 57.58,86.30
step
Enter the building |goto 60.17,87.29 < 7 |walk
kill Battle-Mage Dathric##19543
|tip Inside the building.
collect Annals of Kirin'Var##29331 |q 10312/1 |goto 60.41,88.01
step
Leave the building |goto 60.17,87.29 < 7 |walk
kill Rhonsus##20410 |q 10332/1 |goto 60.94,84.81
|tip He walks around this area.
step
talk Apprentice Andrethan##20463
turnin Master Smith Rhonsus##10332 |goto 57.71,85.19
step
talk Custodian Dieworth##19488
turnin The Annals of Kirin'Var##10312 |goto 57.51,86.34
accept Searching for Evidence##10316 |goto 57.51,86.34
step
Cross the bridge |goto 59.22,83.87 < 15 |only if walking
Enter the building |goto 60.32,78.39 < 7 |walk
click Necromantic Focus##184300
|tip Inside the building.
turnin Searching for Evidence##10316 |goto 60.31,77.98
accept A Lingering Suspicion##10314 |goto 60.31,77.98
step
Kill Tormented enemies around this area
|tip The Tormented enemies around this area turn into Kirin'Var enemies when they attack you.
Kill Kirin'Var enemies around this area
collect 10 Loathsome Remnant##29338 |q 10314/1 |goto 60.67,79.94
step
Cross the bridge |goto 59.18,82.25 < 15 |only if walking
talk Custodian Dieworth##19488
turnin A Lingering Suspicion##10314 |goto 57.51,86.34
accept Capturing the Phylactery##10319 |goto 57.51,86.34
step
Cross the bridge |goto 59.22,83.87 < 15 |only if walking
click Suspicious Outhouse##184310
collect Naberius's Phylactery##29361 |q 10319/1 |goto 59.88,80.38
step
Cross the bridge |goto 59.18,82.25 < 15 |only if walking
talk Custodian Dieworth##19488
turnin Capturing the Phylactery##10319 |goto 57.51,86.34
stickystart "Collect_Energy_Isolation_Cubes"
step
kill Spellbinder Maryana##19593
|tip She walks around this area.
collect Sigil of Krasus##28368 |q 10188/1 |goto 51.38,82.09
step
label "Collect_Energy_Isolation_Cubes"
click Energy Isolation Cube##183945+
|tip They look like glass boxes on the ground around this area.
collect 10 Energy Isolation Cube##28564 |q 10239/1 |goto 51.38,82.09
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin The Sigil of Krasus##10188
accept Krasus's Compendium##10192
step
talk Lieutenant-Sorcerer Morran##19489
turnin Potential Energy Source##10239 |goto 57.58,86.30
accept Building a Perimeter##10240 |goto 57.58,86.30
step
talk Custodian Dieworth##19488
accept The Sunfury Garrison##10222 |goto 57.51,86.34
step
Enter the building |goto 57.58,89.42 < 7 |walk
click Krasus' Compendium - Chapter 2##184122
|tip Inside the building.
collect Krasus's Compendium - Chapter 2##28473 |q 10192/2 |goto 57.55,89.58
step
Enter the building |goto 58.61,88.97 < 7 |walk
click Krasus' Compendium - Chapter 1##184121
|tip Inside the building.
collect Krasus's Compendium - Chapter 1##28472 |q 10192/1 |goto 58.61,89.20
step
Enter the building |goto 58.93,88.03 < 7 |walk
click Krasus' Compendium - Chapter 3##184123
|tip Inside the building.
collect Krasus's Compendium - Chapter 3##28474 |q 10192/3 |goto 58.83,87.95
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Krasus's Compendium##10192
accept Unlocking the Compendium##10301
step
Follow the path |goto 57.58,87.60 < 30 |only if walking
talk Lieutenant-Sorcerer Morran##19489
accept Torching Sunfury Hold##10233 |goto 57.58,86.30
step
use the Rune Activation Device##28725
Activate the Eastern Rune |q 10240/1 |goto 59.23,85.35
step
Cross the bridge |goto 59.22,83.88 < 15 |only if walking
use the Rune Activation Device##28725
Activate the Northeastern Rune |q 10240/2 |goto 57.34,82.88
step
use the Rune Activation Device##28725
Activate the Western Rune |q 10240/3 |goto 54.30,86.08
stickystart "Destroy_Sunfury_Ballistas"
stickystart "Destroy_Sunfury_Tents"
stickystart "Kill_Sunfury_Archers"
step
Follow the road |goto 55.51,82.57 < 30 |only if walking
kill Spellreaver Marathelle##19926
|tip She walks around this area.
collect Heliotrope Oculus##28475 |q 10301/1 |goto 55.90,78.31
step
label "Destroy_Sunfury_Ballistas"
kill Sunfury Flamekeeper##20221+
collect Flaming Torch##28550 |n
use the Flaming Torch##28550
|tip Use it next to Sunfury Ballistas.
|tip They look like catapult machines on the ground around this area.
|tip You must be facing them when you use the Flaming Torch.
|tip You can burn the same on repeatedly, if you wait a moment for it to respawn.
Destroy #4# Sunfury Ballistas |q 10233/1 |goto 55.91,78.53
step
label "Destroy_Sunfury_Tents"
kill Sunfury Flamekeeper##20221+ |notinsticky
collect Flaming Torch##28550 |n |notinsticky
use the Flaming Torch##28550
|tip Use it next to Sunfury Tents.
|tip They look like blue tents on the ground around this area.
|tip You must be facing them when you use the Flaming Torch.
|tip You can burn the same on repeatedly, if you wait a moment for it to respawn.
Destroy #4# Sunfury Tents |q 10233/2 |goto 55.91,78.53
step
label "Kill_Sunfury_Archers"
kill 10 Sunfury Archer##19707 |q 10222/1 |goto 56.09,79.45
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Unlocking the Compendium##10301
accept Summoner Kanthin's Prize##10209
step
talk Custodian Dieworth##19488
turnin The Sunfury Garrison##10222 |goto 57.51,86.34
accept Down With Daellis##10223 |goto 57.51,86.34
step
talk Lieutenant-Sorcerer Morran##19489
turnin Building a Perimeter##10240 |goto 57.58,86.30
turnin Torching Sunfury Hold##10233 |goto 57.58,86.30
step
Follow the road |goto 55.50,82.37 < 30 |only if walking
Cross the bridge |goto 51.56,74.06 < 20 |only if walking
Follow the road |goto 52.11,64.55 < 50 |only if walking
kill Master Daellis Dawnstrike##19705 |q 10223/1 |goto 56.16,66.27
|tip He runs around this area.
step
kill Summoner Kanthin##19657
|tip He walks around this area with a water elemental.
collect Stone of Glacius##28479 |q 10209/1 |goto 57.15,66.00
Also check around [59.08,62.54]
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Summoner Kanthin's Prize##10209
accept Ar'kelos the Guardian##10176
step
Follow the road |goto 59.26,60.62 < 30 |only if walking
talk Harpax##20515
fpath Cosmowrench |goto 65.20,66.81
step
Follow the path |goto 66.03,66.54 < 7 |only if walking
talk Sab'aoth##22479
accept Bloody Imp-ossible!##10924 |goto 66.39,67.30
step
use Zeppit's Crystal##31815
|tip Zeppit will appear next to you.
|tip Use it again if Zeppit disappears.
kill Warp Chaser##18884+
|tip Kill them at melee range, otherwise Zeppit won't collect the quest item.
collect 8 Warp Chaser Blood##31813 |q 10924/1 |goto 63.47,64.52
You can find more around [58.69,59.17]
step
Follow the path |goto 66.03,66.54 < 7 |only if walking
talk Sab'aoth##22479
turnin Bloody Imp-ossible!##10924 |goto 66.39,67.30
step
Follow the road |goto 57.43,61.34 < 30 |only if walking
Continue following the road |goto 51.48,64.96 < 50 |only if walking
Cross the bridge |goto 51.31,71.28 < 20 |only if walking
Follow the road |goto 51.62,79.02 < 50 |only if walking
talk Custodian Dieworth##19488
turnin Down With Daellis##10223 |goto 57.51,86.34
step
Enter the building |goto 57.84,86.15 < 7 |walk
kill Ar'kelos##19494 |q 10176/1 |goto 58.1,86.5
|tip He walks around this area.
|tip Inside the building.
step
talk Archmage Vargoth##19481
|tip Inside the building, on the top floor.
turnin Ar'kelos the Guardian##10176 |goto 58.34,86.40
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Attack on Manaforge Coruu##10246 |goto 32.07,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Coruu##10321 |goto 32.04,64.18
accept Shutting Down Manaforge Duro##10322 |goto 32.04,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Sunfury Briefings##10328 |goto 32.07,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Return to Thalodien##10200 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
accept Kick Them While They're Down##10341 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Spymaster Thalodien##19468
|tip Inside the building.
accept Shutting Down Manaforge Duro##10338 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
Cross the bridge |goto 41.07,63.17 < 20 |only if walking
talk Gahruj##20066
turnin Request for Assistance##10266 |goto 46.66,56.95
accept Rightful Repossession##10267 |goto 46.66,56.95
accept Drijya Needs Your Help##10311 |goto 46.66,56.95
step
talk Mama Wheeler##19728
turnin Help Mama Wheeler##10333 |goto 46.63,56.53
accept One Demon's Trash...##10234 |goto 46.63,56.53
step
talk Mehrdad##20810
accept New Opportunities##10348 |goto 46.45,56.41
accept Run a Diagnostic!##10417 |goto 46.45,56.41
step
talk Shauly Pore##20921
accept Keeping Up Appearances##10433 |goto 46.48,56.04
stickystart "Collect_Ivory_Bells"
stickystart "Collect_Ripfang_Lynx_Pelts"
step
click Diagnostic Equipment##184589
collect Diagnostic Results##29741 |q 10417/1 |goto 48.21,55.00
step
label "Collect_Ivory_Bells"
click Ivory Bell##184443+
|tip They look like pink drooping flowers on the ground around this area.
collect 15 Ivory Bell##29474 |q 10348/1 |goto 45.38,53.65
step
label "Collect_Ripfang_Lynx_Pelts"
kill Ripfang Lynx##20671+
collect 10 Ripfang Lynx Pelt##29801 |q 10433/1 |goto 45.38,53.65
step
talk Shauly Pore##20921
turnin Keeping Up Appearances##10433 |goto 46.48,56.04
accept The Dynamic Duo##10434 |goto 46.48,56.04
step
talk Mehrdad##20810
turnin New Opportunities##10348 |goto 46.45,56.41
turnin Run a Diagnostic!##10417 |goto 46.45,56.41
accept Deal With the Saboteurs##10418 |goto 46.45,56.41
stickystart "Kill_Ganarg_Engineers"
stickystart "Kill_Moarg_Doomsmiths"
step
click Fel Reaver Part##183935+
|tip They look like brown metal objects on the ground around this area.
collect 10 Fel Reaver Part##28551 |q 10234/1 |goto 49.74,57.88
step
label "Kill_Ganarg_Engineers"
kill 15 Gan'arg Engineer##16948 |q 10232/2 |goto 50.38,58.65
step
label "Kill_Moarg_Doomsmiths"
kill 5 Mo'arg Doomsmith##16944 |q 10232/1 |goto 50.38,58.65
step
talk Mama Wheeler##19728
turnin One Demon's Trash...##10234 |goto 46.63,56.53
accept Declawing Doomclaw##10235 |goto 46.63,56.53
step
kill 8 Barbscale Crocolisk##20773 |q 10418/1 |goto 46.50,52.48
step
talk Mehrdad##20810
turnin Deal With the Saboteurs##10418 |goto 46.45,56.41
accept To the Stormspire##10423 |goto 46.45,56.41
step
kill Doomclaw##19738
collect Doomclaw's Hand##28563 |q 10235/1 |goto 50.69,57.18
step
talk Drijya##20281
|tip If he's not there, someone else may be escorting him.
|tip Wait for him to respawn.
turnin Drijya Needs Your Help##10311 |goto 48.11,63.50
stickystart "Collect_Boxes_Of_Surveying_Equipment"
stickystart "Collect_Sunfury_Military_Briefing"
step
kill Sunfury Conjurer##20139+
collect Sunfury Arcane Briefing##29546 |q 10328/2 |goto 57.87,63.68
|only if rep ('The Aldor') >= Neutral
step
label "Collect_Sunfury_Military_Briefing"
Kill Sunfury enemies around this area
|tip Only Sunfury Bowmen and Sunfury Centurions will drop the quest item.
collect Sunfury Military Briefing##29545 |q 10328/1 |goto 58.56,63.44
|only if rep ('The Aldor') >= Neutral
stickystart "Kill_Sunfury_Bowmen"
stickystart "Kill_Sunfury_Centurions"
step
kill 8 Sunfury Conjurer##20139 |q 10341/1 |goto 57.87,63.68
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Bowmen"
kill 6 Sunfury Bowman##20207 |q 10341/2 |goto 57.87,63.68
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Centurions"
kill 4 Sunfury Centurions##20140 |q 10341/3 |goto 57.87,63.68
|only if rep ('The Scryers') >= Neutral
step
label "Collect_Boxes_Of_Surveying_Equipment"
click Box Surveying Equipment##184031+
|tip They look like silver metal boxes on the ground around this area.
collect 10 Box of Surveying Equipment##28913 |q 10267/1 |goto 57.87,63.68
step
Enter the building |goto 58.76,64.20 < 7 |walk
kill Overseer Athanel##20435
|tip Inside the building.
collect Duro Access Crystal##29397 |q 10322/2 |goto 59.99,68.50 |only if rep ('The Aldor') >= Neutral
collect Duro Access Crystal##29397 |q 10338/2 |goto 59.99,68.50 |only if rep ('The Scryers') >= Neutral
step
click Duro Control Console##184311
|tip Inside the building.
Choose _<Begin emergency shutdown.>_
Kill the enemies that attack in waves
|tip This takes 2 minutes.
Shut Down Manaforge Duro |q 10322/1 |goto 59.11,66.78 |only if rep ('The Aldor') >= Neutral
Shut Down Manaforge Duro |q 10338/1 |goto 59.11,66.78 |only if rep ('The Scryers') >= Neutral
step
Leave the building |goto 58.76,64.19 < 7 |walk
Follow the road |goto 53.07,64.47 < 70 |only if walking
talk Gahruj##20066
turnin Rightful Repossession##10267 |goto 46.67,56.95
accept An Audience with the Prince##10268 |goto 46.67,56.95
step
talk Mama Wheeler##19728
turnin Declawing Doomclaw##10235 |goto 46.63,56.53
accept Warn Area 52!##10237 |goto 46.63,56.53
step
Cross the bridge |goto 43.56,47.31 < 20 |only if walking
talk Aurine Moonblaze##20871
accept Flora of the Eco-Domes##10426 |goto 42.32,32.57
step
Ride the elevator up |goto 42.56,33.58 < 10 |only if walking
talk Ghabar##20811
turnin To the Stormspire##10423 |goto 43.54,35.15
accept Diagnosis: Critical##10424 |goto 43.54,35.15
step
talk Nether-Stalker Nauthis##20471
accept The Minions of Culuthas##10336 |goto 44.69,34.93
accept Fel Reavers, No Thanks!##10855 |goto 44.69,34.93
step
talk Zephyrion##20470
accept Surveying the Ruins##10335 |goto 44.72,34.87
step
talk Audi the Needle##20205
turnin The Dynamic Duo##10434 |goto 44.74,36.74
accept Retrieving the Goods##10435 |goto 44.74,36.74
step
Enter the building |goto 45.28,36.01 < 10 |walk
talk Image of Nexus-Prince Haramad##20084
|tip Inside the building.
turnin An Audience with the Prince##10268 |goto 45.86,35.97
accept Triangulation Point One##10269 |goto 45.86,35.97
step
talk Grennik##19583
fpath The Stormspire |goto 45.31,34.87
step
talk Papa Wheeler##19645
turnin In A Scrap With The Legion##10232 |goto 32.98,64.66
step
talk Rocket-Chief Fuselage##19570
turnin Warn Area 52!##10237 |goto 32.68,64.41
accept Doctor Vomisa, Ph.T.##10247 |goto 32.68,64.41
step
Enter the building |goto 32.11,64.53 < 7 |walk
talk Exarch Orelis##19466
|tip Inside the building.
turnin Sunfury Briefings##10328 |goto 32.08,64.17
accept Outside Assistance##10431 |goto 32.08,64.17
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Duro##10322 |goto 32.03,64.18
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 32.11,64.53 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Shutting Down Manaforge Duro##10338 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
turnin Kick Them While They're Down##10341 |goto 32.05,64.00
accept A Defector##10202 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Doctor Vomisa, Ph.T.##19832
|tip He walks around this area.
turnin Doctor Vomisa, Ph.T.##10247 |goto 37.32,63.74
step
Enter the building |goto 43.52,36.03 < 15 |walk
talk Eyonix##19531
|tip Inside the building.
home The Stormspire |goto 43.36,36.14 |q 10434
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
use the Energy Field Modulator##29818
|tip Use it on Farahlon Lashers around this area.
kill Mutated Farahlon Lasher+
Test Energy Modulator #10# Times |q 10426/1 |goto 40.71,35.41
step
talk Aurine Moonblaze##20871
turnin Flora of the Eco-Domes##10426 |goto 42.32,32.57
accept Creatures of the Eco-Domes##10427 |goto 42.32,32.57
step
Kill Talbuk enemies around this area
|tip Don't kill them, just weaken them.
use the Talbuk Tagger##29817
|tip Use it on Talbuk enemies when they are weakened.
Tag #12# Talbuk |q 10427/1 |goto 40.71,35.41
step
talk Aurine Moonblaze##20871
turnin Creatures of the Eco-Domes##10427 |goto 42.32,32.57
accept When Nature Goes Too Far##10429 |goto 42.32,32.57
step
Follow the path down |goto 41.86,31.34 < 30 |only if walking
kill Markaru##20775
|tip Underwater.
collect Hulking Hydra Heart##29768 |q 10429/1 |goto 44.59,28.41
step
use the Diagnostic Device##29803
collect Diagnostic Results##29769 |q 10424/1 |goto 47.63,26.80
stickystart "Kill_Hounds_Of_Culuthas"
stickystart "Kill_Eyes_Of_Culuthas"
step
Follow the road |goto 48.65,22.64 < 30 |only if walking
use the Surveying Markers##29445
Place Surveying Marker One |q 10335/1 |goto 51.66,20.49
step
Follow the road |goto 51.78,23.57 < 30 |only if walking
Continue following the road |goto 56.56,24.14 < 30 |only if walking
use the Surveying Markers##29445
Place Surveying Marker Three |q 10335/3 |goto 55.81,19.93
step
use the Surveying Markers##29445
Place Surveying Marker Two |q 10335/2 |goto 54.56,22.82
step
label "Kill_Hounds_Of_Culuthas"
kill 10 Hound of Culuthas##20141 |q 10336/1 |goto 54.56,22.82
step
label "Kill_Eyes_Of_Culuthas"
kill 5 Eye of Culuthas##20394 |q 10336/2 |goto 54.56,22.82
step
Follow the road |goto 52.68,23.67 < 70 |only if walking
kill Gan'arg Mekgineer##16949+
collect 5 Condensed Nether Gas##31653 |q 10855 |goto 37.77,28.88
step
talk Inactive Fel Reaver##22293
|tip Complete the "Nether Gas In a Fel Fire Engine" repeatable quest.
Watch the dialogue
Destroy the Inactive Fel Reaver |q 10855/1 |goto 35.86,28.84
step
talk Kaylaan##20780
turnin Outside Assistance##10431 |goto 34.80,38.29
accept A Dark Pact##10380 |goto 34.80,38.29
|only if rep ('The Aldor') >= Neutral
step
talk Wind Trader Tuluman##20112
accept Dealing with the Foreman##10317 |goto 34.62,37.95
step
talk Nether-Stalker Oazul##20341
accept Neutralizing the Nethermancers##10315 |goto 34.50,37.80
stickystart "Kill_Sunfury_Nethermancers"
step
Follow the path up |goto 29.57,41.65 < 15 |only if walking
talk Magister Theledorn##20920
turnin A Defector##10202 |goto 26.19,41.57
accept Damning Evidence##10432 |goto 26.19,41.57
|only if rep ('The Scryers') >= Neutral
stickystart "Collect_Orders_From_Kaelthas"
stickystart "Kill_Ganarg_Warp_Tinkerers"
step
kill 1 Daughter of Destiny##18860 |q 10380/2 |goto 30.59,40.66 |count 1
|tip She walks around this area.
|only if rep ('The Aldor') >= Neutral
step
kill 2 Daughter of Destiny##18860 |q 10380/2 |goto 29.68,43.84 |count 2
|tip She walks around this area.
|only if rep ('The Aldor') >= Neutral
step
Enter the mine |goto 26.38,44.00 < 10 |walk
talk Foreman Sundown##20393
|tip Inside the mine.
turnin Dealing with the Foreman##10317 |goto 26.37,42.28
accept Dealing with the Overmaster##10318 |goto 26.37,42.28
step
Follow the path down |goto 26.98,38.01 < 7 |walk
kill Overmaster Grindgarr##20803 |q 10318/1 |goto 26.81,35.85
|tip Inside the mine.
step
label "Kill_Moarg_Warp_Masters"
kill 3 Mo'arg Warp-Master##20326 |q 10380/3 |goto 27.03,37.45
|tip Inside the mine.
|only if rep ('The Aldor') >= Neutral
step
label "Kill_Ganarg_Warp_Tinkerers"
kill 6 Gan'arg Warp-Tinker##20285 |q 10380/1 |goto 27.03,37.45
|tip Inside the mine.
|only if rep ('The Aldor') >= Neutral
step
label "Collect_Orders_From_Kaelthas"
Kill enemies around this area
|tip Inside the mine.
collect 8 Orders From Kael'thas##29797 |q 10432/1 |goto 27.03,37.45
|only if rep ('The Scryers') >= Neutral
step
Follow the path up |goto 26.33,40.68 < 7 |walk
Leave the mine |goto 26.36,44.22 < 10 |c |q 10315
step
kill 3 Daughter of Destiny##18860 |q 10380/2 |goto 29.68,43.84 |count 3
|tip She walks around this area.
|only if rep ('The Aldor') >= Neutral
step
label "Kill_Sunfury_Nethermancers"
kill 15 Sunfury Nethermancer##20248 |q 10315/1 |goto 30.45,41.90
You can find more around: |notinsticky
[30.53,39.78]
[29.68,43.84]
step
Cross the bridge |goto 31.68,41.36 < 20 |only if walking
talk Nether-Stalker Oazul##20341
turnin Neutralizing the Nethermancers##10315 |goto 34.50,37.80
step
talk Wind Trader Tuluman##20112
turnin Dealing with the Overmaster##10318 |goto 34.62,37.95
step
talk Kaylaan##20780
turnin A Dark Pact##10380 |goto 34.80,38.29
accept Aldor No More##10381 |goto 34.80,38.29
|only if rep ('The Aldor') >= Neutral
step
talk Ghabar##20811
turnin Diagnosis: Critical##10424 |goto 43.53,35.15
accept Testing the Prototype##10430 |goto 43.53,35.15
step
talk Nether-Stalker Nauthis##20471
turnin The Minions of Culuthas##10336 |goto 44.69,34.93
turnin Fel Reavers, No Thanks!##10855 |goto 44.69,34.93
accept The Best Defense##10856 |goto 44.69,34.93
step
talk Zephyrion##20470
turnin Surveying the Ruins##10335 |goto 44.72,34.86
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
talk Aurine Moonblaze##20871
turnin When Nature Goes Too Far##10429 |goto 42.32,32.57
step
kill 12 Wrathbringer##18858 |q 10856/1 |goto 41.42,21.90
stickystart "Collect_Dome_Generator_Segments"
step
Follow the road |goto 44.35,21.20 < 50 |only if walking
talk Tashar##20913
turnin Testing the Prototype##10430 |goto 44.69,14.57
accept All Clear!##10436 |goto 44.69,14.57
stickystart "Kill_Scythetooth_Raptors"
step
label "Collect_Dome_Generator_Segments"
click Dome Generator Segment##184607+
|tip They look like glass containers with pink electricity in them on the ground around this area.
collect 10 Dome Generator Segment##29798 |q 10435/1 |goto 44.49,11.69
step
label "Kill_Scythetooth_Raptors"
kill 12 Scythetooth Raptor##20634 |q 10436/1 |goto 44.49,11.69
step
talk Tashar##20913
turnin All Clear!##10436 |goto 44.69,14.57
step
Watch the dialogue
talk Tashar##20913
accept Success!##10440 |goto 44.69,14.57
step
Follow the road |goto 43.24,17.26 < 50 |only if walking
Continue following the road |goto 40.92,30.08 < 50 |only if walking
Ride the elevator up |goto 42.55,33.56 < 10 |only if walking
talk Ghabar##20811
turnin Success!##10440 |goto 43.53,35.14
step
talk Nether-Stalker Nauthis##20471
turnin The Best Defense##10856 |goto 44.69,34.93
accept Teleport This!##10857 |goto 44.69,34.93
step
talk Audi the Needle##20205
turnin Retrieving the Goods##10435 |goto 44.74,36.74
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
use the Mental Interference Rod##31678
|tip Use it on a Cyber-Rage Forgelord around this area.
|tip You can't have any other pet active while doing this.
Destroy the Western Teleporter |q 10857/1 |goto 39.18,20.43
|tip Use the "Detonate Teleporter" ability on your action bar near this structure.
step
use the Mental Interference Rod##31678
|tip Use it on a Cyber-Rage Forgelord around this area.
|tip You can't have any other pet active while doing this.
Destroy the Central Teleporter |q 10857/2 |goto 41.08,19.42
|tip Use the "Detonate Teleporter" ability on your action bar near this structure.
step
use the Mental Interference Rod##31678
|tip Use it on a Cyber-Rage Forgelord around this area.
|tip You can't have any other pet active while doing this.
Destroy the Eastern Teleporter |q 10857/3 |goto 42.28,21.07
|tip Use the "Detonate Teleporter" ability on your action bar near this structure.
step
Follow the road |goto 48.58,22.66 < 30 |only if walking
Cross the bridge |goto 55.58,27.09 < 20 |only if walking
talk Wind Trader Marid##20071
accept A Not-So-Modest Proposal##10270 |goto 58.31,31.65
step
talk Researcher Navuud##20449
accept Electro-Shock Goodness!##10411 |goto 59.25,32.58
step
talk Commander Ameer##20448
accept The Ethereum##10339 |goto 59.50,32.38
step
talk Professor Dabiri##20907
accept Recipe for Destruction##10437 |goto 60.11,31.72
step
talk Flesh Handler Viridius##20450
|tip He walks around this area.
accept Captain Tyralius##10422 |goto 59.73,31.88
step
use Navuud's Concoction##29737
Gain the Electro-Shock Therapy Buff |havebuff 135990 |q 10411
stickystart "Kill_Ethereum_Assassins"
stickystart "Kill_Ethereum_Shocktroopers"
stickystart "Kill_Ethereum_Researchers"
stickystart "Kill_Void_Waste_Globules"
step
Follow the path down |goto 57.21,32.58 < 20 |only if walking
kill Captain Zovax##20727 |q 10339/4 |goto 57.12,36.39
|tip He walks around this area.
step
label "Kill_Ethereum_Assassins"
kill 5 Ethereum Assassin##20452 |q 10339/1 |goto 56.47,38.93
step
label "Kill_Ethereum_Shocktroopers"
kill 5 Ethereum Shocktrooper##20453 |q 10339/2 |goto 57.12,36.39
step
label "Kill_Ethereum_Researchers"
kill 2 Ethereum Researcher##20456 |q 10339/3 |goto 57.12,36.39
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin The Ethereum##10339 |goto 56.81,38.69
accept Ethereum Data##10384 |goto 56.81,38.69
step
click Ethereum Data Cell##184560
collect Ethereum Data Cell##29582 |q 10384/1 |goto 55.77,39.89
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Ethereum Data##10384 |goto 56.81,38.69
accept Potential for Brain Damage = High##10385 |goto 56.81,38.69
step
kill Warden Icoshock##20770
|tip He walks around this area.
collect The Warden's Key##29742 |goto 54.53,40.48 |q 10422
step
click Captain Tyralius's Prison
Free Captain Tyralius |q 10422/1 |goto 53.33,41.48
step
Kill Ethereum enemies around this area
collect Ethereum Essence##29482+ |n
use the Ethereum Essence##29482+
|tip This will allow you to see Ethereum Relays around this area.
|tip The effect only lasts for 1 minute, so you will need multiple.
kill Ethereum Relay##20619+
collect 15 Ethereum Relay Data##29459 |q 10385/1 |goto 55.72,40.82
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Potential for Brain Damage = High##10385 |goto 56.81,38.69
accept S-A-B-O-T-A-G-E##10405 |goto 56.81,38.69
step
Kill Ethereum enemies around this area
|tip Only Ethereum Overlords and Ethereum Archons will drop the quest item.
collect Prepared Ethereum Wrapping##29591 |q 10405/1 |goto 55.79,43.63
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin S-A-B-O-T-A-G-E##10405 |goto 56.81,38.69
step
label "Kill_Void_Waste_Globules"
kill Void Waste##20778+
|tip In the water around this area.
kill 30 Void Waste Globule##20805 |q 10411/2 |goto 55.79,40.47
|tip They sometimes appear after you kill Void Wastes.
step
Follow the path up |goto 57.07,34.38 < 20 |only if walking
talk Researcher Navuud##20449
turnin Electro-Shock Goodness!##10411 |goto 59.25,32.57
step
talk Flesh Handler Viridius##20450
|tip He walks around this area.
turnin Captain Tyralius##10422 |goto 59.73,31.88
step
Follow the path |goto 59.90,35.20 < 15 |only if walking
talk Agent Araxes##20551
accept The Flesh Lies...##10345 |goto 59.42,45.04
stickystart "Burn_Withered_Corpses"
step
Enter the mine |goto 61.05,45.48 < 10 |walk
Follow the path |goto 60.98,44.51 < 7 |walk
Follow the down |goto 60.22,43.46 < 7 |walk
Follow the path |goto 59.75,42.56 < 7 |walk
talk Agent Ya-six##20552
|tip Inside the mine.
accept Arconus the Insatiable##10353 |goto 60.92,41.53
step
click Teleporter Power Pack##184075
|tip Inside the mine.
collect Teleporter Power Pack##28969 |q 10270/1 |goto 60.96,41.53
step
Follow the path up |goto 59.76,42.57 < 7 |walk
Continue up the path |goto 60.44,43.07 < 7 |walk
Continue up the path |goto 60.79,41.39 < 7 |walk
kill Arconus the Insatiable##20554 |q 10353/1 |goto 60.14,39.87
|tip He walks around this area.
|tip Inside the mine.
step
label "Burn_Withered_Corpses"
use the Protectorate Igniter##29473
|tip Use it on Withered Corpses.
|tip They look like dead blood elves on the ground inside the mine.
|tip If you get too close they will turn into fleshbeasts and attack you.
Burn #12# Withered Corpses |q 10345/1 |goto 60.14,39.87
step
Follow the path |goto 60.53,43.57 < 7 |walk
Leave the mine |goto 61.04,45.62 < 10 |walk
talk Agent Araxes##20551
turnin The Flesh Lies...##10345 |goto 59.42,45.04
step
Remove the Electro-Shock Therapy Buff |nobuff spell:35685 |q 10411
|tip Right-click the "Electro-Shock Therapy" buff near your minimap.
step
use Navuud's Concoction##29737
Gain the Electro-Shock Therapy Buff |havebuff spell:35685 |q 10411
stickystart "Collect_Fragments_Of_Dimensius"
step
Follow the road |goto 65.89,46.63 < 30 |only if walking
kill Seeping Sludge##20501+
kill 30 Seeping Sludge Globule##20806 |q 10411/1 |goto 65.90,40.82
|tip They appear after you kill Seeping Sludges.
You can find more around [64.71,41.77]
step
label "Collect_Fragments_Of_Dimensius"
Kill Void enemies around this area
|tip You can find them all around the perimeter of Manaforge Ultris.
collect 8 Fragment of Dimensius##29822 |q 10437/1 |goto 65.90,40.82
You can find more around [64.71,41.77]
step
use the Triangulation Device##28962
|tip Your character will automatically be faced in the direction you need to go.
|tip Run in the direction you become faced until the item is no longer on cooldown.
|tip After the the item completes its cooldown, the quest goal should complete.
Discover the First Triangulation Point |q 10269/1 |goto 66.81,34.82
step
Follow the path down |goto 68.66,33.55 < 30 |only if walking
click Ethereum Transponder Zeta
Choose _"Attempt to contact Wind Trader Marid."_
talk Image of Wind Trader Marid##20518
turnin A Not-So-Modest Proposal##10270 |goto 71.14,38.99
accept Getting Down to Business##10271 |goto 71.14,38.99
step
use the Essence Gatherer##69825
|tip Use it on Nether enemies around this area.
collect 8 Nether Dragon Essence##28970 |q 10271/1 |goto 72.34,38.46
step
talk Shrouded Figure##20154
turnin Getting Down to Business##10271 |goto 70.93,38.82
accept Formal Introductions##10281 |goto 70.93,38.82
step
talk Tyri##20110
turnin Formal Introductions##10281 |goto 71.22,35.12
accept A Promising Start##10272 |goto 71.22,35.12
step
click Nether Dragonkin Egg##184077+
|tip They look like blue eggs with white crystals on them on the ground around this area.
collect 15 Nether Dragonkin Egg##28971 |q 10272/1 |goto 72.14,38.29
step
talk Tyri##20110
turnin A Promising Start##10272 |goto 71.22,35.12
accept Troublesome Distractions##10273 |goto 71.22,35.12
step
Follow the path up |goto 71.09,39.90 < 20 |only if walking
Follow the road |goto 68.32,33.39 < 30 |only if walking
talk Professor Dabiri##20907
turnin Recipe for Destruction##10437 |goto 60.10,31.73
accept On Nethery Wings##10438 |goto 60.10,31.73
step
talk Commander Ameer##20448
turnin Arconus the Insatiable##10353 |goto 59.50,32.39
step
talk Dealer Hazzin##20092
turnin Triangulation Point One##10269 |goto 58.35,31.26
accept Triangulation Point Two##10275 |goto 58.35,31.26
step
Locate Wind Trader Marid |goto 58.32,31.65 < 15 |c |q 10273
step
talk Wind Trader Marid##20071
Tell him _"Wind Trader Marid, I've returned with more information on the nether drakes. I'm prepared to be your business partner, and for an extra sum, I'll take care of that troublesome elf and her human friend."_
Begin Following Wind Trader Marid |goto 58.32,31.65 > 15 |c |q 10273
step
Watch the dialogue
|tip Follow Wind Trader Marid as he walks.
|tip He eventually walks to this location.
kill Wind Trader Marid##20071 |q 10273/1 |goto 59.95,30.96
step
talk Protectorate Nether Drake##20903
Tell him _"I'm ready to fly! Take me up, dragon!"_
Begin Flying with the Nether Drake |ontaxi |goto 60.21,31.76 |q 10438
step
use the Phase Disruptor##29778
|tip Use it while flying around the Void Conduit.
|tip It's at the top of Manaforge Ultris.
Destroy the Void Conduit |q 10438/1 |goto 62.45,40.90 |notravel
step
Return to the Ground |offtaxi |goto 60.10,31.99 |q 10438 |notravel
step
talk Professor Dabiri##20907
turnin On Nethery Wings##10438 |goto 60.10,31.73
step
Follow the path down |goto 68.66,33.55 < 30 |only if walking
talk Tyri##20110
turnin Troublesome Distractions##10273 |goto 71.22,35.12
step
talk Nether-Stalker Nauthis##20471
turnin Teleport This!##10857 |goto 44.70,34.94
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
Follow the road |goto 39.09,30.79 < 70 |only if walking
Cross the bridge |goto 33.62,37.77 < 20 |only if walking
Follow the path up |goto 29.58,41.34 < 15 |only if walking
use the Triangulation Device##29018
|tip Your character will automatically be faced in the direction you need to go.
|tip Run in the direction you become faced until the item is no longer on cooldown.
|tip After the the item completes its cooldown, the quest goal should complete.
Discover the Second Triangulation Point |q 10275/1 |goto 29.05,40.45
step
Cross the bridge |goto 31.66,41.38 < 20 |only if walking
talk Wind Trader Tuluman##20112
turnin Triangulation Point Two##10275 |goto 34.62,37.95
step
Follow the road |goto 40.82,29.94 < 50 |only if walking
Ride the elevator up |goto 42.55,33.57 < 10 |only if walking
Enter the building |goto 32.11,64.52 < 7 |walk
talk Exarch Orelis##19466
|tip Inside the building.
turnin Aldor No More##10381 |goto 32.07,64.18
|only if rep('The Aldor') >= Neutral
step
Follow the road |goto 40.82,29.94 < 50 |only if walking
Ride the elevator up |goto 42.55,33.57 < 10 |only if walking
Enter the building |goto 32.11,64.52 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Damning Evidence##10432 |goto 32.00,64.07
|only if rep('The Scryers') >= Neutral
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Shadowmoon",
condition_suggested=function() return level == 70 and not completedq(11041) end,
},[[
step
Reach Level 70 |ding 70
|tip Use the Leveling guides to accomplish.
|tip This zone has some quests that require you to be level 70 to accept them.
step
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Scryers faction by completing this quest.
step
talk Agadai##23280
accept The Apprentice's Request##11047 |goto Blade's Edge Mountains/0 51.95,54.39
step
Follow the road |goto Shadowmoon Valley/0 21.49,26.22 < 30 |only if walking
talk Blood Guard Gulmok##21359
accept Besieged!##10595 |goto Shadowmoon Valley/0 30.44,32.41
step
kill 10 Infernal Attacker##21419 |q 10595/1 |goto 30.81,33.29
step
talk Blood Guard Gulmok##21359
turnin Besieged!##10595 |goto 30.44,32.41
accept To Legion Hold##10596 |goto 30.44,32.41
step
Follow the path |goto 30.18,31.98 < 15 |only if walking
talk Sergeant Kargrul##22043
accept The Sketh'lon Wreckage##10760 |goto 31.01,29.79
step
Follow the path |goto 29.76,29.75 < 20 |only if walking
talk Drek'Gol##19317
fpath Shadowmoon Village |goto 30.34,29.19
step
talk Researcher Tiorus##21770
accept What Strange Creatures...##10660 |goto 30.07,28.26
step
talk Chief Apothecary Hildagard##21772
accept A Haunted History##10624 |goto 29.93,27.68
step
Enter the building |goto 28.59,26.67 < 7 |walk
talk Earthmender Splinthoof##21938
|tip Inside the building.
accept The Hand of Gul'dan##10681 |goto 28.49,26.57
step
talk Overlord Or'barokh##21769
|tip He walks around this area.
|tip Inside the building.
accept A Grunt's Work...##10702 |goto 28.47,26.44
step
Follow the path |goto 30.19,32.03 < 15 |only if walking
Follow the path up |goto 24.62,33.93 < 20 |only if walking
Follow the path |goto 23.56,39.47 < 30 |only if walking
use the Box o' Tricks##30638
|tip Use it next to the Legion Communication Device.
|tip Be careful of the elite enemies that walk around this area.
Watch the dialogue
Discover the Legion's Plans |q 10596/1 |goto 23.58,36.92
step
talk Blood Guard Gulmok##21359
turnin To Legion Hold##10596 |goto 30.44,32.41
accept Setting Up the Bomb##10597 |goto 30.44,32.41
step
Follow the path up |goto 22.32,32.13 < 20 |only if walking
click Fel Reaver Armor Plating##184860
|tip Be careful of the elite enemies that walk around this area.
collect Fel Reaver Armor Plating##30631 |q 10597/2 |goto 22.21,35.55
step
Follow the path |goto 23.52,36.13 < 30 |only if walking
Continue following the path |goto 26.06,38.02 < 30 |only if walking
click Fel Reaver Power Core##184859
|tip Underwater.
|tip Be careful of the elite enemies that walk around this area.
collect Fel Reaver Power Core##30628 |q 10597/1 |goto 26.27,41.25
step
talk Blood Guard Gulmok##21359
turnin Setting Up the Bomb##10597 |goto 30.44,32.41
accept Blast the Infernals!##10598 |goto 30.44,32.41
step
Follow the path up |goto 24.73,33.60 < 20 |only if walking
Follow the path |goto 24.00,39.62 < 30 |only if walking
use the Fel Bomb##30614
|tip The Deathforged Infernals won't attack you.
|tip Be careful of the elite enemies that walk around this area.
Destroy the Legion Hold Infernals |q 10598/1 |goto 22.64,39.91
step
talk Blood Guard Gulmok##21359
turnin Blast the Infernals!##10598 |goto 30.44,32.41
accept The Deathforge##10599 |goto 30.44,32.41
step
Follow the path |goto 30.17,31.95 < 15 |only if walking
Enter the building |goto 30.07,28.02 < 7 |walk
talk Innkeeper Darg Bloodclaw##19319
|tip Inside the building.
home Shadowmoon Village |goto 30.22,27.75 |q 10624
stickystart "Collect_Ever_Burning_Ash"
stickystart "Slay_Shadowmoon_Valley_Wildlife"
step
Follow the path |goto 30.19,32.02 < 15 |only if walking
Cross the bridge |goto 31.97,34.14 < 10 |only if walking
kill Felfire Diemetradon##21408+
|tip You can find them around the green lava areas around this area.
collect 8 Felfire Spleen##30819 |q 10660/1 |goto 36.25,44.18
You can find more around:
[39.44,45.48]
[36.13,38.82]
step
label "Collect_Ever_Burning_Ash"
click Ever-burning Ash##184948+
|tip They look like small piles of dirt with green smoke rising out of them on the ground around this area.
|tip There are usually more of them close to the green lava around this area.
collect 15 Ever-Burning Ash##30716 |q 10624/1 |goto 33.83,36.43
step
label "Slay_Shadowmoon_Valley_Wildlife"
Kill enemies around this area
|tip Only Felboars and Vilewing Chimaeras will count for the quest goal.
Slay #20# Shadowmoon Valley Wildlife |q 10702/1 |goto 34.47,42.71
step
Follow the path |goto 41.04,44.77 < 50 |only if walking
talk Earthmender Torlok##21024
turnin The Hand of Gul'dan##10681 |goto 42.19,45.07
accept Enraged Spirits of Fire and Earth##10458 |goto 42.19,45.07
stickystart "Capture_Fiery_Souls"
step
use the Totem of Spirits##30094
kill Enraged Earth Spirit##21050+
|tip Kill them near the totems you plant.
Capture #8# Earthen Souls |q 10458/1 |goto 47.38,44.84
You can find more around [49.01,50.16]
step
label "Capture_Fiery_Souls"
use the Totem of Spirits##30094 |notinsticky
kill Enraged Fire Spirit##21061+
|tip Kill them near the totems you plant.
Capture #8# Fiery Souls |q 10458/2 |goto 47.38,44.84
You can find more around [49.01,50.16]
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Fire and Earth##10458 |goto 42.19,45.07
accept Enraged Spirits of Water##10480 |goto 42.19,45.07
step
Follow the path |goto 40.78,44.51 < 30 |only if walking
Run up the stairs |goto 38.18,37.97 < 7 |only if walking
talk Scout Zagran##21475
|tip On top of the building.
turnin The Deathforge##10599 |goto 38.59,38.18
accept Minions of the Shadow Council##10600 |goto 38.59,38.18
stickystart "Kill_Deathforge_Summoners"
stickystart "Collect_Marks_Of_Sargeras"
step
kill 10 Deathforge Guardian##20878 |q 10600/1 |goto 39.25,36.20
You can find more inside the cave at [40.16,38.18]
step
label "Kill_Deathforge_Summoners"
kill 5 Deathforge Summoner##20872 |q 10600/2 |goto 39.25,36.20
You can find more inside the cave at [40.16,38.18]
step
label "Collect_Marks_Of_Sargeras"
Kill Deathforge enemies around this area
collect 10 Mark of Sargeras##30809 |goto 39.25,36.20 |q 10826 |future
You can find more inside the cave at [40.16,38.18]
|only if rep ('The Aldor') >= Neutral
step
Follow the path up |goto 40.61,36.37 < 15 |only if walking
Run up the stairs |goto 38.18,37.97 < 7 |only if walking
talk Scout Zagran##21475
|tip On top of the building.
turnin Minions of the Shadow Council##10600 |goto 38.59,38.18
accept The Fate of Kagrosh##10601 |goto 38.59,38.18
accept The Summoning Chamber##10602 |goto 38.59,38.18
step
Jump down and enter the cave |goto 40.16,38.16 < 10 |walk
Kill Deathforge enemies around this area
|tip Only Deathforge Smiths or Deathforge Tinkerers will drop the quest item.
|tip Inside the cave.
collect Elemental Displacer##30672 |q 10602/2 |goto 37.37,41.68
step
Follow the path |goto 36.33,41.36 < 15 |walk
clicknpc Kagrosh##21725
|tip Inside the mine.
Choose _<Search the corpse for Kagrosh' pack.>_
collect Kagrosh's Pack##30659 |q 10601/1 |goto 35.19,40.19
step
Cross the bridge |goto 37.77,40.91 < 15 |walk
Jump down here inside the cave |goto 38.92,38.69 < 7 |walk
use the Elemental Displacer##30672
|tip Inside the cave.
kill Infernal Oversoul##21735
End the Infernal Summoning Ritual |q 10602/1 |goto 37.70,38.27
step
Follow the path up |goto 38.63,38.27 < 10 |walk
Leave the cave |goto 40.50,39.41 < 10 |walk
Follow the path up |goto 40.62,36.38 < 15 |only if walking
Run up the stairs |goto 38.18,37.97 < 7 |only if walking
talk Scout Zagran##21475
|tip On top of the building.
turnin The Fate of Kagrosh##10601 |goto 38.59,38.18
turnin The Summoning Chamber##10602 |goto 38.59,38.18
accept Bring Down the Warbringer!##10603 |goto 38.59,38.18
stickystart "Collect_Razuuns_Orders"
step
Jump down and enter the cave |goto 40.16,38.16 < 10 |walk
Click the Heavy Iron Portcullis and walk through the doorway |goto 37.38,42.67 < 7 |walk
kill Warbringer Razuun##21287 |q 10603/1 |goto 38.90,46.78
|tip Inside the cave.
step
label "Collect_Razuuns_Orders"
kill Warbringer Razuun##21287 |notinsticky
|tip Inside the cave. |notinsticky
collect Razuun's Orders##30689 |q 10603/2 |goto 38.90,46.78
stickystart "Collect_Sketh'lon_Commanders_Journal_Page2"
stickystart "Collect_Sketh'lon_Commanders_Journal_Page3"
step
Click the Lever and walk through the doorway |goto 37.38,42.67 < 7 |walk
Cross the bridge |goto 37.85,40.88 < 15 |walk
Leave the cave |goto 40.18,38.15 < 10 |walk
Follow the path up |goto 40.60,36.37 < 15 |only if walking
Kill Dark Conclave enemies around this area
|tip They look like arakkoa.
collect Sketh'lon Commander's Journal - Page 1##31260 |q 10760/1 |goto 37.91,30.92
step
label "Collect_Sketh'lon_Commanders_Journal_Page2"
Kill Dark Conclave enemies around this area
|tip They look like arakkoa. |notinsticky
collect Sketh'lon Commander's Journal - Page 2##31261 |q 10760/2 |goto 37.91,30.92
step
label "Collect_Sketh'lon_Commanders_Journal_Page3"
Kill Dark Conclave enemies around this area
|tip They look like arakkoa. |notinsticky
collect Sketh'lon Commander's Journal - Page 3##31262 |q 10760/3 |goto 37.91,30.92
step
Follow the road |goto 41.37,30.68 < 30 |only if walking
use the Totem of Spirits##30094
kill Enraged Water Spirit##21059+
|tip Kill them near the totems you plant.
Capture #5# Watery Souls |q 10480/1 |goto 50.17,23.74
step
talk Chief Apothecary Hildagard##21772
turnin A Haunted History##10624 |goto 29.93,27.68
accept Spectrecles##10625 |goto 29.93,27.68
step
talk Researcher Tiorus##21770
turnin What Strange Creatures...##10660 |goto 30.07,28.26
accept Frankly, It Makes No Sense...##10672 |goto 30.07,28.26
step
Enter the building |goto 28.60,26.68 < 7 |walk
talk Overlord Or'barokh##21769
|tip He walks around this area.
|tip Inside the building.
turnin A Grunt's Work...##10702 |goto 28.47,26.44
step
talk Sergeant Kargrul##22043
turnin The Sketh'lon Wreckage##10760 |goto 31.01,29.79
accept Find the Deserter##10761 |goto 31.01,29.79
step
kill 12 Shadowmoon Zealot##21788 |q 10625/1 |goto 29.91,29.49
|tip Make sure to equip the Spectrecles.
|tip You can only see them when you have the Spectrecles equipped.
|tip You can get more Spectrecles from Chief Apothecary Hildagard, next to the inn.
step
Equip Your Normal Head Armor
Click Here After Equipping Your Normal Head Armor |confirm |q 10625
step
talk Chief Apothecary Hildagard##21772
turnin Spectrecles##10625 |goto 29.93,27.68
accept Teron Gorefiend - Lore and Legend##10633 |goto 29.93,27.68
step
Follow the path |goto 30.18,32.04 < 15 |only if walking
talk Blood Guard Gulmok##21359
turnin Bring Down the Warbringer!##10603 |goto 30.44,32.41
accept Gaining Access##10604 |goto 30.44,32.41
stickystart "Collect_Legion_Teleporter_Control"
step
Follow the path up |goto 22.32,32.15 < 20 |only if walking
kill Overseer Ripsaw##21499
|tip He walks around this area, with a buzzsaw as a hand.
|tip Be careful to avoid the elite enemies that walk around this area.
collect Illidari-Bane Shard##30579 |n
use the Illidari-Bane Shard##30579
accept Illidari-Bane Shard##10623 |goto 23.13,35.10
step
label "Collect_Legion_Teleporter_Control"
kill Mo'arg Weaponsmith##19755+
|tip Be careful to avoid the elite enemies that walk around this area. |notinsticky
collect Legion Teleporter Control##30695 |q 10604/1 |goto 23.70,33.11
step
talk Blood Guard Gulmok##21359
turnin Gaining Access##10604 |goto 30.44,32.41
step
talk Grokom Deatheye##19333
turnin Illidari-Bane Shard##10623 |goto 29.79,31.26
step
Follow the path |goto 30.19,32.01 < 15 |only if walking
Cross the bridge |goto 31.99,34.15 < 10 |only if walking
talk Parshah##22024
|tip He walks along this road around this area.
turnin Find the Deserter##10761 |goto 35.19,40.89
accept Asghar's Totem##10777 |goto 35.19,40.89
step
kill Asghar##22025
|tip He walks around this area.
collect Sketh'lon War Totem##31169 |q 10777/1 |goto 39.68,29.40
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin Asghar's Totem##10777 |goto 35.41,42.08
accept The Rod of Lianthe##10778 |goto 35.41,42.08
step
Follow the path |goto 40.89,44.59 < 30 |only if walking
talk Earthmender Torlok##21024
turnin Enraged Spirits of Water##10480 |goto 42.19,45.07
accept Enraged Spirits of Air##10481 |goto 42.19,45.07
step
Follow the path |goto 43.08,46.32 < 20 |only if walking
Follow the road |goto 44.66,52.90 < 70 |only if walking
Follow the path |goto 49.34,57.88 < 50 |only if walking
Kill Eclipsion enemies around this area
collect Lianthe's Key##31316 |q 10778/1 |goto 45.65,68.76
step
click Lianthe's Strongbox##185128
|tip Inside the tent.
collect Rod of Lianthe##31317 |q 10778/2 |goto 47.54,71.69
step
label "Collect_Sunfury_Signets"
Kill Eclipsion enemies around this area
collect 10 Sunfury Signets##30810 |goto 46.84,68.76 |q 10824 |future
|only if rep('The Scryers')>=Neutral
step
Follow the road |goto 49.51,57.44 < 70 |c |q 10481
step
talk Varen the Reclaimer##21953
accept The Ashtongue Broken##10807 |goto 54.73,58.20
|only if rep('The Scryers')>=Neutral
step
talk Alieshor##21766
fpath Sanctum of the Stars |goto 56.32,57.80
|only if rep('The Scryers')>=Neutral
step
talk Battlemage Vyara##22211
accept Sunfury Signets##10824 |goto 56.28,58.80
|only if rep('The Scryers')>=Neutral
step
talk Battlemage Vyara##22211
turnin Sunfury Signets##10824 |goto 56.28,58.80
|only if rep('The Scryers')>=Neutral
step
Enter the building |goto 56.44,59.13 < 7 |walk
talk Arcanist Thelis##21955
|tip Inside the building.
accept Tablets of Baa'ri##10683 |goto 56.25,59.60
|only if rep('The Scryers')>=Neutral
step
talk Roldemar##21744
|tip Inside the building.
home Sanctum of the Stars |goto 56.32,59.84
|only if rep('The Scryers')>=Neutral
stickystart "Capture_Air_Souls"
step
Follow the path down |goto 62.44,62.58 < 20 |only if walking
talk Ancient Shadowmoon Spirit##21797
turnin Teron Gorefiend - Lore and Legend##10633 |goto 58.23,70.79
accept Divination: Gorefiend's Cloak##10635 |goto 58.23,70.79
step
label "Capture_Air_Souls"
use the Totem of Spirits##30094
kill Enraged Air Spirit##21060+
|tip Kill them near the totems you plant.
Capture #10# Air Souls |q 10481/1 |goto 59.68,70.17
You can find more around [62.51,61.91]
step
talk Mordenai##22113
|tip He walks around this area.
accept Kindness##10804 |goto 60.51,58.80
step
Kill Rocknail enemies around this area
collect Rocknail Flayer Giblets##31373+ |n
use the Rocknail Flayer Giblets##31373+
|tip You need 5 to create a Rocknail Flayer Carcass.
collect Rocknail Flayer Carcass##31372+ |n
use the Rocknail Flayer Carcass##31372+
|tip Use them on the ground near Mature Netherwing Drakes.
|tip They look like blue dragons flying in the sky around this area.
|tip They will fly down to eat.
Feed #8# Mature Netherwing Drakes |q 10804/1 |goto 61.58,56.49
step
talk Mordenai##22113
|tip He walks around this area.
turnin Kindness##10804 |goto 60.51,58.80
step
kill Cleric of Karabor##21815+
|tip Make sure to equip the Spectrecles.
|tip You can only see them when you have the Spectrecles equipped.
collect Gorefiend's Cloak##30799 |q 10635/1 |goto 63.81,49.17
You can get more Spectrecles from Zorus the Judicator around [36.62,54.87]
step
Equip Your Normal Head Armor
Click Here After Equipping Your Normal Head Armor |confirm |q 10635
step
click Arcano Control Unit##185010
|tip You will take control of an Arcano-Scorp.
|tip Use the "Tag Greater Felfire Dimetradon" ability on your action bar.
|tip Use it on Greater Felfire Diemetradons.
|tip They look like dinosaurs in the green lava around this area to the west.
Tag #8# Greater Felfire Diemetradons |q 10672/1 |goto 62.14,40.24
step
Stop Controlling the Arcano-Scorp |outvehicle |q 10672
|tip Click the red X "Cancel" Button on your action bar.
step
Follow the road |goto 63.39,43.78 < 50 |only if walking
Follow the path down |goto 62.44,62.58 < 20 |only if walking
talk Ancient Shadowmoon Spirit##21797
turnin Divination: Gorefiend's Cloak##10635 |goto 58.23,70.79
step
Follow the path up |goto 61.35,67.12 < 40 |only if walking
Follow the path |goto 62.36,62.36 < 30 |only if walking
Follow the road |goto 63.17,51.55 < 50 |only if walking
Run up the stairs |goto 61.44,30.85 < 20 |only if walking
talk Vindicator Aluumen##21822
accept The Ashtongue Tribe##10619 |goto 61.18,29.15
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 61.20,28.88 < 7 |walk
talk Caretaker Aluuro##21746
|tip Inside the building.
home Altar of Sha'tar |goto 61.12,28.24 |q 10568 |future
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 62.31,28.95 < 10 |walk
talk Anchorite Ceyla##21402
|tip Inside the building.
accept Tablets of Baa'ri##10568 |goto 62.58,28.38
|only if rep ('The Aldor') >= Neutral
step
talk Harbinger Saronen##22214
|tip He walks around this area.
accept Marks of Sargeras##10826 |goto 62.27,29.78
|only if rep ('The Aldor') >= Neutral
step
talk Harbinger Saronen##22214
|tip He walks around this area.
turnin Marks of Sargeras##10826 |goto 62.27,29.78
|only if rep ('The Aldor') >= Neutral
step
talk Maddix##19581
fpath Altar of Sha'tar |goto 63.33,30.40
|only if rep ('The Aldor') >= Neutral
stickystart "Kill_Ashtongue_Handlers_Aldor"
stickystart "Kill_Ashtongue_Warriors_Aldor"
stickystart "Kill_Ashtongue_Shamans_Aldor"
step
Follow the path up |goto 61.36,38.02 < 20 |only if walking
kill Ashtongue Worker##21455+
click Baar'ri Tablet Fragment##184870+
|tip They look like green glowing broken stone pieces on the ground around this area.
collect 12 Baa'ri Tablet Fragment##30596 |q 10568/1 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
label "Kill_Ashtongue_Handlers_Aldor"
kill 3 Ashtongue Handler##21803 |q 10619/1 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
label "Kill_Ashtongue_Warriors_Aldor"
kill 4 Ashtongue Warrior##21454 |q 10619/2 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
label "Kill_Ashtongue_Shamans_Aldor"
kill 6 Ashtongue Shaman##21453 |q 10619/3 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
talk Vindicator Aluumen##21822
turnin The Ashtongue Tribe##10619 |goto 61.17,29.15
|only if rep('The Aldor') >= Neutral
step
Enter the building |goto 62.31,28.96 < 10 |walk
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin Tablets of Baa'ri##10568 |goto 62.58,28.38
accept Oronu the Elder##10571 |goto 62.58,28.38
|only if rep('The Aldor') >= Neutral
step
Follow the path up |goto 61.36,38.02 < 20 |only if walking
Follow the path |goto 58.65,36.55 < 30 |only if walking
Enter the building |goto 57.01,34.02 < 15 |only if walking
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto 57.19,32.87
|only if rep ('The Aldor') >= Neutral
step
Run up the stairs |goto 61.44,30.85 < 20 |only if walking
Enter the building |goto 62.31,28.96 < 10 |walk
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin Oronu the Elder##10571 |goto 62.58,28.38
|only if rep('The Aldor') >= Neutral
step
talk Researcher Tiorus##21770
turnin Frankly, It Makes No Sense...##10672 |goto 30.07,28.27
accept Felspine the Greater##10673 |goto 30.07,28.27
|only if rep('The Aldor') >= Neutral
step
Run down the stairs |goto 61.65,30.45 < 30 |only if walking
Follow the road |goto 62.62,34.40 < 50 |only if walking
Follow the path up |goto 62.72,43.32 < 15 |only if walking
Follow the path |goto 59.54,46.57 < 30 |only if walking
kill Felspine the Greater##21897
collect Felspine's Hide##30851 |q 10673/1 |goto 56.10,44.36
|only if rep('The Aldor') >= Neutral
step
Follow the path |goto 59.55,46.73 < 30 |only if walking
Cross the bridge |goto 63.26,41.68 < 20 |only if walking
Run up the stairs |goto 61.44,30.88 < 20 |only if walking
talk Researcher Tiorus##21770
turnin Felspine the Greater##10673 |goto 30.07,28.26
|only if rep('The Aldor') >= Neutral
stickystart "Kill_Ashtongue_Handlers_Scryers"
stickystart "Kill_Ashtongue_Warriors_Scryers"
stickystart "Kill_Ashtongue_Shamans_Scryers"
step
Follow the path up |goto 61.35,67.12 < 40 |only if walking
Follow the path |goto 62.36,62.36 < 30 |only if walking
Follow the road |goto 63.17,51.55 < 50 |only if walking
Follow the path up |goto 61.36,38.02 < 20 |only if walking
kill Ashtongue Worker##21455+
click Baar'ri Tablet Fragment##184870+
|tip They look like green glowing broken stone pieces on the ground around this area.
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
label "Kill_Ashtongue_Handlers_Scryers"
kill 3 Ashtongue Handler##21803 |q 10807/1 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
label "Kill_Ashtongue_Warriors_Scryers"
kill 4 Ashtongue Warrior##21454 |q 10807/2 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
label "Kill_Ashtongue_Shamans_Scryers"
kill 6 Ashtongue Shaman##21453 |q 10807/3 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
talk Arcanist Thelis##21955
|tip Inside the building.
turnin Tablets of Baa'ri##10683 |goto 56.25,59.60
accept Oronu the Elder##10684 |goto 56.25,59.60
|only if rep ('The Scryers') >= Neutral
step
Follow the path up |goto 55.85,56.82 < 20 |only if walking
talk Varen the Reclaimer##21953
turnin The Ashtongue Broken##10807 |goto 54.73,58.20
|only if rep ('The Scryers') >= Neutral
step
Follow the road |goto 63.17,51.55 < 50 |only if walking
Follow the path up |goto 61.36,38.02 < 20 |only if walking
Follow the path |goto 58.65,36.55 < 30 |only if walking
Enter the building |goto 57.01,34.02 < 15 |only if walking
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto 57.19,32.87
|only if rep ('The Scryers') >= Neutral
step
Follow the road |goto 63.10,38.71 < 50 |only if walking
Continue following the road |goto 62.76,52.72 < 50 |only if walking
Enter the building |goto 56.43,59.16 < 10 |walk
talk Arcanist Thelis##21955
|tip Inside the building.
turnin Oronu the Elder##10684 |goto 56.25,59.59
|only if rep ('The Scryers') >= Neutral
step
talk Researcher Tiorus##21770
turnin Frankly, It Makes No Sense...##10672 |goto 30.07,28.27
accept Felspine the Greater##10673 |goto 30.07,28.27
|only if rep('The Scryers') >= Neutral
step
Follow the road |goto 63.18,51.84 < 50 |only if walking
Follow the path up |goto 62.72,43.32 < 15 |only if walking
Follow the path |goto 59.54,46.57 < 30 |only if walking
kill Felspine the Greater##21897
collect Felspine's Hide##30851 |q 10673/1 |goto 56.10,44.36
|only if rep('The Scryers') >= Neutral
step
Follow the path |goto 59.55,46.73 < 30 |only if walking
Follow the road |goto 63.44,44.35 < 40 |only if walking
Continue following the road |goto 62.77,52.63 < 50 |only if walking
talk Researcher Tiorus##21770
turnin Felspine the Greater##10673 |goto 30.07,28.26
|only if rep('The Scryers') >= Neutral
step
Follow the path |goto 30.19,32.02 < 15 |only if walking
Cross the bridge |goto 31.97,34.14 < 10 |only if walking
talk Parshah##22024
|tip He walks along this road around this area.
turnin The Rod of Lianthe##10778 |goto 35.19,40.89
accept Sketh'lon Feathers##10780 |goto 35.19,40.89
step
Avoid Wildhammer Stronghold |goto 43.03,51.47 < 50 |only if walking
click Sketh'lon Feather##185130+
|tip They look like brown feathers on the ground around this area.
collect 8 Sketh'lon Feather##31324 |q 10780/1 |goto 43.96,58.21
step
Avoid Wildhammer Stronghold |goto 43.03,51.47 < 50 |only if walking
talk Parshah##22024
|tip He walks along this road around this area.
turnin Sketh'lon Feathers##10780 |goto 35.19,40.89
accept Imbuing the Headpiece##10782 |goto 35.19,40.89
step
Follow the path |goto 40.95,44.68 < 30 |only if walking
talk Earthmender Torlok##21024
turnin Enraged Spirits of Air##10481 |goto 42.19,45.06
step
use the Unfinished Headpiece##31360
collect Energized Headpiece##31365 |q 10782/1 |goto 43.03,44.87
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin Imbuing the Headpiece##10782 |goto 35.19,40.89
accept Thwart the Dark Conclave##10808 |goto 35.19,40.89
step
Avoid Wildhammer Stronghold |goto 43.03,51.47 < 50 |only if walking
kill Dark Conclave Ritualist##22138+
|tip There are 4 of them channeling a pink spell around this area.
|tip Kill them all before using the quest item.
use the Staff of Parshah##31386
|tip Use it at this location.
End the Dark Conclave Summoning Ritual |q 10808/1 |goto 40.72,60.15
step
Avoid Wildhammer Stronghold |goto 43.03,51.47 < 50 |only if walking
talk Parshah##22024
|tip He walks along this road around this area.
turnin Thwart the Dark Conclave##10808 |goto 35.19,40.89
]])
