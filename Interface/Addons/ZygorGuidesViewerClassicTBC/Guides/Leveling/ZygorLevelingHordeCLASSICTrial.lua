local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCLASSIC") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
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
