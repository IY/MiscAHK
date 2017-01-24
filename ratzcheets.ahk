SetWorkingDir, %A_ScriptDir%
Premium = Essentials\premium.png
FileCreateDir, Essentials
IfNotExist, Essentials\AccountUsername.txt
FileAppend, Replace This text with your Runescape Username, Essentials\AccountUsername.txt
IfNotExist, Essentials\AccountPassword.txt
FileAppend, Replace This text with your Runescape Password, Essentials\AccountPassword.txt
IfNotExist, Essentials\osrslogo.jpg
URLDownloadToFile, http://i.imgur.com/CSVsbMJ.jpg, Essentials\osrslogo.jpg
IfNotExist, Essentials\premium.png
URLDownloadToFile, http://i66.tinypic.com/jtncsp.png, Essentials\premium.png
IfNotExist, Essentials\knightsofardougne.jpg
URLDownloadToFile, http://i64.tinypic.com/161kfbp.jpg, Essentials\knightsofardougne.jpg
IfNotExist, Essentials\granite.jpg
URLDownloadToFile, http://i65.tinypic.com/9qigqa.jpg, Essentials\granite.jpg
IfNotExist, Essentials\logo.jpg
URLDownloadToFile, http://i.imgur.com/jLXxAvF.jpg, Essentials\logo.jpg
IfExist, Essentials\UpdateLogv12.txt
FileDelete, Essentials\UpdateLogv12.txt
IfNotExist, Essentials\UpdateLogv13.txt
FileAppend,
(
18/8/2016 Fixed a small bug with every script that runs at the duel arena where it was sometimes clicking the exp counter if it was open.
18/8/2016 Added in a fail-safe with every script that uses the duel-arena bank, if it somehow wanders off, it will click the bank on the minimap and find its way bank to the bank chest.
18/8/2016 Fixed a small bug with the "Granite Miner" Script.
18/8/2016 Slightly optimised the "Knights of Ardougne" Thieving Script
18/8/2016 Highly Optimised the "Iron Power Miner" Script
17/8/2016 Added a "Granite Miner" Script into the "Exp Bots" Tab
17/8/2016 Fixed and optimised the "Knights of Ardougne" Thieving script.
9/8/2016 Added a Karambwan cooking script into the "Money Making" Tab.
29/7/2016 Optimised the Knights of Ardougne thieving script.
17/7/2016 Added in 2 fishing scripts.
13/7/2016 Added in overload support into the "NightmareZonePrayer" Bot.
5/7/2016 Added "Arrow Fletcher" and "Dart Fletcher" Scripts
5/7/2016 Removed the specific fletching scripts and replaced them with a more general script that can fletch any type of log.
4/7/2016 Added several "Glassblowing" Crafting scripts.
3/7/2016 Replaced "Opal Cutter" and "Emerald Cutter" with a "Gem Cutter" Script, which works on any gem type.
19/6/2016 Created a "Maple Cutting" Woodcutting bot to the "Exp Bots" Tab
18/6/2016 Fixed the "UpdateLog" So it actually downloads and updates
18/6/2016 Slightly Improved the "Knights of Ardougne" Script.
18/6/2016 Massively Improved the "Willow Cutter" Although it now requires OSbussy PRO
13/6/2016 Fixed the auto login on multiple scripts.
13/6/2016 Added The "Update Log" to "Other Tab"
12/6/2016 Added both the "Cooking and Wine Fermenting" Script/Bot
11/6/2016 Added "Thieving Men/Warriors/Knights of Ardougne" Scripts/Bots
11/6/2016 Added the "High Alch Last Item" Script/Bot
), Essentials\UpdateLogv13.txt
Gui, Show , w500 h500, Ratz Runescape Cheets
Loop, read, Essentials\AccountUsername.txt
{
StringSplit, LineArray, A_LoopReadLine, %A_Tab%
accname := LineArray1
}
Loop, read, Essentials\AccountPassword.txt
{
StringSplit, LineArray, A_LoopReadLine, %A_Tab%
accpass := LineArray1
}
TabControlHeight = 200
TabControlWidth = 500
TCS_FIXEDWIDTH = 0x350
TCM_FIRST = 0x1300
TCM_SETITEMSIZE := (TCM_FIRST + 41)
Gui, Tab, 1
Gui, Color, E2E2E2
Gui,Font,s12 bold c0000FF, Arial
Gui,Font,s8 c000000, Oswald
Gui, Add, Tab, +0x0 -0x200 +%TCS_FIXEDWIDTH% h%TabControlHeight% w%TabControlWidth% hwndTabHwnd, Utility|Money Making|Exp Bots|Levelling|Other
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x440 y90 w20 h20 gnightmareprayer?, ?
Gui, Add, Button, x440 y130 w20 h20 gnightmareabsorb?, ?
Gui, Add, Button, x20 y80 w180 h40 v123123467BUTTON, Drop 28 Items
Gui, Add, Button, x20 y120 w180 h40 v123789BUTTON, Drop last 20 Items
Gui, Add, Button, x20 y160 w180 h40 v22323123BUTTON, Drop last 10 Items
Gui, Add, Button, x260 y80 w180 h40 v23435345123424BUTTON, Nightmare Zone Prayer
Gui, Add, Button, x260 y120 w180 h40 v2343534542356867123424BUTTON, Nightmare Zone Absorbtion [Sekret]
Gui, Add, Text, x80 y350 w130 h60 , Auto Typer, enter the message you want to send when pressing F1:
Gui, Add, Edit, x210 y350 w250 h50 vTyping, Type the message you want here
Gui, Add, Text, x80 y420 w130 h50 , Auto Typer, enter the message you want to send when pressing F2
Gui, Add, Edit, x211 y420 w250 h50 vTyping2, Type the message you want here
Gui, Add, Button, x6 y350 w60 h110 , Ok
Gui,Font,s12 bold c0000FF, Arial
Gui, Add, Picture, x47 y210 w400 h130, Essentials\osrslogo.jpg
Gui, Tab, 2
Gui,Font,s8 c000000, Oswald
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x200 y90 w20 h20 gNature1?, ?
Gui, Add, Button, x220 y90 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y130 w20 h20 gshortbows?, ?
Gui, Add, Button, x220 y130 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y170 w20 h20 glongsbows?, ?
Gui, Add, Button, x220 y170 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y210 w20 h20 gcannon1?, ?
Gui, Add, Button, x220 y210 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y250 w20 h20 galchlastitem?, ?
Gui, Add, Button, x220 y250 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y280 w20 h20 gknightsofardougne?, ?
Gui, Add, Button, x200 y300 w20 h20 gknightsofardougnepicture?, ?
Gui, Add, Button, x220 y290 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y330 w20 h20 gmixingpotions?, ?
Gui, Add, Button, x220 y330 w20 h20 gautologinfeature, +
Gui, Add, Button, x440 y130 w20 h20 gstringingbows?, ?
Gui, Add, Button, x440 y170 w20 h20 gfletchingarrows?, ?
Gui, Add, Button, x460 y130 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y370 w20 h20 gkarambwans?, ?
Gui, Add, Button, x220 y370 w20 h20 gautologinfeature, +
Gui, Add, Button, x20 y80 w180 h40 v233124BUTTON, Nature Runes Thieving In Ardougne
Gui, Add, Button, x20 y120 w180 h40 v234435573424BUTTON, Fletching Shortbows
Gui, Add, Button, x20 y160 w180 h40 v23424BUTTON, Fletching Longbows [Sekret]
Gui, Add, Button, x260 y120 w180 h40 v223324234323223423442348435BUTTON, Stringing Bows [Sekret]
Gui, Add, Button, x260 y160 w180 h40 v2233242333423243244324322348435BUTTON, Fletching Arrows
Gui, Add, Button, x20 y200 w180 h40 v28432342345BUTTON, Cannonballs Neitz
Gui, Add, Button, x20 y240 w180 h40 v2843234231234232445BUTTON, High Alch Last Item
Gui, Add, Button, x20 y280 w180 h40 v284323423132435434234232445BUTTON, Knights of Ardougne [Sekret]
Gui, Add, Button, x20 y320 w180 h40 v284323423132435434354543453234232445BUTTON, Mixing Potions
Gui, Add, Button, x20 y360 w180 h40 v234212332434562234323443543343123432432212BUTTON, Cooking Karambwans
Gui, Tab, 3
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x200 y90 w20 h20 gcleaningherbs?, ?
Gui, Add, Button, x220 y90 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y130 w20 h20 gpowerminer?, ?
Gui, Add, Button, x220 y130 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y170 w20 h20 gcuttingwillows?, ?
Gui, Add, Button, x220 y170 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y210 w20 h20 ggems?, ?
Gui, Add, Button, x220 y210 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y250 w20 h20 gjogre1?, ?
Gui, Add, Button, x220 y250 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y290 w20 h20 gjogre2?, ?
Gui, Add, Button, x220 y290 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y330 w20 h20 gjogre3?, ?
Gui, Add, Button, x220 y330 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y370 w20 h20 gcooking?, ?
Gui, Add, Button, x220 y370 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y410 w20 h20 gwine?, ?
Gui, Add, Button, x220 y410 w20 h20 gautologinfeature, +
Gui, Add, Button, x200 y450 w20 h20 gcuttingmaples?, ?
Gui, Add, Button, x220 y450 w20 h20 gautologinfeature, +
Gui, Add, Button, x440 y90 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y130 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y170 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y210 w20 h20 gglassblow?, ?
Gui, Add, Button, x440 y250 w20 h20 gdarts?, ?
Gui, Add, Button, x440 y290 w20 h20 gflyfishing?, ?
Gui, Add, Button, x440 y330 w20 h20 gbarbarianfishing?, ?
Gui, Add, Button, x440 y360 w20 h20 ggranitemining?, ?
Gui, Add, Button, x440 y380 w20 h20 ggraniteminingpicture?, ?
Gui, Add, Button, x460 y90 w20 h20 gautologinfeature, +
Gui, Add, Button, x460 y130 w20 h20 gautologinfeature, +
Gui, Add, Button, x460 y170 w20 h20 gautologinfeature, +
Gui, Add, Button, x460 y210 w20 h20 gautologinfeature, +
Gui, Add, Button, x20 y80 w180 h40 v284323423123434432432232445BUTTON, Clean First Herb [Sekret]
Gui, Add, Button, x20 y120 w180 h40 v234222334522BUTTON, Iron Power Miner
Gui, Add, Button, x20 y160 w180 h40 v28435BUTTON, Cutting Willows
Gui, Add, Button, x20 y200 w180 h40 v234222212BUTTON, Cutting Gems
Gui, Add, Button, x20 y240 w180 h40 v23423456223122212BUTTON, Curse Jogre
Gui, Add, Button, x20 y280 w180 h40 v234234562234123323122212BUTTON, Curse Alch Jogre
Gui, Add, Button, x20 y320 w180 h40 v234212334562234323122212BUTTON, Stun Alch Jogre [Sekret]
Gui, Add, Button, x20 y360 w180 h40 v234212332434562234323443543343122212BUTTON, Cooking
Gui, Add, Button, x20 y400 w180 h40 v234212332434562234323234234234443543343122212BUTTON, Fermenting Wine [Sekret]
Gui, Add, Button, x20 y440 w180 h40 v22342348435BUTTON, Cutting Maples
Gui, Add, Button, x260 y80 w180 h40 v2233242343242348435BUTTON, Glassblow Fishbowl
Gui, Add, Button, x260 y120 w180 h40 v2233242343223442348435BUTTON, Glassblow Glass Orb [Sekret]
Gui, Add, Button, x260 y160 w180 h40 v223324233443242348435BUTTON, Glassblow Lantern Lens [Sekret]
Gui, Add, Button, x260 y200 w180 h40 v2233242343242323448435BUTTON, Glassblow Dorg Light Orb [Sekret]
Gui, Add, Button, x260 y240 w180 h40 v2233242343232443243243242323448435BUTTON, Fletching Darts
Gui, Add, Button, x260 y280 w180 h40 v2233242343232443243243243243242323448435BUTTON, Fly Fishing Trout
Gui, Add, Button, x260 y320 w180 h40 v222342342345644543243242323448435BUTTON, Barbarian Fishing [Sekret]
Gui, Add, Button, x260 y360 w180 h40 v222342342345234432423323232644543243242323448435BUTTON, Granite Miner
Gui, Tab, 4
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Text, cGreen x140 y62 w350 , Click the "?" Buttons for more information.
Gui, Add, Button, x200 y90 w20 h20 gthievingmen?, ?
Gui, Add, Button, x200 y130 w20 h20 gthievingwarriors?, ?
Gui, Add, Button, x200 y170 w20 h20 gShafts?, ?
Gui, Add, Button, x220 y170 w20 h20 gautologinfeature, +
Gui, Add, Button, x20 y80 w180 h40 v284323423132435434234232423432445BUTTON, Thieving Men
Gui, Add, Button, x20 y120 w180 h40 v2843234231324354342343543435453245324232423432445BUTTON, Thieving Warriors
Gui, Add, Button, x20 y160 w180 h40 v23123442123122222BUTTON, Fletching Logs into Shafts
Gui, Add, Button, x20 y200 w180 h40 v2312344223144322342342222BUTTON, Glassblow Beer Glass
Gui, Add, Button, x20 y240 w180 h40 v2312342442221234322BUTTON, Glassblow Oil Lamp
Gui, Add, Button, x20 y280 w180 h40 v231232344323424422222BUTTON, Glassblow Oil Lantern
Gui, Add, Button, x20 y320 w180 h40 v231234422324432234222BUTTON, Glassblow Vial
Gui, Add, Button, x200 y210 w20 h20 gglassblow?, ?
Gui, Add, Button, x200 y250 w20 h20 gglassblow?, ?
Gui, Add, Button, x200 y290 w20 h20 gglassblow?, ?
Gui, Add, Button, x200 y330 w20 h20 gglassblow?, ?
Gui, Add, Button, x220 y210 w20 h20 gautologinfeature, +
Gui, Add, Button, x220 y250 w20 h20 gautologinfeature, +
Gui, Add, Button, x220 y290 w20 h20 gautologinfeature, +
Gui, Add, Button, x220 y330 w20 h20 gautologinfeature, +
Gui, Tab, 5
Gui, Add, Text, cGreen x140 y62 w380 , Click the "?" Buttons for more information.
Gui, Add, Text, cBlue x80 y35 w380 , All Scripts must be used on "Fixed" in the Runescape Settings                         Press F12 To Stop ALL Actions and to reopen the GUI
Gui, Add, Button, x20 y80 w180 h40 v278BUTTON, My Account
Gui, Add, Button, x135 y450 w180 h40 v27324328BUTTON, Auto Login Setup
Gui, Add, Button, x260 y80 w180 h40 v27234238BUTTON, Update Log
Gui, Add, Button, x135 y350 w180 h40 v27234245453435435435345345338BUTTON, Contact Me
Gui, Add, Button, x200 y90 w20 h20 gautologin, ?
Gui, Add, Picture, x125 y140 w200 h200, Essentials\logo.jpg
f12::ExitApp
F11::
loop {
MouseGetPos,x,y
PixelGetColor,pix,%x%,%y%
tooltip,%pix% at co-ordinates %x%`,%y%
}
return
ReloadScript:
SetTimer,  ReloadScript, Off
ExitApp
return
F9::
BlockInput On
loop {
click
sleep 50
}
return
premiumpayment:
Run https://www.ratz-rs.net
return
knightsofardougnepicture?:
Run Essentials\knightsofardougne.jpg
Return
graniteminingpicture?:
Run Essentials\granite.jpg
Return
autologin:
MsgBox, This Button basically just logs you in quickly if you're on the log-in screen. (Assuming you've set up the "auto login" feature)
Return
autologinfeature:
MsgBox, This Script supports auto login. To enable the auto-login feature, read the instructions in the "Other" Tab
Return
flyfishing?:
MsgBox,  Start this script at the fly-fishing trout/salman spot near barbarian village, and turn on the "Fishing Display" options in OsBuddy, and turn OFF the "Item Overlay" display. (Make sure to have feathers and a fly-fishing rod in the first two inventory spots)
Return
barbarianfishing?:
MsgBox,  Start this script at the barbarian outpost fishing spot (south of barbarian outpost), and turn on the "Fishing Display" options in OsBuddy, and turn OFF the "Item Overlay" display. (Requires Feathers/Bait and a Barbarian Rod in the first two inventory spots)
Return
granitemining?:
MsgBox, Start this script in the picture shown in the other help box, you NEED to have a hitpoints cape, and a regen bracelet to survive in the desert. Also you need to have "Exp Drop" Feature enabled in OSBuddy before starting the script. Also make sure you have nothing in your last inventory spot, because when the bot "detects" granite in your last inventory spot, it will begin dropping all the granite in your inventory.
Return
shortbows?:
MsgBox, Stand at the duel arena bank and make sure you have your any type of logs in your first bank space and ATLEAST 2 knives in the 2nd space in your bank.
Return
stringingbows?:
MsgBox, Stand at the duel arena bank and make sure you have strings in your first bank space and unstrung bows in the 2nd space in your bank. (MUST HAVE WITHDRAW "X" AMOUNT SET TO 14, IN YOUR BANK)
Return
mixingpotions?:
MsgBox, Stand at the duel arena bank and make sure you have your 2 potion recipies you wish to mix in your first 2 bank spaces. (MUST HAVE WITHDRAW "X" AMOUNT SET TO 14, IN YOUR BANK)
Return
longsbows?:
MsgBox, Stand at the duel arena bank and make sure you have your any type of logs in your first bank space and ATLEAST 2 knives in the 2nd space in your bank.
Return
fletchingarrows?:
MsgBox, Start this script anywhere you like, with atleast 2 of the following in your first 2 inventory spaces: Feathers, Arrowheads and Shafts.
Return
darts?:
MsgBox, Start this script anywhere you like, with darts and feathers in your first 2 inventory slots.
Return
download1?:
MsgBox, Click the link to download the files that are required for "Auto Logging" Once you've downloaded the files, extract them and put it straight into your C: Drive, make sure you don't change any of the file names. Once you've put the Folder in your C: Enter the folder and put your login details into the appropriate text Files, eg: Type your Username into the "AccountUsername.txt" Text file
Return
karambwans?:
MsgBox, Start the script in rogues den whilst standing 1 step to the east of the banker with raw karambwans to cook in your first bank slot. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame. (Warning, don't use long-term to avoid reports)
Return
cooking?:
MsgBox, Start the script in rogues den whilst standing 1 step to the east of the banker with the raw food you want to cook in your first bank slot. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame. (Warning, don't use long-term to avoid reports)
Return
thievingmen?:
MsgBox, Set your "Attack NPC" Options to Hidden, Start the script in ardougne one building east of the general store and go up the ladder, you will see one man and one woman, start the script here. The Script will eat Shark/Lobsters and Cakes. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame (THIS SCRIPT ONLY WORKS ON MEN WEARING GREEN) (Warning, don't use long-term to avoid reports)
Return
wine?:
MsgBox, (BEFORE YOU USE THIS SCRIPT, MAKE SURE YOUR WITHDRAW "X" AMOUNT IN YOUR BANK IS SET TO 14) Just stand at the duel-arena bank and make sure you have your jugs of water and grapes in your first 2 bank slots. (Warning, don't use long-term to avoid reports)
Return
thievingwarriors?:
MsgBox, Set your "Attack NPC" Options to Hidden, Start the script in a small room with a trapped Warrior WOMEN before starting. The Script will eat Shark/Lobsters and Cakes (Warning, don't use long-term to avoid reports)
Return
alchlastitem?:
MsgBox, Just start the script anywhere with Fire Runes/Staff and Nature Runes, along with the item you want to alch in your last inventory spot. I recommend zooming-in as far as possible in-game, this can be done by using ctrl+scroll wheel ingame. (I'd recommend using this script in an instance such as your house to avoid being reported)
Return
knightsofardougne?:
MsgBox, Set your "Attack NPC" Options to Hidden, Start the script in a small room with a trapped knight of ardougne before starting. you NEED to be zoomed in as far as possible for this script to work., this can be done by using ctrl+scroll wheel ingame. The Script will eat Shark/Lobsters and Cakes (Warning, don't use long-term to avoid reports)
Return
Nature1?:
MsgBox, Stand next to the Nature Rune Chest in Ardougne before starting. (28 Thieve Req) This Script also eats Shark/Lobs/Cakes if you're missing health so it's viable on Deadman-Mode
Return
cleaningherbs?:
MsgBox, Stand next to the duel arena bank chest with the herb you want to clean in your first bank slot (top left bank slot).
Return
maples1?:
MsgBox, Stand next to the duel arena bank chest with a knife in your inventory and with your maple logs in your first 3 bank slots.
Return
fletchingyews1?:
MsgBox, Stand next to the duel arena bank chest with your knife in your inventory and your Yew logs, bow strings and uncut yew bows in your first 3 bank slots, this script will cut all your yew logs into longbows, and once running out of yew logs, it will begin stringing them.
Return
cannon1?:
MsgBox, stand at the 2 Eastern chests (there's 4 chests in the bank building, stand infront of the 2 east chests) Make sure you have your cannon mould in your inventory, and your steel bars in your first 3 bank spaces, this isn't a flawless script, so keep an eye on it every hour or two, Also starting the script with the bank open will help things get started.
Return
nightmareprayer?:
MsgBox, You NEED OSbuddy pro for this script to work, and you need to have the prayer flashing indicator enabled (flashes a prayer potion icon on the screen when you're due to drink a dose) and then all you have to do, is enter the nightmare zone, put your prayer on (Protect from melee and such) make sure your inventory is open, and start the script and it will drink your prayer potions when necessary.
Return
nightmareabsorb?:
MsgBox, You NEED OSbuddy pro for this script to work, Disable Stat Boost overlay, and disable the creature information and enable the health regeneration indicator. Once all that is done, put your rapid heal prayer on "quick prayer" and enter the nightmare zone, lower your health if you want (Rock Cake and/or Overloads) and then use 3 doses of absorbtion potion, and then start the script and it will drink absorbtion potions and flick the rapid heal prayer when necessary.
Return
shafts?:
MsgBox, Stand next to the duel arena bank chest with a knife in your inventory and your logs in your first 3 bank slots before starting the script.
Return
willows?:
MsgBox, Stand next to the duel arena bank chest with a knife in your inventory and your willow logs in your first 3 bank slots before starting the script.
Return
opals?:
MsgBox, Stand next to the duel arena bank chest with a chisel in your inventory and your uncut opals in your first 3 bank slots before starting the script.
Return
Gems?:
MsgBox, Stand at the duel arena bank and make sure you have your uncut gems in your first bank space and ATLEAST 2 chisels in the 2nd space in your bank.
Return
glassblow?:
MsgBox, Stand at the duel arena bank and make sure you have your molten glass in your first bank space and ATLEAST 2 glassblowing pipes in the 2nd space in your bank.
Return
jogre1?:
MsgBox, [MAKE SURE YOUR HOTKEYS ARE DEFAULTED, OR ATLEAST MAKE SURE YOUR SPELLBOOK OPENS ON F6] Equip Splashing gear, and making sure you have required runes to cast "Curse" and stand next to the Jogre at the Ardougne Zoo, Preferably standing inbetween the jogre and the cyclops before enabling the script
Return
jogre2?:
MsgBox, [MAKE SURE YOUR HOTKEYS ARE DEFAULTED, OR ATLEAST MAKE SURE YOUR SPELLBOOK OPENS ON F6] Equip Splashing gear, and making sure you have required runes to cast "Curse" and "High Alchemy" and put the item you want to Alch in the last slot of your inventory and stand next to the Jogre at the Ardougne Zoo, Preferably standing inbetween the jogre and the cyclops before enabling the script
Return
jogre3?:
MsgBox, [MAKE SURE YOUR HOTKEYS ARE DEFAULTED, OR ATLEAST MAKE SURE YOUR SPELLBOOK OPENS ON F6] Equip Splashing gear, and making sure you have required runes to cast "Stun" and "High Alchemy" and put the item you want to Alch in the last slot of your inventory and stand next to the Jogre at the Ardougne Zoo, Preferably standing inbetween the jogre and the cyclops before enabling the script
Return
powerminer?:
MsgBox, Go to ardougne mines (North east of Ardy near the Bears) and stand inbetween the 3 iron nodes and start the script to start power mining (Make sure your exp-drop feature is turned on in OSBuddy and make sure you last inventory spot is free).
Return
cuttingwillows?:
MsgBox, You MUST go to OSBuddy Pro and turn on the "Woodcutting" display in the options, once you've done that... Start the script near some willow trees. This requires OSbuddy PRO
Return
cuttingmaples?:
MsgBox, You MUST go to OSBuddy Pro and turn on the "Woodcutting" display in the options, once you've done that... Start the script near some willow trees. This requires OSbuddy PRO
Return
Buttondrop28items:
BlockInput On
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
click right 578, 261
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 261
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 261
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 707, 261
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 300
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 300
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 300
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 300
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 335
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 335
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 335
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 335
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 371
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 371
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 371
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 371
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 407
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 441
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
click right 620, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
click right 664, 480
MouseMove, 0, 15, 1, R
click
sleep 50
click right 707, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
BlockInput Off
return
Buttonmixingpotions:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33123423455441883442343243243243221164):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418821164)
Recovered(Up331234234554418821164):
sleep 5000
Recovered(Up33418821164):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822821164)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418821164)
Recovered(Up3341822821164):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up23432443234230000234234189821164)
else
click %X%, %Y%
sleep 1000
GoTo, Recover(Up2343244323423000345346575675678560234234189821164)
Recover(Up23432443234230000234234189821164):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234189821164)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up33418821164)
Recover(Up2343244323423000345346575675678560234234189821164):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418821164)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 200
mousemove 92, 134
click right
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 200
mousemove 138, 134
click right
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 1300
GoTo, Recover(Down1100418821164)
Recovered(Up33411321231238821164):
PixelSearch, DX2E, DY2E, 55, 100, 206, 156, 0x054502, 1, Fast
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
Recover(Down1100418821164):
Recover(Down2340200418821164):
send {ESC}
click 578, 261
sleep 100
click 707, 480
sleep 2000
click right 260, 425
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 9000
Goto, Recovered(Up33418821164)
GoTo, Recover(Down2340200418821164)
Recover(Down20000418821164):
GoTo, Recovered(Up33418821164)
Recover(Down30000418821164):
SoundBeep
GoTo, Recovered(Up33418821164)
Recover(Down49129821164):
sleep 30000
Recover(Up30000234234189821164):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418821164)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up331234234554418821164)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324289821164)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164589821164)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189821164)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189821164)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164589821164):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189821164)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189821164)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33123423455441883442343243243243221164)
Recover(Down300002342341234324289821164):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up33418821164)
Recover(Down30000234234189821164):
}
Return
Buttoncooking:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33123423455324657123789894418826):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418826)
Recovered(Up331234234554418826):
sleep 5000
Recovered(Up33418826):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822826)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418826)
Recovered(Up3341822826):
PixelSearch, X, Y, 6, 38, 516, 370, 0x293C44, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234189826)
else
mousemove X, Y
click right
MouseMove, 0, 40, 1, R
sleep 500
click left
sleep 2000
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418826)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
click 578, 261
sleep 20
GoTo, Recover(Down1100418826)
Recovered(Up33411321231238826):
Recover(Down1100418826):
Recover(Down2340200418826):
PixelSearch, DX2E3, DY2E3, 147, 108, 600, 430, 0x001C26, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418826)
else
mousemove DX2E3, DY2E3
click right
sleep 300
PixelSearch, F345546, H345456743, 147, 108, 600, 430, 0xFFFF00, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418826)
else
mousemove F345546, H345456743
sleep 100
click
sleep 2000
click right 255, 421
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 65000
Goto, Recovered(Up33418826)
GoTo, Recover(Down2340200418826)
Recover(Down20000418826):
GoTo, Recovered(Up33418826)
Recover(Down30000418826):
SoundBeep
GoTo, Recovered(Up33418826)
Recover(Down49129826):
sleep 30000
Recover(Up30000234234189826):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418826)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up331234234554418826)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324289826)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164589826)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189826)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189826)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164589826):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189826)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189826)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33123423455324657123789894418826)
Recover(Down300002342341234324289826):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up33418826)
Recover(Down30000234234189826):
}
Return
Buttoncookingkarambwans:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3312342345532465712378989441882622):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341882622)
Recovered(Up33123423455441882622):
sleep 5000
Recovered(Up3341882622):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182282622)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882622)
Recovered(Up334182282622):
PixelSearch, X, Y, 6, 38, 516, 370, 0x293C44, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3000023423418982622)
else
mousemove X, Y
click right
MouseMove, 0, 40, 1, R
sleep 500
click left
sleep 2000
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882622)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
click 578, 261
sleep 20
GoTo, Recover(Down110041882622)
Recovered(Up3341132123123882622):
Recover(Down110041882622):
Recover(Down234020041882622):
PixelSearch, DX2E3, DY2E3, 147, 108, 600, 430, 0x001C26, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882622)
else
mousemove DX2E3, DY2E3
click right
sleep 300
PixelSearch, F345546, H345456743, 147, 108, 600, 430, 0xFFFF00, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882622)
else
mousemove F345546, H345456743
sleep 100
click
sleep 2000
PixelSearch, F34554622, H34545674322, 335, 407, 407, 466, 0xB1BABB, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3322241882345345345622)
else
GoTo, Recovered(Up3341882343243232423232622)
Recovered(Up3322241882345345345622):
PixelSearch, F34554622, H34545674322, 335, 407, 407, 466, 0xA2ADAE, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882622)
else
GoTo, Recovered(Up3341882343243232423232622)
Recovered(Up3341882343243232423232622):
click right 375, 425
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 65000
Goto, Recovered(Up3341882622)
GoTo, Recover(Down234020041882622)
Recover(Down2000041882622):
GoTo, Recovered(Up3341882622)
Recover(Down3000041882622):
SoundBeep
GoTo, Recovered(Up3341882622)
Recover(Down4912982622):
sleep 30000
Recover(Up3000023423418982622):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882622)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up33123423455441882622)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432428982622)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342354645416458982622)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982622)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982622)
else
click 402, 312
sleep 100
Recover(Down300002342354645416458982622):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982622)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982622)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up3312342345532465712378989441882622)
Recover(Down30000234234123432428982622):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up3341882622)
Recover(Down3000023423418982622):
}
Return
Buttondroplast20items:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
click right 578, 335
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 335
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 335
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 335
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 371
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 371
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 371
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 371
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 407
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 441
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
click right 620, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
click right 664, 480
MouseMove, 0, 15, 1, R
click
sleep 50
click right 707, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
BlockInput Off
return
Buttondroplast10items:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
click right 664, 407
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 407
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 620, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 664, 441
MouseMove, 0, 40, 1, R
click
sleep 50
click right 707, 441
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
click right 578, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
click right 620, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
click right 664, 480
MouseMove, 0, 15, 1, R
click
sleep 50
click right 707, 480
MouseMove, 0, 15, 1, R
sleep 100
click
sleep 50
BlockInput Off
return
ButtonOk:
Gui, submit
f1::
Send %Typing%{Enter}
return
f2::
Send %Typing2%{Enter}
return
Buttonspamicelogin:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up4232):
Loop
{
Click 429, 354
sleep 200
}
Return
Buttonnaturerunesthievinginardougne:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
Recovered(Up33456758343):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up33):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 538, 77, 568, 106, 0x131313, 1, Fast
if Errorlevel = 0
GoTo, Recover(Down1100)
else
PixelSearch, X, Y, 147, 126, 257, 237, 0x21324B, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001)
else
mousemove X, Y
click right X, Y
sleep 1000
MouseMove, 0, 40, 1, R
click left
sleep 500
}
Recover(Down2001):
sleep 30000
Recover(Up47847467846731111):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47847467846731111)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111)
else
click 402, 312
sleep 100
Recover(Down47847467846731111):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up33456758343)
Recover(Down478247467846731111):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up47847467846731111)
Recover(Down4784746784673):
GoTo, Recovered(Up33)
Return
Recover(Down1100):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2340200)
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
GoTo, Recovered(Up33)
Recover(Down2340200):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20000)
mousemove XX, YY
click XX, YY
GoTo, Recovered(Up33)
Recover(Down20000):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000)
mousemove XXX, YYY
click XXX, YYY
GoTo, Recovered(Up33)
Recover(Down30000):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000)
else
mousemove XXX3, YYY3
click XXX3, YYY3
sleep 13000
GoTo, Recover(Down30000)
return
Buttonthievingmen:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up33833):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 545, 87, 570, 93, 0x131313, 1, Fast
if Errorlevel = 0
GoTo, Recover(Down1100833)
else
PixelSearch, X, Y, 5, 36, 517, 370, 0x054666, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33453435453453833)
else
mousemove X, Y
click right X, Y
sleep 1000
MouseMove, 0, 40, 1, R
click left
sleep 500
GoTo, Recovered(Up33833)
Recovered(Up33453435453453833):
PixelSearch, X76, Y76, 5, 36, 517, 370, 0x03293D, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33833)
else
mousemove X76, Y76
click right X76, Y76
sleep 1000
MouseMove, 0, 40, 1, R
click left
sleep 500
GoTo, Recovered(Up33833)
}
Recover(Down2001833):
sleep 30000
Recover(Up47847467846731111833):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33833)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111833)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111833)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47847467846731111833)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111833)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111833)
else
click 402, 312
sleep 100
Recover(Down47847467846731111833):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111833)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111833)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up33833)
Recover(Down478247467846731111833):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up47847467846731111833)
Recover(Down4784746784673833):
GoTo, Recovered(Up33833)
Return
Recover(Down1100833):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2340200833)
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
GoTo, Recovered(Up33833)
Recover(Down2340200833):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20054364645457600833)
mousemove XX, YY
click XX, YY
GoTo, Recovered(Up33833)
Recover(Down20054364645457600833):
PixelSearch, XX7, YY7, 550, 235, 740, 500, 0x0B4BAE, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20000833)
mousemove XX7, YY7
click XX7, YY7
GoTo, Recovered(Up33833)
Recover(Down20000833):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000833)
mousemove XXX, YYY
click XXX, YYY
GoTo, Recovered(Up33833)
Recover(Down30000833):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000833)
else
mousemove XXX3, YYY3
click XXX3, YYY3
sleep 13000
GoTo, Recover(Down30000833)
return
Buttonthievingwarriors:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up338332):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 545, 87, 570, 93, 0x131313, 1, Fast
if Errorlevel = 0
GoTo, Recover(Down11008332)
else
PixelSearch, X, Y, 5, 36, 517, 370, 0x39A1DC, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334534354534538332)
else
mousemove X, Y
click right X, Y
sleep 1000
MouseMove, 0, 24, 1, R
click left
sleep 500
GoTo, Recovered(Up338332)
Recovered(Up334534354534538332):
PixelSearch, X76, Y76, 5, 36, 517, 370, 0x41A7E0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up338332)
else
mousemove X76, Y76
click right X76, Y76
sleep 1000
MouseMove, 0, 24, 1, R
click left
sleep 500
GoTo, Recovered(Up338332)
}
Recover(Down20018332):
sleep 30000
Recover(Up478474678467311118332):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up338332)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down4782474678467311118332)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down4782474678467311118332)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478474678467311118332)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down478474678467311118332)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down478474678467311118332)
else
click 402, 312
sleep 100
Recover(Down478474678467311118332):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111833)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down478474678467311118332)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up338332)
Recover(Down4782474678467311118332):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up478474678467311118332)
Recover(Down47847467846738332):
GoTo, Recovered(Up338332)
Return
Recover(Down11008332):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down23402008332)
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
GoTo, Recovered(Up338332)
Recover(Down23402008332):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20000345345345347678)
mousemove XX, YY
click XX, YY
GoTo, Recovered(Up338332)
Recover(Down20000345345345347678):
PixelSearch, XX7, YY7, 550, 235, 740, 500, 0x0B4BAE, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down200008332)
mousemove XX7, YY7
click XX7, YY7
GoTo, Recovered(Up338332)
Recover(Down200008332):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300008332)
mousemove XXX, YYY
click XXX, YYY
GoTo, Recovered(Up338332)
Recover(Down300008332):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300008332)
else
mousemove XXX3, YYY3
click XXX3, YYY3
sleep 13000
GoTo, Recover(Down300008332)
return
Buttonbronzearrows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
mousemove 397, 214
click right
sleep 50
mousemove 397, 284
click left
sleep 50
}
return
Buttonironarrows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
mousemove 443, 214
click right
sleep 50
mousemove 443, 284
click left
sleep 50
}
return
return
Buttonsteelarrows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
mousemove 492, 214
click right
sleep 50
mousemove 492, 284
click left
sleep 50
}
return
Buttonearthrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 191, 112
click right
sleep 100
mousemove 191, 197
click left
sleep 100
}
return
Buttonfirerunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 238, 112
click right
sleep 100
mousemove 238, 197
click left
sleep 100
}
return
Buttonmindrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 285, 112
click right
sleep 100
mousemove 285, 197
click left
sleep 100
}
return
Buttonbodyrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 332, 112
click right
sleep 100
mousemove 332, 197
click left
sleep 100
}
return
Buttonchaosrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 380, 112
click right
sleep 100
mousemove 380, 197
click left
sleep 100
}
return
Buttondeathrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 426, 112
click right
sleep 100
mousemove 426, 197
click left
sleep 100
}
return
Buttonbloodrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 97, 157
click right
sleep 100
mousemove 97, 242
click left
sleep 100
}
return
Buttonsoulrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 191, 157
click right
sleep 100
mousemove 191, 242
click left
sleep 100
}
return
Buttonastralrunes:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
sleep 100
mousemove 239, 157
click right
sleep 100
mousemove 239, 242
click left
sleep 100
}
return
Buttonfletching:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
mousemove 707, 471
click left
mousemove 662, 471
click left
}
return
Buttonloseskullhouse:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
PixelSearch, PX, PY, 172, 77, 1135, 676, 0x033931, 1, Fast
if Errorlevel = 0
mousemove PX, PY
click PX, PY
sleep 2500
PixelSearch, XX, XY, 172, 77, 1135, 676, 0xE8E6E6, 1, Fast
if Errorlevel = 0
mousemove XX, XY
click XX, XY
sleep 2500
}
return
Buttondetectwhitedots:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3):
Loop
{
BlockInput On
PixelSearch, PX, PY, 1211, 40, 1363, 191, 0xECECEC, 1, Fast
if Errorlevel = 0
soundbeep
}
Recover(Down3):
Soundbeep
sleep 5000
PixelSearch, DX, DY, 127, 81, 215, 155, 0xB9C8D1, 1, Fast
mousemove DX, DY
click DX, DY
sleep 3500
GoTo, Recovered(Up3)
Return
Buttonsuperheatitem:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Loop
{
BlockInput On
send {F6}
click 1267, 528
sleep 100
click 1306, 668
sleep 1500
}
Return
Buttonhighalchlastitem:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up331):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 1179, 75, 1211, 108, 0x131313, 1, Fast
if Errorlevel = 0
GoTo, Recover(Down11001)
else
send {F6}
PixelSearch, X, Y, 701, 345, 730, 373, 0x09D2D2, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20011)
else
mousemove X, Y
click left
sleep 100
GoTo, Recover(Down200112)
sleep 2000
}
Recover(Down200112):
click 706, 478
sleep 2300
GoTo, Recovered(Up331)
Return
Recover(Down20011):
sleep 50
Recover(Up30000234234163):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up331)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324263)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324263)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164563)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234163)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234163)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164563):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234163)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234163)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up331)
Recover(Down300002342341234324263):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up331)
Recover(Down30000234234163):
Return
Recover(Down11001):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 1158, 438, 1345, 692, 0x455A74, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down23402001)
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
GoTo, Recovered(Up331)
Recover(Down23402001):
send {ESC}
PixelSearch, XX, YY, 1158, 438, 1345, 692, 0x073986, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down200001)
mousemove XX, YY
click XX, YY
GoTo, Recovered(Up331)
Recover(Down200001):
send {ESC}
PixelSearch, XXX, YYY, 1158, 438, 1345, 692, 0xC1C2C9, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300001)
mousemove XXX, YYY
click XXX, YYY
GoTo, Recovered(Up331)
Recover(Down300001):
sleep 1000
PixelSearch, XXX3, YYY3, 632, 501, 657, 352, 0x2F4368, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300001)
else
mousemove XXX3, YYY3
click XXX3, YYY3
PixelSearch, XX2X3, YY2Y3, 575, 436, 712, 446, 0x181A6A, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down54353456)
else
mousemove XX2X3, YY2Y3
click XX2X3, YY2Y3
GoTo, Recover(Down543533424564456)
Recover(Down54353456):
PixelSearch, X1X2X3, Y1Y2Y3, 711, 467, 745, 498, 0x233D5B, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down54353456)
else
mousemove X1X2X3, Y1Y2Y3
click X1X2X3, Y1Y2Y3
Recover(Down543533424564456):
return
Buttoncannonballsneitz:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up334184194556567645734342565463261):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184161)
Recovered(Up33418419261):
sleep 5000
Recovered(Up334184161):
Loop
{
WinActivate, ahk_class SunAwtFrame
Recovered(Up3341678234873234289221387984161):
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341826575675624161)
else
GoTo, Recovered(Up334187862342324234234344161)
GoTo, Recovered(Up334184161)
Recovered(Up3341826575675624161):
PixelSearch, X62146, Y62146, 10, 206, 151, 343, 0x0A2F43, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33416782348789221387984161)
else
mousemove X62146, Y62146
sleep 500
click left
sleep 7000
GoTo, Recovered(Up334184161)
Recovered(Up33416782348789221387984161):
PixelSearch, X621461, Y621461, 10, 206, 151, 343, 0x0C354C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341845756767224161)
else
mousemove X621461, Y621461
sleep 500
click left
sleep 7000
GoTo, Recovered(Up334184161)
Recovered(Up3341845756767224161):
PixelSearch, X6214611, Y6214611, 10, 206, 151, 343, 0x082C40, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224161)
else
mousemove X6214611, Y6214611
sleep 500
click left
sleep 7000
GoTo, Recovered(Up334184161)
Recovered(Up33418224161):
PixelSearch, X64, Y64, 230, 141, 400, 300, 0x0C354C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334187862342344161)
else
mousemove X64, Y64
sleep 500
click left
sleep 2000
GoTo, Recovered(Up334187862342324234234344161)
Recovered(Up334187862342344161):
PixelSearch, X64D, Y64D, 230, 141, 400, 300, 0x0A2F43, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002453345345345765131)
else
mousemove X64D, Y64D
sleep 500
click left
sleep 2000
Recovered(Up334187862342324234234344161):
PixelSearch, DX, DY, 55, 100, 206, 156, 0x6B6B76, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341512312312464756784161)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down11004184161)
Recovered(Up3341512312312464756784161):
PixelSearch, DXB, DYB, 55, 100, 206, 156, 0x6D6D78, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33415464756784161)
else
mousemove DXB, DYB
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down11004184161)
Recovered(Up33415464756784161):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0x6E6F7B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184161)
else
mousemove DSX, DSY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recover(Down11004184161):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 287, 738, 496, 0x6B6B76, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334181234235635764161)
else
mousemove XXXXXNX, YYYYYNY
click XXXXXNX, YYYYYNY
sleep 1000
GoTo, Recover(Down23402004184161)
Recovered(Up334181234235635764161):
PixelSearch, XX2XXXX, YY2YYYY, 551, 287, 738, 496, 0x6D6D78, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184161)
else
mousemove XX2XXXX, YY2YYYY
click XX2XXXX, YY2YYYY
sleep 1000
GoTo, Recover(Down23402004184161)
PixelSearch, XXXXXX, YYYYYY, 551, 287, 738, 496, 0x6B6B76, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184161)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Recover(Down23402004184161):
send {ESC}
PixelSearch, XNX, YNY, 229, 37, 522, 165, 0x51696F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3134142353456484161)
mousemove XNX, YNY
click XNX, YNY
sleep 8000
GoTo, Recover(Down200004184161)
Recovered(Up3134142353456484161):
PixelSearch, XX, YY, 229, 37, 522, 165, 0x556E74, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3343764389184161)
mousemove XX, YY
click XX, YY
sleep 9000
GoTo, Recover(Down200004184161)
Recovered(Up3343764389184161):
PixelSearch, GXX121, GYY121, 229, 37, 522, 165, 0x536B72, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3324234234923434290342344184161)
mousemove GXX121, GYY121
click GXX121, GYY121
sleep 9000
GoTo, Recover(Down200004184161)
Recovered(Up3324234234923434290342344184161):
PixelSearch, XX121, YY121, 229, 37, 522, 165, 0x577076, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33234290342344184161)
mousemove XX121, YY121
click XX121, YY121
sleep 9000
GoTo, Recover(Down200004184161)
Recovered(Up33234290342344184161):
PixelSearch, XX121J, YY121J, 229, 37, 522, 165, 0x5C767D, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184161)
mousemove XX121J, YY121J
click XX121J, YY121J
sleep 9000
GoTo, Recover(Down200004184161)
Recover(Down200004184161):
PixelSearch, XXTX, YYTY, 186, 385, 337, 500, 0x6E6E79, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000234112341231122323478856512843161)
mousemove XXTX, YYTY
click right XXTX, YYTY
MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000
GoTo, Recovered(Up334184161)
Recover(Down30000234112341231122323478856512843161):
PixelSearch, X4XTX, Y4YTY, 186, 385, 337, 500, 0x303136, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000023441231232347889184161)
mousemove X4XTX, Y4YTY
click right X4XTX, Y4YTY
MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000
GoTo, Recovered(Up334184161)
Recover(Down3000023441231232347889184161):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x6B6B76, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041231237889184161)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000
GoTo, Recovered(Up334184161)
Recover(Down3000041231237889184161):
PixelSearch, XQXX, YQYY, 186, 385, 337, 500, 0x2D2F33, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300234768345004123123123184161)
mousemove XQXX, YQYY
click right XQXX, YQYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000
GoTo, Recovered(Up334184161)
Recover(Down300234768345004123123123184161):
PixelSearch, XQXgX, YQYgY, 186, 385, 337, 500, 0x6D6D78, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300004123123123184161)
mousemove XQXgX, YQYgY
click right XQXgX, YQYgY
MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000
GoTo, Recovered(Up334184161)
Recover(Down300004123123123184161):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x51525B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184161)
mousemove XQXEX, YQYEY
click right XQXEX, YQYEY
MouseMove, 0, 70, 1, R
click left
sleep 2000
sleep 155000
GoTo, Recovered(Up334183434543564161)
Recovered(Up334183434543564161):
PixelSearch, X624, Y624, 10, 179, 163, 369, 0x0C354C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334167823487984161)
else
mousemove X624, Y624
sleep 500
click left
sleep 7000
GoTo, Recovered(Up334184161)
}
Recovered(Up334167823487984161):
PixelSearch, X6214, Y6214, 10, 179, 163, 369, 0x0A2F43, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33242342334167823487984161)
else
mousemove X6214, Y6214
sleep 500
click left
sleep 7000
GoTo, Recovered(Up334184161)
Recovered(Up33242342334167823487984161):
PixelSearch, X62148, Y62148, 10, 179, 163, 369, 0x082C40, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334167823487984161)
else
mousemove X62148, Y62148
sleep 500
click left
sleep 7000
GoTo, Recovered(Up334184161)
Return
Buttonfletchingandstringingyews:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up334425634567184192):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up334184192):
sleep 5000
Recovered(Up3341841):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341841)
Recovered(Up334182241):
PixelSearch, X, Y, 6, 38, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down4912941)
else
mousemove X, Y
sleep 500
click left
sleep 2000
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184192)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x0986A0, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001418465768651)
else
mousemove X, Y
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down200141841)
Recover(Down2001418465768651):
PixelSearch, BX, BY, 555, 241, 739, 499, 0x097C93, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down200141841)
else
mousemove BX, BY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down200141841)
Recover(Down200141841):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x022B40, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334154647567841)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down110041841)
Recovered(Up334154647567841):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0x032C42, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33234365867234897756341841)
else
mousemove DSX, DSY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recover(Down110041841):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 235, 738, 496, 0x595962, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341812342356357641)
else
mousemove XXXXXNX, YYYYYNY
click XXXXXNX, YYYYYNY
sleep 1000
GoTo, Recover(Down234020041841)
Recovered(Up3341812342356357641):
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x4D45D4, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Recover(Down234020041841):
send {ESC}
PixelSearch, XNX, YNY, 551, 235, 738, 496, 0x022B40, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up31341423534564841)
mousemove XNX, YNY
click XNX, YNY
sleep 2000
GoTo, Recover(Down2000041841)
Recovered(Up31341423534564841):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x032C42, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841)
mousemove XX, YY
click XX, YY
sleep 2000
Recover(Down2000041841):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x054553, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000412312378891841)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up3341841)
Recover(Down30000412312378891841):
PixelSearch, XQXX, YQYY, 186, 385, 337, 500, 0x033E4B, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041231231231841)
mousemove XQXX, YQYY
click right XQXX, YQYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up3341841)
Recover(Down3000041231231231841):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x054351, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041841)
mousemove XQXEX, YQYEY
click right XQXEX, YQYEY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up3341841)
Recovered(Up33234365867234897756341841):
Recover(Down3000041841):
Recover(Down4912941):
click 445, 344
Recovered(Up3341822423123198):
sleep 5000
Recovered(Up334184198):
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224198)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334184198)
Recovered(Up33418224198):
PixelSearch, X, Y, 6, 38, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234123445765324432322343242352613111765131)
else
mousemove X, Y
sleep 500
click left
sleep 2000
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822423123198)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x097B92, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20014184156756798)
else
mousemove X, Y
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down20014184198)
Recover(Down20014184156756798):
PixelSearch, JX, JY, 555, 241, 739, 499, 0x045768, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20014184198)
else
mousemove JX, JY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down20014184198)
Recover(Down20014184198):
sleep 50
PixelSearch, TEDX, TEDY, 551, 235, 738, 496, 0x3F5D69, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Down6736574564534534)
else
mousemove TEDX, TEDY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recovered(Down6736574564)
Recovered(Down6736574564534534):
PixelSearch, EEDX, EEDY, 551, 235, 738, 496, 0x3D5B67, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Down6736574564)
else
mousemove EEDX, EEDY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
Recovered(Down6736574564):
PixelSearch, DLXX, DLYY, 55, 100, 206, 156, 0x3F5D69, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Down6736531247)
else
mousemove DLXX, DLYY
sleep 500
click right
sleep 500
MouseMove, 0, 85, 1, R
Click left
sleep 1500
send 14 {enter}
GoTo, Recovered(Down673657)
Recovered(Down6736531247):
PixelSearch, DLXXW, DLYYW, 55, 100, 206, 156, 0x3D5B67, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Down673657)
else
mousemove DLXXW, DLYYW
sleep 500
click right
sleep 500
MouseMove, 0, 85, 1, R
Click left
sleep 1500
send 14 {enter}
Recovered(Down673657):
PixelSearch, DTX, DTY, 55, 100, 206, 156, 0x0B92AE, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184312312198)
else
mousemove DTX, DTY
sleep 500
click right
sleep 500
MouseMove, 0, 85, 1, R
Click left
sleep 1500
send 14 {enter}
click 487 56
sleep 2000
GoTo, Recover(Down11004184198)
Recovered(Up334184312312198):
PixelSearch, DTX, DTY, 55, 100, 206, 156, 0x045768, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184198)
else
mousemove DTX, DTY
sleep 500
click right
sleep 500
MouseMove, 0, 85, 1, R
Click left
sleep 1500
send 14 {enter}
click 487 56
sleep 2000
Recover(Down11004184198):
send {ESC}
PixelSearch, XXWXXXX, YYWYYYY, 551, 235, 738, 496, 0x3F5D69, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841654698)
else
mousemove XXWXXXX, YYWYYYY
click XXWXXXX, YYWYYYY
sleep 1000
GoTo, Recover(Down23402004184198)
Recovered(Up3341841654698):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x3D5B67, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341824342564198)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
GoTo, Recover(Down23402004184198)
Recovered(Up3341824342564198):
PixelSearch, XXXXX1X, YYYYY1Y, 551, 235, 738, 496, 0x3F5E6A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184198)
else
mousemove XXXXX1X, YYYYY1Y
click XXXXX1X, YYYYY1Y
sleep 1000
Recover(Down23402004184198):
send {ESC}
PixelSearch, XX, YY, 551, 235, 738, 496, 0x0B92AE, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841645645698)
else
mousemove XX, YY
click XX, YY
sleep 2000
GoTo, Recover(Down200004184198)
Recovered(Up3341841645645698):
send {ESC}
PixelSearch, XXI, YYI, 551, 235, 738, 496, 0x045768, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841)
else
mousemove XXI, YYI
click XXI, YYI
sleep 2000
Recover(Down200004184198):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x055362, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300004181231234198)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 19000
GoTo, Recovered(Up334184198)
Recover(Down300004181231234198):
PixelSearch, XXXO, YYYO, 186, 385, 337, 500, 0x044654, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184198)
mousemove XXXO, YYYO
click right XXXO, YYYO
MouseMove, 0, 70, 1, R
click left
sleep 19000
GoTo, Recovered(Up334184198)
}
Return
Buttonstringingmaples:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33412):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 254, 168, 298, 222, 0x44454C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33412)
else
mousemove X, Y
sleep 500
click left
sleep 2000
PixelSearch, X, Y, 555, 241, 739, 499, 0x4D4D55, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001412)
else
mousemove X, Y
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down2001412)
}
Recover(Down2001412):
sleep 1000
PixelSearch, DX, DY, 330, 107, 445, 218, 0x3E5C68, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001412)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 85, 1, R
Click left
sleep 2000
send 14 {enter}
sleep 2000
PixelSearch, DRX, DRY, 330, 107, 445, 218, 0x4D5469, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33412)
else
mousemove DRX, DRY
sleep 500
click right
sleep 500
MouseMove, 0, 85, 1, R
Click left
sleep 2000
send 14 {enter}
click 487 56
sleep 2000
Recover(Down1100412):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x3E5C68, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33412)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Recover(Down2340200412):
send {ESC}
PixelSearch, XX, YY, 551, 235, 738, 496, 0x565D75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33412)
mousemove XX, YY
click left XX, YY
sleep 2000
Recover(Down20000412):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x555C73, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000412)
mousemove XXX, YYY
click right XXX, YYY
sleep 1000
MouseMove, 0, 60, 1, R
click left
sleep 17000
GoTo, Recovered(Up33412)
Recover(Down30000412):
SoundBeep
GoTo, Recovered(Up33412)
return
Buttonfletchingwillows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418)
Recovered(Up331234234554418):
sleep 5000
Recovered(Up33418):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418)
Recovered(Up3341822):
PixelSearch, X, Y, 6, 38, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down4912235467899)
else
mousemove X, Y
sleep 500
click left
sleep 2000
GoTo, Recovered(Up33418235678922)
Recover(Down4912235467899):
PixelSearch, JX, JY, 558, 38, 722, 195, 0x59EAF6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111)
else
mousemove JX, JY
sleep 500
click left
sleep 15000
GoTo, Recovered(Up33418)
Recovered(Up33418235678922):
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up331234234554418)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x1C6A72, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001418)
else
mousemove X, Y
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down2001418)
}
Recover(Down2001418):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0F333B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33411321231238)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down1100418)
Recovered(Up33411321231238):
PixelSearch, DX, DY, 55, 100, 206, 156, 0x264951, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33411321231238)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recover(Down1100418):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x595962, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Recover(Down2340200418):
send {ESC}
PixelSearch, XX, YY, 551, 235, 738, 496, 0x0F333B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333423543576418)
mousemove XX, YY
click XX, YY
sleep 2000
GoTo, Recover(Down20000418)
Recovered(Up333423543576418):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x264951, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418)
mousemove XX, YY
click XX, YY
sleep 2000
Recover(Down20000418):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x155056, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000418)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up33418)
Recover(Down30000418):
SoundBeep
GoTo, Recovered(Up33418)
Recover(Down49129):
sleep 30000
Recover(Up30000234234189):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up331234234554418)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324289)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164589)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164589):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33418)
Recover(Down300002342341234324289):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up33418)
Recover(Down30000234234189):
Return
Buttonfletchingmaples:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up334189123234234232341236):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341896)
Recovered(Up3341891231236):
sleep 5000
Recovered(Up3341896):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182296)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341896)
Recovered(Up334182296):
PixelSearch, X2, Y2, 6, 38, 516, 370, 0x1C2B41, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Down12323436232456785334184111176324)
else
mousemove X2, Y2
sleep 500
click left
sleep 2000
GoTo, Recovered(Up234365335678324184111176)
Recovered(Down12323436232456785334184111176324):
PixelSearch, XBH, YBH, 558, 38, 722, 195, 0x59EAF6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111123657892311761421)
else
mousemove XBH, YBH
sleep 500
click left
sleep 15000
GoTo, Recovered(Up234365335678324184111176)
Recovered(Up334184111123657892311761421):
PixelSearch, XTBH, YTBH, 558, 38, 722, 195, 0x4CD6ED, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3000023423413579)
else
mousemove XTBH, YTBH
sleep 500
click left
sleep 15000
GoTo, Recovered(Up3341891231236)
Recovered(Up234365335678324184111176):
PixelSearch, RTFYX, RTFYY, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341891231236)
else
Recovered(Up334189132546768231234231231245346):
PixelSearch, XM, YM, 555, 241, 739, 499, 0x565E76, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down200141812312396)
else
mousemove XM, YM
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down200141896)
Recover(Down200141812312396):
PixelSearch, XL, YL, 555, 241, 739, 499, 0x4C5468, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001423245341896)
else
mousemove XL, YL
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
GoTo, Recover(Down200141896)
Recover(Down2001423245341896):
PixelSearch, XDO, YDO, 555, 241, 739, 499, 0x69728F, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down200141896)
else
mousemove XDO, YOD
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
Recover(Down200141896):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x053052, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341896342)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down110041896)
Recovered(Up3341896342):
PixelSearch, DHX, DHY, 55, 100, 206, 156, 0x053153, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341896)
else
mousemove DHX, DHY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recover(Down110041896):
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x595962, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341896123)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Goto, Recovered(Up3341892131236123)
Recovered(Up3341896123):
PixelSearch, XXXXDXX, YYYYDYY, 551, 235, 738, 496, 0x4E4E56, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341896)
else
mousemove XXXXDXX, YYYYDYY
click XXXXDXX, YYYYDYY
sleep 1000
send {ESC}
Recovered(Up3341892131236123):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x053052, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418231296)
mousemove XX, YY
click XX, YY
sleep 2000
Goto, Recover(Down2000041896)
Recovered(Up33418231296):
PixelSearch, XWX, YWY, 551, 235, 738, 496, 0x053153, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341896)
mousemove XWX, YWY
click XWX, YWY
sleep 2000
Recover(Down2000041896):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x3B3F4F, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300004423421896)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up3341896)
Recover(Down300004423421896):
PixelSearch, XXRX, YYRY, 186, 385, 337, 500, 0x484D61, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041896)
mousemove XXRX, YYRY
click right XXRX, YYRY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up3341896)
Recover(Down3000041896):
SoundBeep
GoTo, Recovered(Up3341896)
Recover(Down4912996):
sleep 30000
Recover(Up3000023423413579):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341896)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432423579)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432423579)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342354645416453579)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413579)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413579)
else
click 402, 312
sleep 100
Recover(Down300002342354645416453579):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413579)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413579)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up334189123234234232341236)
Recover(Down30000234234123432423579):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up3000023423413579)
Recover(Down3000023423413579):
GoTo, Recovered(Up3341896)
}
Return
Buttoncursejogre:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33412124321278894351):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up3341211):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, XDE, YDE, 8, 62, 517, 371, 0x055140, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33345345645641211)
else
Send {F6}
click 669, 288
mousemove XDE, YDE
click XDE, YDE
sleep 800
GoTo, Recovered(Up3341211)
Recovered(Up33345345645641211):
PixelSearch, X, Y, 8, 62, 517, 371, 0x055F4A, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3002343768784354343434465131)
else
Send {F6}
click 669, 288
mousemove X, Y
click X, Y
sleep 800
GoTo, Recovered(Up3341211)
Recover(Down20014112323543211):
PixelSearch, XP, YP, 8, 62, 517, 371, 0x024032, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341211)
else
mousemove XP, YP
click XP, YP
sleep 800
GoTo, Recovered(Up3341211)
}
return
Recover(Up3002343768784354343434465131):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341211)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47824746784673111145645645644217554)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47824746784673111145645645644217554)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down4784746784673111145645645644217554)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644217554)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644217554)
else
click 402, 312
sleep 100
Recover(Down4784746784673111145645645644217554):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644217554)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644217554)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up33412124321278894351)
Recover(Down47824746784673111145645645644217554):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up3002343768784354343434465131)
Recover(Down478474678467345645645644217554):
GoTo, Recovered(Up3341211)
return
Buttoncursealchjogre:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33413243452435314521144):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up334121144):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 8, 62, 517, 371, 0x055F4A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33412345342131144)
else
Send {F6}
click 669, 288
mousemove X, Y
click X, Y
sleep 800
Send {F6}
click 722, 364
sleep 50
click 711, 478
sleep 1400
click 646, 218
GoTo, Recovered(Up334121144)
Recovered(Up33412345342131144):
PixelSearch, X, Y, 8, 62, 517, 371, 0x055140, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002453345345345744356467234233243434465131)
else
Send {F6}
click 669, 288
mousemove X, Y
click X, Y
sleep 800
Send {F6}
click 722, 364
sleep 50
click 711, 478
sleep 1400
click 646, 218
GoTo, Recovered(Up334121144)
Recover(Down2001411232354321144):
PixelSearch, XP, YP, 8, 62, 517, 371, 0x024032, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334121144)
else
mousemove XP, YP
click XP, YP
sleep 800
Send {F6}
click 722, 364
sleep 50
click 711, 478
sleep 1400
click 646, 218
GoTo, Recovered(Up334121144)
}
return
Recover(Up300002453345345345744356467234233243434465131):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334121144)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111456456456442175)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111456456456442175)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47847467846731111456456456442175)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456442175)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456442175)
else
click 402, 312
sleep 100
Recover(Down47847467846731111456456456442175):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456442175)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456442175)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up33413243452435314521144)
Recover(Down478247467846731111456456456442175):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up300002453345345345744356467234233243434465131)
Recover(Down4784746784673456456456442175):
GoTo, Recovered(Up334121144)
return
Buttonhalberdlesserdemon:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3341):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, PX, PY, 538, 77, 568, 106, 0x131313, 1, Fast
if Errorlevel = 0
GoTo, Recover(Down110041)
else
PixelSearch, X, Y, 6, 36, 517, 371, 0x091342, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20014112323543)
else
mousemove X, Y
click X, Y
sleep 2000
click 576, 218
sleep 3000
click 646, 218
GoTo, Recovered(Up3341)
Recover(Down20014112323543):
PixelSearch, XP, YP, 6, 36, 517, 371, 0x000725, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down200141)
else
mousemove XP, YP
click XP, YP
sleep 2000
click 576, 218
sleep 3000
click 646, 218
GoTo, Recovered(Up3341)
}
Recover(Down200141):
sleep 30000
Recover(Up4784746784673111141):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47824746784673111141)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47824746784673111141)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down4784746784673111141)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111141)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111141)
else
click 402, 312
sleep 100
Recover(Down4784746784673111141):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111141)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111141)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up3341)
Recover(Down47824746784673111141):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up4784746784673111141)
Recover(Down478474678467341):
GoTo, Recovered(Up3341)
Return
Recover(Down110041):
Soundbeep
send {ESC}
PixelSearch, XXXXXX, YYYYYY, 550, 235, 740, 500, 0x455A74, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down234020041)
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
GoTo, Recovered(Up3341)
Recover(Down234020041):
send {ESC}
PixelSearch, XX, YY, 550, 235, 740, 500, 0x073986, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2000041)
mousemove XX, YY
click XX, YY
GoTo, Recovered(Up3341)
Recover(Down2000041):
send {ESC}
PixelSearch, XXX, YYY, 550, 235, 740, 500, 0xC1C2C9, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041)
mousemove XXX, YYY
click XXX, YYY
GoTo, Recovered(Up3341)
Recover(Down3000041):
send {F10}
sleep 1000
PixelSearch, XXX3, YYY3, 574, 436, 710, 470, 0x202393, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041)
else
mousemove XXX3, YYY3
click XXX3, YYY3
sleep 13000
GoTo, Recover(Down3000041)
return
Buttonfletchinglogsintoshafts:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33418426567867823419241):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184141)
Recovered(Up33418419241):
sleep 5000
Recovered(Up334184141):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224141)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334184141)
Recovered(Up33418224141):
PixelSearch, X, Y, 6, 38, 516, 370, 0x1C2B41, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down4912942345546141)
else
mousemove X, Y
sleep 500
click left
sleep 2000
GoTo, Recovered(Up33418411234345112365789231176)
Recover(Down4912942345546141):
PixelSearch, XBH, YBH, 558, 38, 722, 195, 0x59EAF6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411112365789231176)
else
mousemove XBH, YBH
sleep 500
click left
sleep 15000
GoTo, Recovered(Up33418411112365789231176)
Recovered(Up33418411112365789231176):
PixelSearch, XTBH, YTBH, 558, 38, 722, 195, 0x4CD6ED, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234135261341)
else
mousemove XTBH, YTBH
sleep 500
click left
sleep 15000
GoTo, Recovered(Up33418419241)
Recovered(Up33418411234345112365789231176):
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418419241)
else
PixelSearch, DX, DY, 55, 100, 206, 156, 0x234665, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33415464756784141)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down11004184141)
Recovered(Up33415464756784141):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0x244868, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341345671231284141)
else
mousemove DSX, DSY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down11004184141)
Recovered(Up3341345671231284141):
PixelSearch, DRSX, DRSY, 55, 100, 206, 156, 0x234663, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184141)
else
mousemove DRSX, DRSY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recover(Down11004184141):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 235, 738, 496, 0x595962, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334181234235635764141)
else
mousemove XXXXXNX, YYYYYNY
click XXXXXNX, YYYYYNY
sleep 1000
GoTo, Recover(Down23402004184141)
Recovered(Up334181234235635764141):
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x4D45D4, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184141)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Recover(Down23402004184141):
send {ESC}
PixelSearch, XNX, YNY, 551, 235, 738, 496, 0x234665, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3134142353456484141)
mousemove XNX, YNY
click XNX, YNY
sleep 2000
GoTo, Recover(Down200004184141)
Recovered(Up3134142353456484141):
PixelSearch, XGX, YGY, 551, 235, 738, 496, 0x234663, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411232354342341)
mousemove XGX, YGY
click XGX, YGY
sleep 2000
GoTo, Recover(Down200004184141)
Recovered(Up33418411232354342341):
PixelSearch, XX, YY, 551, 235, 738, 496, 0x244868, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184141)
mousemove XX, YY
click XX, YY
sleep 2000
Recover(Down200004184141):
PixelSearch, XXX, YYY, 9, 378, 135, 500, 0x021E3B, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041231237889184141)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up334184141)
Recover(Down3000041231237889184141):
PixelSearch, XQXX, YQYY, 9, 378, 135, 500, 0x031F3D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300004123123123184141)
mousemove XQXX, YQYY
click right XQXX, YQYY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up334184141)
Recover(Down300004123123123184141):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x021E3B, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down300004184141)
mousemove XQXEX, YQYEY
click right XQXEX, YQYEY
MouseMove, 0, 70, 1, R
click left
sleep 2000
send 99 {enter}
sleep 51000
GoTo, Recovered(Up334184141)
Recover(Down300004184141):
SoundBeep
GoTo, Recovered(Up334184141)
Recover(Down491294141):
sleep 30000
Recover(Up30000234234135261341):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418419241)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324235261341)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324235261341)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164535261341)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261341)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261341)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164535261341):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261341)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261341)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33418426567867823419241)
Recover(Down300002342341234324235261341):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up30000234234135261341)
Recover(Down30000234234135261341):
GoTo, Recovered(Up334184141)
}
Return
Buttoncuttingopals:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up334184192111):
sleep 5000
Recovered(Up3341841111):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341841111)
Recovered(Up334182241111):
PixelSearch, XB, YB, 6, 38, 516, 370, 0x1C2B41, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Down123234362324567853341841111)
else
mousemove XB, YB
sleep 500
click left
sleep 2000
GoTo, Recovered(Up2343653341841111)
Recovered(Down123234362324567853341841111):
PixelSearch, XBH, YBH, 558, 38, 722, 195, 0x59EAF6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341842354671111)
else
mousemove XBH, YBH
sleep 500
click left
sleep 15000
GoTo, Recovered(Up2343653341841111)
Recovered(Up3341842354671111):
PixelSearch, XTBH, YTBH, 558, 38, 722, 195, 0x0x4CD6ED, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002342341352613111)
else
mousemove XTBH, YTBH
sleep 500
click left
sleep 15000
GoTo, Recovered(Up3341841111)
Recovered(Up2343653341841111):
PixelSearch, RX, RY, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184192111)
else
PixelSearch, X, Y, 555, 241, 739, 499, 0x577576, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down20014184657232354342368651111)
else
mousemove X, Y
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
Recover(Down20014184657232354342368651111):
PixelSearch, X, Y, 555, 241, 739, 499, 0x8B8B98, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down2001418465768651111)
else
mousemove X, Y
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
sleep 100
click left
sleep 2000
Recover(Down2001418465768651111):
sleep 50
PixelSearch, DX, DY, 55, 100, 206, 156, 0x547071, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334154647567841111)
else
mousemove DX, DY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Goto, Recover(Down110041841111)
Recovered(Up334154647567841111):
PixelSearch, DSX, DSY, 55, 100, 206, 156, 0xB4BABA, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341231423452841111)
else
mousemove DSX, DSY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recovered(Up3341231423452841111):
PixelSearch, DSFX, DSFY, 55, 100, 206, 156, 0x4C6767, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111)
else
mousemove DSFX, DSFY
sleep 500
click right
sleep 500
MouseMove, 0, 100, 1, R
Click left
sleep 500
click 487 56
sleep 2000
Recover(Down110041841111):
send {ESC}
PixelSearch, XXXXXNX, YYYYYNY, 551, 235, 738, 496, 0x032B4A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341812342356357641111)
else
mousemove XXXXXNX, YYYYYNY
click XXXXXNX, YYYYYNY
sleep 1000
GoTo, Recover(Down234020041841111)
Recovered(Up3341812342356357641111):
PixelSearch, XXXXXX, YYYYYY, 551, 235, 738, 496, 0x414248, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111)
else
mousemove XXXXXX, YYYYYY
click XXXXXX, YYYYYY
sleep 1000
Recover(Down234020041841111):
send {ESC}
PixelSearch, XNX, YNY, 551, 235, 738, 496, 0x547071, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up31341423534564841111)
mousemove XNX, YNY
click XNX, YNY
sleep 2000
GoTo, Recover(Down2000041841111)
Recovered(Up31341423534564841111):
PixelSearch, XX, YY, 551, 235, 738, 496, 0xB4BABA, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111)
mousemove XX, YY
click XX, YY
sleep 2000
Recover(Down2000041841111):
PixelSearch, XXX, YYY, 186, 385, 337, 500, 0x7FA5AA, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down30000412312378891841111)
mousemove XXX, YYY
click right XXX, YYY
MouseMove, 0, 70, 1, R
click left
sleep 33000
GoTo, Recovered(Up3341841111)
Recover(Down30000412312378891841111):
PixelSearch, XQXX, YQYY, 186, 385, 337, 500, 0x448181, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041231231231841111)
mousemove XQXX, YQYY
click right XQXX, YQYY
MouseMove, 0, 70, 1, R
click left
sleep 33000
GoTo, Recovered(Up3341841111)
Recover(Down3000041231231231841111):
PixelSearch, XQXEX, YQYEY, 186, 385, 337, 500, 0x438283, 1, Fast
if Errorlevel = 1
GoTo, Recover(Down3000041841111)
mousemove XQXEX, YQYEY
click right XQXEX, YQYEY
MouseMove, 0, 70, 1, R
click left
sleep 30000
GoTo, Recovered(Up3341841111)
Recover(Down3000041841111):
SoundBeep
GoTo, Recovered(Up3341841111)
Recover(Down4912941111):
sleep 30000
Recover(Up300002342341352613111):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184192111)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423412343242352613111)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423412343242352613111)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234235464541645352613111)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341352613111)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341352613111)
else
click 402, 312
sleep 100
Recover(Down30000234235464541645352613111):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341352613111)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341352613111)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up334184192111)
Recover(Down3000023423412343242352613111):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up300002342341352613111)
Recover(Down300002342341352613111):
GoTo, Recovered(Up3341841111)
}
Return
Buttoncuttinggems:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up331234234234234234565544188232):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334188232)
Recovered(Up3312342345544188232):
sleep 5000
Recovered(Up334188232):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418228232)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232)
Recovered(Up33418228232):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3000034543543434345879872342341898232)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up300003432342564654678767864543543434345879872342341898232)
Recover(Up3000034543543434345879872342341898232):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002342341898232)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up334188232)
Recover(Up300003432342564654678767864543543434345879872342341898232):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334188232)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down11004188232)
Recover(Down11004188232):
Recover(Down23402004188232):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 255, 421
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 34000
GoTo, Recovered(Up334188232)
Goto, Recovered(Up334188232)
GoTo, Recover(Down23402004188232)
Recover(Down200004188232):
GoTo, Recovered(Up334188232)
Recover(Down300004188232):
SoundBeep
GoTo, Recovered(Up334188232)
Recover(Down491298232):
sleep 30000
Recover(Up300002342341898232):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334188232)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up3312342345544188232)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423412343242898232)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234235464541645898232)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232)
else
click 402, 312
sleep 100
Recover(Down30000234235464541645898232):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up331234234234234234565544188232)
Recover(Down3000023423412343242898232):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up334188232)
Recover(Down300002342341898232):
}
Return
Buttonglassblowvial:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3312342342342342345655441882323321332):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341882323321332)
Recovered(Up33123423455441882323321332):
sleep 5000
Recovered(Up3341882323321332):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182282323321332)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323321332)
Recovered(Up334182282323321332):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3244323426577657653000023423418982323321332)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up3244435543453435435543323426577657653000023423418982323321332)
Recover(Up3244323426577657653000023423418982323321332):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3000023423418982323321332)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up3341882323321332)
Recover(Up3244435543453435435543323426577657653000023423418982323321332):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882323321332)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down110041882323321332)
Recover(Down110041882323321332):
Recover(Down234020041882323321332):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 384, 133
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 49000
GoTo, Recovered(Up3341882323321332)
Goto, Recovered(Up3341882323321332)
GoTo, Recover(Down234020041882323321332)
Recover(Down2000041882323321332):
GoTo, Recovered(Up3341882323321332)
Recover(Down3000041882323321332):
SoundBeep
GoTo, Recovered(Up3341882323321332)
Recover(Down4912982323321332):
sleep 30000
Recover(Up3000023423418982323321332):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882323321332)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up33123423455441882323321332)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432428982323321332)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342354645416458982323321332)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321332)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321332)
else
click 402, 312
sleep 100
Recover(Down300002342354645416458982323321332):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321332)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321332)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up3312342342342342345655441882323321332)
Recover(Down30000234234123432428982323321332):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up3341882323321332)
Recover(Down3000023423418982323321332):
}
Return
Buttonglassblowoillantern:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up331234234234234234565544188232332133):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334188232332133)
Recovered(Up3312342345544188232332133):
sleep 5000
Recovered(Up334188232332133):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418228232332133)
else
click 487, 56
sleep 500
GoTo, Recovered(Up334188232332133)
Recovered(Up33418228232332133):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30034223432767689980002342341898232332133)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up30034432243567675756434343223432767689980002342341898232332133)
Recover(Up30034223432767689980002342341898232332133):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002342341898232332133)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up334188232332133)
Recover(Up30034432243567675756434343223432767689980002342341898232332133):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334188232332133)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down11004188232332133)
Recover(Down11004188232332133):
Recover(Down23402004188232332133):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 205, 124
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 49000
GoTo, Recovered(Up334188232332133)
Goto, Recovered(Up334188232332133)
GoTo, Recover(Down23402004188232332133)
Recover(Down200004188232332133):
GoTo, Recovered(Up334188232332133)
Recover(Down300004188232332133):
SoundBeep
GoTo, Recovered(Up334188232332133)
Recover(Down491298232332133):
sleep 30000
Recover(Up300002342341898232332133):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334188232332133)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up3312342345544188232332133)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423412343242898232332133)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234235464541645898232332133)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232332133)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232332133)
else
click 402, 312
sleep 100
Recover(Down30000234235464541645898232332133):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232332133)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341898232332133)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up331234234234234234565544188232332133)
Recover(Down3000023423412343242898232332133):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up334188232332133)
Recover(Down300002342341898232332133):
}
Return
Buttonglassblowoillamp:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33123423423423423456554418823233213):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418823233213)
Recovered(Up331234234554418823233213):
sleep 5000
Recovered(Up33418823233213):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822823233213)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233213)
Recovered(Up3341822823233213):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up43432767887434330000234234189823233213)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up43244323423424324323432767887434330000234234189823233213)
Recover(Up43432767887434330000234234189823233213):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234189823233213)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up33418823233213)
Recover(Up43244323423424324323432767887434330000234234189823233213):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418823233213)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down1100418823233213)
Recover(Down1100418823233213):
Recover(Down2340200418823233213):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 289, 122
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 49000
GoTo, Recovered(Up33418823233213)
Goto, Recovered(Up33418823233213)
GoTo, Recover(Down2340200418823233213)
Recover(Down20000418823233213):
GoTo, Recovered(Up33418823233213)
Recover(Down30000418823233213):
SoundBeep
GoTo, Recovered(Up33418823233213)
Recover(Down49129823233213):
sleep 30000
Recover(Up30000234234189823233213):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418823233213)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up331234234554418823233213)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324289823233213)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164589823233213)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233213)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233213)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164589823233213):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233213)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233213)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33123423423423423456554418823233213)
Recover(Down300002342341234324289823233213):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up33418823233213)
Recover(Down30000234234189823233213):
}
Return
Buttonglassblowbeerglass:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3312342342342342345655441882323321):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341882323321)
Recovered(Up33123423455441882323321):
sleep 5000
Recovered(Up3341882323321):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182282323321)
else
click 487, 56
sleep 500
GoTo, Recovered(Up3341882323321)
Recovered(Up334182282323321):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3324325676767887000023423418982323321)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up332432524343243243254456546456676767887000023423418982323321)
Recover(Up3324325676767887000023423418982323321):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3000023423418982323321)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up3341882323321)
Recover(Up332432524343243243254456546456676767887000023423418982323321):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882323321)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down110041882323321)
Recover(Down110041882323321):
Recover(Down234020041882323321):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 110, 122
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 49000
GoTo, Recovered(Up3341882323321)
Goto, Recovered(Up3341882323321)
GoTo, Recover(Down234020041882323321)
Recover(Down2000041882323321):
GoTo, Recovered(Up3341882323321)
Recover(Down3000041882323321):
SoundBeep
GoTo, Recovered(Up3341882323321)
Recover(Down4912982323321):
sleep 30000
Recover(Up3000023423418982323321):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341882323321)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up33123423455441882323321)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432428982323321)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342354645416458982323321)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321)
else
click 402, 312
sleep 100
Recover(Down300002342354645416458982323321):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423418982323321)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up3312342342342342345655441882323321)
Recover(Down30000234234123432428982323321):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up3341882323321)
Recover(Down3000023423418982323321):
}
Return
Buttonfletchingdarts:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3312342342342342345655441882323344):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341882323344)
Recovered(Up33123423455441882323344):
sleep 5000
Recovered(Up3341882323344):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
click 578, 261
click 623, 262
GoTo, Recovered(Up3341882323344)
}
Return
Buttonfletchingarrows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up331234234234234234565544188232334411):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334188232334411)
Recovered(Up3312342345544188232334411):
sleep 5000
Recovered(Up334188232334411):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
click 578, 261
click 623, 262
sleep 2000
mousemove 254, 417
click right
MouseMove, 0, 55, 1, R
sleep 50
click left
sleep 13000
GoTo, Recovered(Up334188232334411)
}
Return
Buttonglassblowfishbowl:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33123423423423423456554418823233):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418823233)
Recovered(Up331234234554418823233):
sleep 5000
Recovered(Up33418823233):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822823233)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233)
Recovered(Up3341822823233):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30023423423487878700234234189823233)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up3002323432342656565756423423487878700234234189823233)
Recover(Up30023423423487878700234234189823233):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234189823233)
else
mousemove X433, Y433
MouseMove, -15, 4, 1, R
click
sleep 10000
Goto, Recovered(Up33418823233)
Recover(Up3002323432342656565756423423487878700234234189823233):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418823233)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down1100418823233)
Recover(Down1100418823233):
Recover(Down2340200418823233):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 115, 245
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 49000
GoTo, Recovered(Up33418823233)
Goto, Recovered(Up33418823233)
GoTo, Recover(Down2340200418823233)
Recover(Down20000418823233):
GoTo, Recovered(Up33418823233)
Recover(Down30000418823233):
SoundBeep
GoTo, Recovered(Up33418823233)
Recover(Down49129823233):
sleep 30000
Recover(Up30000234234189823233):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418823233)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up331234234554418823233)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324289823233)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164589823233)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164589823233):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33123423423423423456554418823233)
Recover(Down300002342341234324289823233):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up33418823233)
Recover(Down30000234234189823233):
}
Return
Buttonfletchingshortbows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33123423423423423456554418823233321):
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418823233321)
Recovered(Up331234234554418823233321):
sleep 5000
Recovered(Up33418823233321):
Loop
{
BlockInput On
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822823233321)
else
click 487, 56
sleep 500
GoTo, Recovered(Up33418823233321)
Recovered(Up3341822823233321):
PixelSearch, X, Y, 6, 72, 516, 370, 0x141E2D, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up3000023423443543543543232323189823233321)
else
click %X%, %Y%
sleep 2000
GoTo, Recover(Up30324432564678898043554300023423443543543543232323189823233321)
Recover(Up3000023423443543543543232323189823233321):
PixelSearch, X433, Y433, 557, 35, 746, 196, 0x4ED9FF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234189823233321)
else
mousemove X433, Y433
click
sleep 10000
Goto, Recovered(Up33418823233321)
Recover(Up30324432564678898043554300023423443543543543232323189823233321):
PixelSearch, X62, Y62, 396, 48, 448, 94, 0x344049, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418823233321)
else
click 443, 345
sleep 100
PixelSearch, DX, DY, 55, 100, 206, 156, 0x0A3FBB, 1, Fast
click 443, 343
sleep 1000
sleep 500
mousemove 138, 131
click left
sleep 50
mousemove 92, 134
click right
MouseMove, 0, 100, 1, R
sleep 50
click left
sleep 500
click 487 56
sleep 2000
GoTo, Recover(Down1100418823233321)
Recover(Down1100418823233321):
Recover(Down2340200418823233321):
send {ESC}
click 578, 261
sleep 500
click 623, 262
sleep 2000
click right 104, 426
sleep 100
MouseMove, 0, 70, 1, R
sleep 50
click left
sleep 2000
send 99
send {enter}
sleep 50000
GoTo, Recovered(Up33418823233321)
Goto, Recovered(Up33418823233321)
GoTo, Recover(Down2340200418823233321)
Recover(Down20000418823233321):
GoTo, Recovered(Up33418823233321)
Recover(Down30000418823233321):
SoundBeep
GoTo, Recovered(Up33418823233321)
Recover(Down49129823233321):
sleep 30000
Recover(Up30000234234189823233321):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418823233321)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recovered(Up331234234554418823233321)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342341234324289823233321)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down3000023423546454164589823233321)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233321)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233321)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164589823233321):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233321)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234189823233321)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33123423423423423456554418823233321)
Recover(Down300002342341234324289823233321):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recovered(Up33418823233321)
Recover(Down30000234234189823233321):
}
Return
Buttonmyaccount:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
{
Recover(Up3000023423413453453526131117651):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Soundbeep
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432423526131117651)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down30000234234123432423526131117651)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down300002342354645416453526131117651)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413526131117651)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413526131117651)
else
click 402, 312
sleep 100
Recover(Down300002342354645416453526131117651):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413526131117651)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down3000023423413526131117651)
else
click 315, 287
send %accname%{enter}
send %accpass%{enter}
Goto, Recovered(Down33418419211174235567651)
Recover(Down30000234234123432423526131117651):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up3000023423413453453526131117651)
Recover(Down3000023423413526131117651):
GoTo, Recover(Up3000023423413453453526131117651)
Recovered(Down33418419211174235567651):
return
}
Buttonnightmarezoneprayer:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
Recovered(Up3341841113453451769764):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, XB5335ASD, YB5335ASD, 435, 322, 520, 372, 0x408493, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3546456756324467942342347809789785832123123)
else
PixelSearch, XB533, YB533, 448, 58, 520, 101, 0x578030, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841112312312345457613453451769764)
else
GoTo, Recovered(Up3344353453453451841113453451769764)
Recovered(Up3341841112312312345457613453451769764):
PixelSearch, XB, YB, 448, 58, 520, 101, 0x90C73E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841112312312313453451769764)
else
GoTo, Recovered(Up3344353453453451841113453451769764)
Recovered(Up3341841112312312313453451769764):
PixelSearch, XB9, YB9, 448, 58, 520, 101, 0x243928, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841113453451769764)
else
GoTo, Recovered(Up3344353453453451841113453451769764)
Recovered(Up3344353453453451841113453451769764):
PixelSearch, XB2, YB2, 562, 241, 738, 499, 0x6EA119, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111334234234453451769764)
else
mousemove XB2, YB2
sleep 500
click left
sleep 3000
GoTo, Recovered(Up3341841113453451769764)
Recovered(Up334184111334234234453451769764):
PixelSearch, XB25, YB25, 562, 241, 738, 499, 0x8ACB1F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111334234234453451769764)
else
mousemove XB25, YB25
sleep 500
click left
sleep 3000
GoTo, Recovered(Up3341841113453451769764)
Recovered(Up3546456756324467942342347809789785832123123):
PixelSearch, XBD25FBV4, YBD25FBV4, 562, 241, 738, 499, 0x060607, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418412344564563411345345176976483321)
else
mousemove XBD25FBV4, YBD25FBV4
sleep 1500
click left
GoTo, Recovered(Up3341841113453451769764)
Recovered(Up33418412344564563411345345176976483321):
PixelSearch, XBD25FEEE, YBD25FEEE, 562, 241, 738, 499, 0x050507, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841113453451769764)
else
mousemove XBD25FEEE, YBD25FEEE
sleep 1500
click left
GoTo, Recovered(Up3341841113453451769764)
}
return
Buttonironpowerminer:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up3341841922344355676321117697643399):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841921117697643399):
sleep 3000
Recovered(Up33418411117697643399):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111423443243243243243243256456546546454517697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up33418224111423443243243243243243256456546546454517697643399):
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111456456546546454517697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up33418224111456456546546454517697643399):
PixelSearch, XF1123456731, YF1123456731, 687, 463, 728, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3344323424324323421822411117697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up3344323424324323421822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 647, 463, 685, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176976432342342342345656399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up33418224111176976432342342342345656399):
PixelSearch, XF1123456731, YF1123456731, 647, 463, 685, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241113423423417697643242343399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334182241113423423417697643242343399):
PixelSearch, XF1123456731, YF1123456731, 647, 463, 685, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333242344324341822411117697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up333242344324341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 602, 463, 643, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117632434243243297643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up3341822411117632434243243297643399):
PixelSearch, XF1123456731, YF1123456731, 602, 463, 643, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182243324234234323423423399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334182243324234234323423423399):
PixelSearch, XF1123456731, YF1123456731, 602, 463, 643, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334354354534354323424323248778341822411117697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334354354534354323424323248778341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 560, 463, 601, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4354354534534354353323424323248778341822411117697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up4354354534534354353323424323248778341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 560, 463, 601, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up365565656323424343434343523248778341822411117697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up365565656323424343434343523248778341822411117697643399):
PixelSearch, XF1123456731, YF1123456731, 560, 463, 601, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697643399)
else
GoTo, Recovered(Up334182241231231234353453453451234545632132112332131211117697643399)
Recovered(Up334182241231231234353453453451234545632132112332131211117697643399):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8975434354312099899)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8975434354312099899):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up345653634563435436099899)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up345653634563435436099899):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341823443542342342241111769712099899)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341823443542342342241111769712099899):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333456735673335467099899)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333456735673335467099899):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up343243325233443224343243562234534099899)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up343243325233443224343243562234534099899):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up11111334182241111769712099899)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up11111334182241111769712099899):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up22222334182241111769712099899)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up22222334182241111769712099899):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33333334182241111769712099899)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33333334182241111769712099899):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3444434182241111769712099899)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3444434182241111769712099899):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up444444334182241111769712099899)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up444444334182241111769712099899):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3555534182241111769712099899)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3555534182241111769712099899):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up55555555334182241111769712099899)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up55555555334182241111769712099899):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up66666334182241111769712099899)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up66666334182241111769712099899):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up777777334182241111769712099899)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up777777334182241111769712099899):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up888888334182241111769712099899)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up888888334182241111769712099899):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up999999334182241111769712099899)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up999999334182241111769712099899):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2834324334182241111769712099899)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2834324334182241111769712099899):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3423456756434334182241111769712099899)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3423456756434334182241111769712099899):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234234564341822556641111769712099899)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3234234564341822556641111769712099899):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111769712544565432423099899)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111769712544565432423099899):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4343334182234434111176971232143099899)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4343334182234434111176971232143099899):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up234235667556334182241111769712099899)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up234235667556334182241111769712099899):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up85647344343334182241111769712099899)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up85647344343334182241111769712099899):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up434354665767686776334182241111769712099899)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up434354665767686776334182241111769712099899):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up93456743567334182241111769712099899)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up93456743567334182241111769712099899):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33895768934567099899)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up33895768934567099899):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332343423456677643434182241111769712099899)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up332343423456677643434182241111769712099899):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0F182E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418342324324234234234223342376576784343120999)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up33418342324324234234234223342376576784343120999):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3456536345634354360999)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3456536345634354360999):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418234435423423422411117697120999)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418234435423423422411117697120999):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3334567356733354670999)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3334567356733354670999):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3432433252334432243432435622345340999)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3432433252334432243432435622345340999):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up111113341822411117697120999)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up111113341822411117697120999):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up222223341822411117697120999)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up222223341822411117697120999):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333333341822411117697120999)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333333341822411117697120999):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34444341822411117697120999)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34444341822411117697120999):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4444443341822411117697120999)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4444443341822411117697120999):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up35555341822411117697120999)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up35555341822411117697120999):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up555555553341822411117697120999)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up555555553341822411117697120999):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up666663341822411117697120999)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up666663341822411117697120999):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7777773341822411117697120999)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7777773341822411117697120999):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8888883341822411117697120999)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8888883341822411117697120999):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9999993341822411117697120999)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9999993341822411117697120999):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up28343243341822411117697120999)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up28343243341822411117697120999):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34234567564343341822411117697120999)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34234567564343341822411117697120999):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32342345643418225566411117697120999)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up32342345643418225566411117697120999):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697125445654324230999)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411117697125445654324230999):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up43433341822344341111769712321430999)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up43433341822344341111769712321430999):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2342356675563341822411117697120999)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2342356675563341822411117697120999):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up856473443433341822411117697120999)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up856473443433341822411117697120999):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4343546657676867763341822411117697120999)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4343546657676867763341822411117697120999):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up934567435673341822411117697120999)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up934567435673341822411117697120999):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up338957689345670999)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up338957689345670999):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3323434234566776434341822411117697120999)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up3323434234566776434341822411117697120999):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0E152B, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418223342376576784343120999)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up33418223342376576784343120999):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418234543564545767120999)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418234543564545767120999):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up123456457643341822411117697120999)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up123456457643341822411117697120999):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33342222224134534534530999)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33342222224134534534530999):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9433453453341822411117697120999)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9433453453341822411117697120999):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4564332233341822411117697120999)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4564332233341822411117697120999):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up323465756434343341822411117697120999)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up323465756434343341822411117697120999):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up92456432563341822411117697120999)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up92456432563341822411117697120999):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up234234564563341822411117697120999)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up234234564563341822411117697120999):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4523456453765675463341822411117697120999)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4523456453765675463341822411117697120999):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3654632453533420999)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3654632453533420999):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3242346556434311117697120999)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3242346556434311117697120999):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up544367867343341822411117697120999)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up544367867343341822411117697120999):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up787878945453341822411117697120999)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up787878945453341822411117697120999):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up89707854645643341822411117697120999)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up89707854645643341822411117697120999):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up78945634563341822411117697120999)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up78945634563341822411117697120999):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8745243564563341822411117697120999)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8745243564563341822411117697120999):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up768574235634563341822411117697120999)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up768574235634563341822411117697120999):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up90684536345634563341822411117697120999)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up90684536345634563341822411117697120999):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9873456435643533341822411117697120999)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9873456435643533341822411117697120999):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241117645435433215678786556417697120999)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241117645435433215678786556417697120999):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341843534534222222344444422411117697120999)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341843534534222222344444422411117697120999):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33454354354334333333341822411117697120999)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33454354354334333333341822411117697120999):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up98745435634563341822411117697120999)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up98745435634563341822411117697120999):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333453678678564564341822411117697120999)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333453678678564564341822411117697120999):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822413243223434234324324324324231117697120999)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822413243223434234324324324324231117697120999):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3897554345453453341822411117697120999)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up3897554345453453341822411117697120999):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3123123123123123123123123341822411117697120999)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up3123123123123123123123123341822411117697120999):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x111A32, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697643399)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 23, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411117697643399):
PixelSearch, XB65112, YB65112, 82, 173, 409, 345, 0x16203E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418211212124111223423423342341762343423423567657567765233297643399)
else
click %XB65112%, %YB65112%
sleep 2000
GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up33418211212124111223423423342341762343423423567657567765233297643399):
PixelSearch, XB6511, YB6511, 82, 173, 409, 345, 0x050811, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111223423423342341762343423423567657567765233297643399)
else
click %XB6511%, %YB6511%
sleep 2000
GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up334184111223423423342341762343423423567657567765233297643399):
PixelSearch, XB65, YB65, 82, 173, 409, 345, 0x182447, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841112234234233423417697643399)
else
click %XB65%, %YB65%
sleep 2000
GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up3341841112234234233423417697643399):
PixelSearch, XB28, YB28, 82, 173, 409, 345, 0x16203E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418443224324343232442343232233211117697643399)
else
click %XB28%, %YB28%
sleep 2000
GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up33418443224324343232442343232233211117697643399):
PixelSearch, XB41, YB41, 82, 173, 409, 345, 0x16203E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176976433342324324234235445645233423499)
else
click %XB41%, %YB41%
sleep 2000
GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up334184111176976433342324324234235445645233423499):
PixelSearch, XB23, YB23, 82, 173, 409, 345, 0x16203E, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117697643399)
else
click %XB23%, %YB23%
sleep 2000
GoTo, Recovered(Up33418411117697642343534523324657832453351599)
Recovered(Up33418411117697642343534523324657832453351599):
PixelSearch, XB, YB, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117697642343534523324657832453351543243232434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33418411117697642343534523324657832453351543243232434299):
sleep 500
PixelSearch, XB442, YB442, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111172342342697642343534523324657832453351543243232434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184111172342342697642343534523324657832453351543243232434299):
sleep 500
PixelSearch, XB4423, YB4423, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111172342342342342342342697642343534523324657832453351543243232434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184111172342342342342342342697642343534523324657832453351543243232434299):
sleep 500
PixelSearch, XB44234, YB44234, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184134234234332434299)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184134234234332434299):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184234432432432432432879734532344345645611117697643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up334184234432432432432432879734532344345645611117697643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117623234297643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33418411117623234297643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33242342343418411117697643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33242342343418411117697643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111769754454568778643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111769754454568778643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33423423423443214332328411117697643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33423423423443214332328411117697643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111765647434343434397643399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111765647434343434397643399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111769765676756574343221343399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111769765676756574343221343399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111769763232433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3341841111769763232433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332323234184111176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332323234184111176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332342342342344184111176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332342342342344184111176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332232342344184111176976433422343243242343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332232342344184111176976433422343243242343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33223234234418413232233211176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up33223234234418413232233211176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332232342344184111176976433422343243248797897897893243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332232342344184111176976433422343243248797897897893243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3322323424234234234234234344184111176976433422343243243243232399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up3322323424234234234234234344184111176976433422343243243243232399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332232342344184111176976433422343243243243232546546546546564399)
else
GoTo, Recovered(Up33418411117697643399)
Recovered(Up332232342344184111176976433422343243243243232546546546546564399):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117697643399)
else
GoTo, Recovered(Up33418411117697643399)
}
return
Buttoncuttingmaples:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33418413245676834439211176971288):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176971288)
Recovered(Up33418419211176971288):
sleep 5000
Recovered(Up334184111176971288):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111334234234276971288)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111334234234276971288):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33443561789818224111176971288)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33443561789818224111176971288):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224534523437689111176971288)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224534523437689111176971288):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111764355476763223971288)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111764355476763223971288):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241113232325467578176971288)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241113232325467578176971288):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3374567786556445288)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3374567786556445288):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418567452225288)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418567452225288):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418434322411117323423566971288)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418434322411117323423566971288):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176973223456653232561288)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176973223456653232561288):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3546354343271288)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3546354343271288):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up389765564534571288)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up389765564534571288):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up345234576524111176971288)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up345234576524111176971288):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334183564782276971288)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334183564782276971288):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up335674672288)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up335674672288):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334567764545453288)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334567764545453288):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up335434567322271288)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up335434567322271288):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697432534523452345288)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411117697432534523452345288):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3343456567586573336971288)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3343456567586573336971288):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182234563456435433453288)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182234563456435433453288):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up344657844352454531288)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up344657844352454531288):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up456767865423323176971288)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up456767865423323176971288):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224343242354532454534111176971288)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224343242354532454534111176971288):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111213123123124343576971288)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111213123123124343576971288):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418223222332454532464111176971288)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418223222332454532464111176971288):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822342346576786434324111176971288)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822342346576786434324111176971288):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33456344234234276576454355645688)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33456344234234276576454355645688):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418242342455678891288)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418242342455678891288):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x053154, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234234234288)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3234234234288):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up897543435431288)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up897543435431288):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34565363456343543688)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34565363456343543688):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182344354234234224111176971288)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182344354234234224111176971288):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33345673567333546788)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33345673567333546788):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34324332523344322434324356223453488)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34324332523344322434324356223453488):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up1111133418224111176971288)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up1111133418224111176971288):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2222233418224111176971288)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2222233418224111176971288):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3333333418224111176971288)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3333333418224111176971288):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up344443418224111176971288)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up344443418224111176971288):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up44444433418224111176971288)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up44444433418224111176971288):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up355553418224111176971288)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up355553418224111176971288):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up5555555533418224111176971288)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up5555555533418224111176971288):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up6666633418224111176971288)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up6666633418224111176971288):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up77777733418224111176971288)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up77777733418224111176971288):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up88888833418224111176971288)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up88888833418224111176971288):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up99999933418224111176971288)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up99999933418224111176971288):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up283432433418224111176971288)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up283432433418224111176971288):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up342345675643433418224111176971288)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up342345675643433418224111176971288):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up323423456434182255664111176971288)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up323423456434182255664111176971288):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176971254456543242388)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176971254456543242388):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up434333418223443411117697123214388)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up434333418223443411117697123214388):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up23423566755633418224111176971288)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up23423566755633418224111176971288):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8564734434333418224111176971288)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8564734434333418224111176971288):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up43435466576768677633418224111176971288)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up43435466576768677633418224111176971288):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9345674356733418224111176971288)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up9345674356733418224111176971288):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3389576893456788)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3389576893456788):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33234342345667764343418224111176971288)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33234342345667764343418224111176971288):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x052F51, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182233423765767843431288)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334182233423765767843431288):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182345435645457671288)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182345435645457671288):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up1234564576433418224111176971288)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up1234564576433418224111176971288):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333422222241345345345388)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333422222241345345345388):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up94334534533418224111176971288)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up94334534533418224111176971288):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up45643322333418224111176971288)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up45643322333418224111176971288):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234657564343433418224111176971288)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3234657564343433418224111176971288):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up924564325633418224111176971288)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up924564325633418224111176971288):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2342345645633418224111176971288)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2342345645633418224111176971288):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up45234564537656754633418224111176971288)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up45234564537656754633418224111176971288):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up36546324535334288)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up36546324535334288):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32423465564343111176971288)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up32423465564343111176971288):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up5443678673433418224111176971288)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up5443678673433418224111176971288):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7878789454533418224111176971288)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7878789454533418224111176971288):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up897078546456433418224111176971288)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up897078546456433418224111176971288):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up789456345633418224111176971288)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up789456345633418224111176971288):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up87452435645633418224111176971288)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up87452435645633418224111176971288):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7685742356345633418224111176971288)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7685742356345633418224111176971288):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up906845363456345633418224111176971288)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up906845363456345633418224111176971288):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up98734564356435333418224111176971288)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up98734564356435333418224111176971288):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411176454354332156787865564176971288)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411176454354332156787865564176971288):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418435345342222223444444224111176971288)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418435345342222223444444224111176971288):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334543543543343333333418224111176971288)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334543543543343333333418224111176971288):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up987454356345633418224111176971288)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up987454356345633418224111176971288):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3334536786785645643418224111176971288)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3334536786785645643418224111176971288):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224132432234342343243243243242311176971288)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224132432234342343243243243242311176971288):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up38975543454534533418224111176971288)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up38975543454534533418224111176971288):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up31231231231231231231231233418224111176971288)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up31231231231231231231231233418224111176971288):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x022844, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176971288)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176971288):
PixelSearch, XB, YB, 4, 100, 510, 367, 0x004C75, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002342423412345456547435T754367456534135261311176971288)
else
mousemove XB, YB
sleep 500
click left
sleep 2000
mousemove XB, YB
sleep 3000
Recover(Up300002342423412345456547435T754367456534135261311176971288):
PixelSearch, XB87, YB87, 4, 100, 510, 367, 0x001F47, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234135261311176971288)
else
mousemove XB87, YB87
sleep 500
click left
sleep 2000
mousemove XB87, YB87
sleep 3000
Recovered(Up3341841114324324351243176971288):
PixelSearch, XB2, YB2, 90, 58, 121, 75, 0x009CFF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234135261311176971288)
else
Goto, Recovered(Up334184111176971288)
Recover(Up30000234234135261311176971288):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recovered(Up3341841114324324351243176971288)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164535261311176971288):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261311176971288)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261311176971288)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33418413245676834439211176971288)
Recover(Down300002342341234324235261311176971288):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up30000234234135261311176971288)
Recover(Down30000234234135261311176971288):
GoTo, Recovered(Up334184111176971288)
}
Return
Buttongildedprayer:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33418413245676834439211176971233):
BlockInput On
GoTo, Recovered(Up334184111176971233)
Recovered(Up33418419211176971233):
Recovered(Up334184111176971233):
Loop
{
WinActivate, ahk_class SunAwtFrame
Recovered(Up334182241111334234234276971233):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224534523437689111176971233)
else
mousemove X322313, Y322313
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418224534523437689111176971233):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111764355476763223971233)
else
mousemove X3223133, Y3223133
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182241111764355476763223971233):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241113232325467578176971233)
else
mousemove X3789, Y3789
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182241113232325467578176971233):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3374567786556445233)
else
mousemove X37891, Y37891
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3374567786556445233):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418567452225233)
else
mousemove X378912, Y378912
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418567452225233):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418434322411117323423566971233)
else
mousemove X3789123, Y3789123
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418434322411117323423566971233):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176973223456653232561233)
else
mousemove X37891234, Y37891234
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418224111176973223456653232561233):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3546354343271233)
else
mousemove X378912345, Y378912345
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3546354343271233):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up389765564534571233)
else
mousemove X3789123456, Y3789123456
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up389765564534571233):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up345234576524111176971233)
else
mousemove X37891234567, Y37891234567
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up345234576524111176971233):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334183564782276971233)
else
mousemove X91, Y91
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334183564782276971233):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up335674672233)
else
mousemove X912, Y912
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up335674672233):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334567764545453233)
else
mousemove X9123, Y9123
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334567764545453233):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up335434567322271233)
else
mousemove X91234, Y91234
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up335434567322271233):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697432534523452345233)
else
mousemove X912345, Y912345
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3341822411117697432534523452345233):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3343456567586573336971233)
else
mousemove X9123456, Y9123456
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3343456567586573336971233):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182234563456435433453233)
else
mousemove X91234567, Y91234567
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182234563456435433453233):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up344657844352454531233)
else
mousemove X912345678, Y912345678
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up344657844352454531233):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up456767865423323176971233)
else
mousemove XF1, YF1
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up456767865423323176971233):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224343242354532454534111176971233)
else
mousemove XF11, YF11
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418224343242354532454534111176971233):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111213123123124343576971233)
else
mousemove XF112, YF112
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up334182241111213123123124343576971233):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418223222332454532464111176971233)
else
mousemove XF1123, YF1123
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418223222332454532464111176971233):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822342346576786434324111176971233)
else
mousemove XF11234, YF11234
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up3341822342346576786434324111176971233):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33456344234234276576454355645633)
else
mousemove XF112345, YF112345
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33456344234234276576454355645633):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418242342455678891233)
else
mousemove XF1123456, YF1123456
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
Recovered(Up33418242342455678891233):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x61626C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176971233)
else
mousemove XF11234567, YF11234567
click
sleep 200
mousemove 236, 261
click right
sleep 200
MouseMove, 0, 25, 1, R
sleep 200
click
sleep 200
}
return
Buttongraniteminer:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33418419223443556763211176976433):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418419211176976433):
sleep 3000
Recovered(Up334184111176976433):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241114234432432432432432432564565465464545176976433)
else
GoTo, Recovered(Up3341822412312312343534534534512345456321321123321312111176976433)
Recovered(Up334182241114234432432432432432432564565465464545176976433):
PixelSearch, XF1123456741, YF1123456741, 687, 463, 728, 494, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241114564565465464545176976433)
else
GoTo, Recovered(Up3341822412312312343534534534512345456321321123321312111176976433)
Recovered(Up334182241114564565465464545176976433):
PixelSearch, XF1123456731, YF1123456731, 687, 463, 728, 494, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176976433)
else
GoTo, Recovered(Up3341822412312312343534534534512345456321321123321312111176976433)
Recovered(Up3341822412312312343534534534512345456321321123321312111176976433):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up89754343543120998)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up89754343543120998):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3456536345634354360998)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3456536345634354360998):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418234435423423422411117697120998)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418234435423423422411117697120998):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3334567356733354670998)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3334567356733354670998):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3432433252334432243432435622345340998)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3432433252334432243432435622345340998):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up111113341822411117697120998)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up111113341822411117697120998):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up222223341822411117697120998)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up222223341822411117697120998):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333333341822411117697120998)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333333341822411117697120998):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34444341822411117697120998)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34444341822411117697120998):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4444443341822411117697120998)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4444443341822411117697120998):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up35555341822411117697120998)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up35555341822411117697120998):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up555555553341822411117697120998)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up555555553341822411117697120998):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up666663341822411117697120998)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up666663341822411117697120998):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7777773341822411117697120998)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7777773341822411117697120998):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8888883341822411117697120998)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8888883341822411117697120998):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9999993341822411117697120998)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9999993341822411117697120998):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up28343243341822411117697120998)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up28343243341822411117697120998):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34234567564343341822411117697120998)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34234567564343341822411117697120998):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32342345643418225566411117697120998)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up32342345643418225566411117697120998):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697125445654324230998)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411117697125445654324230998):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up43433341822344341111769712321430998)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up43433341822344341111769712321430998):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2342356675563341822411117697120998)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2342356675563341822411117697120998):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up856473443433341822411117697120998)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up856473443433341822411117697120998):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4343546657676867763341822411117697120998)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4343546657676867763341822411117697120998):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up934567435673341822411117697120998)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up934567435673341822411117697120998):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up338957689345670998)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up338957689345670998):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3323434234566776434341822411117697120998)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3323434234566776434341822411117697120998):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x3C5A81, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334183423243242342342342233423765767843431209)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334183423243242342342342233423765767843431209):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34565363456343543609)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34565363456343543609):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182344354234234224111176971209)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182344354234234224111176971209):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33345673567333546709)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33345673567333546709):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34324332523344322434324356223453409)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34324332523344322434324356223453409):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up1111133418224111176971209)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up1111133418224111176971209):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2222233418224111176971209)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2222233418224111176971209):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3333333418224111176971209)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3333333418224111176971209):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up344443418224111176971209)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up344443418224111176971209):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up44444433418224111176971209)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up44444433418224111176971209):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up355553418224111176971209)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up355553418224111176971209):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up5555555533418224111176971209)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up5555555533418224111176971209):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up6666633418224111176971209)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up6666633418224111176971209):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up77777733418224111176971209)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up77777733418224111176971209):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up88888833418224111176971209)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up88888833418224111176971209):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up99999933418224111176971209)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up99999933418224111176971209):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up283432433418224111176971209)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up283432433418224111176971209):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up342345675643433418224111176971209)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up342345675643433418224111176971209):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up323423456434182255664111176971209)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up323423456434182255664111176971209):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176971254456543242309)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176971254456543242309):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up434333418223443411117697123214309)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up434333418223443411117697123214309):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up23423566755633418224111176971209)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up23423566755633418224111176971209):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8564734434333418224111176971209)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8564734434333418224111176971209):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up43435466576768677633418224111176971209)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up43435466576768677633418224111176971209):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9345674356733418224111176971209)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up9345674356733418224111176971209):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3389576893456709)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3389576893456709):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33234342345667764343418224111176971209)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33234342345667764343418224111176971209):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x3A597F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182233423765767843431209)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334182233423765767843431209):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182345435645457671209)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182345435645457671209):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up1234564576433418224111176971209)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up1234564576433418224111176971209):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333422222241345345345309)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333422222241345345345309):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up94334534533418224111176971209)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up94334534533418224111176971209):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up45643322333418224111176971209)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up45643322333418224111176971209):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234657564343433418224111176971209)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3234657564343433418224111176971209):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up924564325633418224111176971209)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up924564325633418224111176971209):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2342345645633418224111176971209)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2342345645633418224111176971209):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up45234564537656754633418224111176971209)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up45234564537656754633418224111176971209):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up36546324535334209)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up36546324535334209):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32423465564343111176971209)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up32423465564343111176971209):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up5443678673433418224111176971209)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up5443678673433418224111176971209):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7878789454533418224111176971209)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7878789454533418224111176971209):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up897078546456433418224111176971209)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up897078546456433418224111176971209):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up789456345633418224111176971209)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up789456345633418224111176971209):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up87452435645633418224111176971209)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up87452435645633418224111176971209):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7685742356345633418224111176971209)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7685742356345633418224111176971209):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up906845363456345633418224111176971209)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up906845363456345633418224111176971209):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up98734564356435333418224111176971209)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up98734564356435333418224111176971209):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411176454354332156787865564176971209)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411176454354332156787865564176971209):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418435345342222223444444224111176971209)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418435345342222223444444224111176971209):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334543543543343333333418224111176971209)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334543543543343333333418224111176971209):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up987454356345633418224111176971209)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up987454356345633418224111176971209):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3334536786785645643418224111176971209)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3334536786785645643418224111176971209):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224132432234342343243243243242311176971209)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224132432234342343243243243242311176971209):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up38975543454534533418224111176971209)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up38975543454534533418224111176971209):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up31231231231231231231231233418224111176971209)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up31231231231231231231231233418224111176971209):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x426490, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176976433)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176976433):
PixelSearch, XB65112, YB65112, 82, 173, 409, 345, 0x346690, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182112121241112234234233423417623434234235676575677652332976433)
else
click %XB65112%, %YB65112%
sleep 2000
GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up334182112121241112234234233423417623434234235676575677652332976433):
PixelSearch, XB6511, YB6511, 82, 173, 409, 345, 0x264C6C, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841112234234233423417623434234235676575677652332976433)
else
click %XB6511%, %YB6511%
sleep 2000
GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up3341841112234234233423417623434234235676575677652332976433):
PixelSearch, XB65, YB65, 82, 173, 409, 345, 0x3D7AAD, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411122342342334234176976433)
else
click %XB65%, %YB65%
sleep 2000
GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up33418411122342342334234176976433):
PixelSearch, XB28, YB28, 82, 173, 409, 345, 0x38709F, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184432243243432324423432322332111176976433)
else
click %XB28%, %YB28%
sleep 2000
GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up334184432243243432324423432322332111176976433):
PixelSearch, XB41, YB41, 82, 173, 409, 345, 0x2B587D, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111769764333423243242342354456452334234)
else
click %XB41%, %YB41%
sleep 2000
GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up3341841111769764333423243242342354456452334234):
PixelSearch, XB23, YB23, 82, 173, 409, 345, 0x2D5A80, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176976433)
else
click %XB23%, %YB23%
sleep 2000
GoTo, Recovered(Up334184111176976423435345233246578324533515)
Recovered(Up334184111176976423435345233246578324533515):
PixelSearch, XB, YB, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176976423435345233246578324533515432432324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up334184111176976423435345233246578324533515432432324342):
sleep 500
PixelSearch, XB442, YB442, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111723423426976423435345233246578324533515432432324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341841111723423426976423435345233246578324533515432432324342):
sleep 500
PixelSearch, XB4423, YB4423, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111723423423423423423426976423435345233246578324533515432432324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341841111723423423423423423426976423435345233246578324533515432432324342):
sleep 500
PixelSearch, XB44234, YB44234, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841342342343324342)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341841342342343324342):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341842344324324324324328797345323443456456111176976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3341842344324324324324328797345323443456456111176976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176232342976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up334184111176232342976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332423423434184111176976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up332423423434184111176976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117697544545687786433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117697544545687786433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334234234234432143323284111176976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up334234234234432143323284111176976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117656474343434343976433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117656474343434343976433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117697656767565743432213433)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117697656767565743432213433):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418411117697632324334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33418411117697632324334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3323232341841111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3323232341841111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3323423423423441841111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3323423423423441841111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3322323423441841111769764334223432432423432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3322323423441841111769764334223432432423432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332232342344184132322332111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up332232342344184132322332111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3322323423441841111769764334223432432487978978978932432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3322323423441841111769764334223432432487978978978932432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33223234242342342342342343441841111769764334223432432432432323)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up33223234242342342342342343441841111769764334223432432432432323):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3322323423441841111769764334223432432432432325465465465465643)
else
GoTo, Recovered(Up334184111176976433)
Recovered(Up3322323423441841111769764334223432432432432325465465465465643):
sleep 500
PixelSearch, XB442347, YB442347, 397, 69, 516, 232, 0x7C7B75, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176976433)
else
GoTo, Recovered(Up334184111176976433)
}
return
Buttoncuttingwillows:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up334184132456768344392111769712):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up3341841111769712)
Recovered(Up334184192111769712):
sleep 5000
Recovered(Up3341841111769712):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411113342342342769712)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411113342342342769712):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334435617898182241111769712)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334435617898182241111769712):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182245345234376891111769712)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182245345234376891111769712):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117643554767632239712)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411117643554767632239712):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411132323254675781769712)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411132323254675781769712):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33745677865564452)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33745677865564452):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334185674522252)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334185674522252):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184343224111173234235669712)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334184343224111173234235669712):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111769732234566532325612)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111769732234566532325612):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up35463543432712)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up35463543432712):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3897655645345712)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3897655645345712):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3452345765241111769712)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3452345765241111769712):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341835647822769712)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341835647822769712):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3356746722)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3356746722):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3345677645454532)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3345677645454532):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3354345673222712)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3354345673222712):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176974325345234523452)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176974325345234523452):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33434565675865733369712)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33434565675865733369712):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822345634564354334532)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822345634564354334532):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3446578443524545312)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3446578443524545312):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4567678654233231769712)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4567678654233231769712):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182243432423545324545341111769712)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182243432423545324545341111769712):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411112131231231243435769712)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411112131231231243435769712):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182232223324545324641111769712)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182232223324545324641111769712):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418223423465767864343241111769712)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418223423465767864343241111769712):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334563442342342765764543556456)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334563442342342765764543556456):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182423424556788912)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334182423424556788912):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0E323A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32342342342)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up32342342342):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8975434354312)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8975434354312):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up345653634563435436)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up345653634563435436):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341823443542342342241111769712)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341823443542342342241111769712):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333456735673335467)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333456735673335467):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up343243325233443224343243562234534)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up343243325233443224343243562234534):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up11111334182241111769712)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up11111334182241111769712):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up22222334182241111769712)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up22222334182241111769712):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33333334182241111769712)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33333334182241111769712):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3444434182241111769712)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3444434182241111769712):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up444444334182241111769712)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up444444334182241111769712):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3555534182241111769712)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3555534182241111769712):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up55555555334182241111769712)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up55555555334182241111769712):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up66666334182241111769712)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up66666334182241111769712):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up777777334182241111769712)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up777777334182241111769712):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up888888334182241111769712)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up888888334182241111769712):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up999999334182241111769712)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up999999334182241111769712):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2834324334182241111769712)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2834324334182241111769712):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3423456756434334182241111769712)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3423456756434334182241111769712):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234234564341822556641111769712)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3234234564341822556641111769712):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111769712544565432423)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111769712544565432423):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up4343334182234434111176971232143)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up4343334182234434111176971232143):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up234235667556334182241111769712)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up234235667556334182241111769712):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up85647344343334182241111769712)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up85647344343334182241111769712):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up434354665767686776334182241111769712)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up434354665767686776334182241111769712):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up93456743567334182241111769712)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up93456743567334182241111769712):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33895768934567)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33895768934567):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up332343423456677643434182241111769712)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up332343423456677643434182241111769712):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0E313A, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822334237657678434312)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822334237657678434312):
PixelSearch, X3223, Y3223, 560, 246, 598, 280, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341823454356454576712)
else
mousemove X3223, Y3223
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341823454356454576712):
PixelSearch, X32231, Y32231, 605, 245, 641, 279, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up12345645764334182241111769712)
else
mousemove X32231, Y32231
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up12345645764334182241111769712):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3334222222413453453453)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3334222222413453453453):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up943345345334182241111769712)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up943345345334182241111769712):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up456433223334182241111769712)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up456433223334182241111769712):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32346575643434334182241111769712)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up32346575643434334182241111769712):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9245643256334182241111769712)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9245643256334182241111769712):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up23423456456334182241111769712)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up23423456456334182241111769712):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up452345645376567546334182241111769712)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up452345645376567546334182241111769712):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up365463245353342)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up365463245353342):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up324234655643431111769712)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up324234655643431111769712):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up54436786734334182241111769712)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up54436786734334182241111769712):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up78787894545334182241111769712)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up78787894545334182241111769712):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8970785464564334182241111769712)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8970785464564334182241111769712):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7894563456334182241111769712)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7894563456334182241111769712):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up874524356456334182241111769712)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up874524356456334182241111769712):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up76857423563456334182241111769712)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up76857423563456334182241111769712):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9068453634563456334182241111769712)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9068453634563456334182241111769712):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up987345643564353334182241111769712)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up987345643564353334182241111769712):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111764543543321567878655641769712)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111764543543321567878655641769712):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184353453422222234444442241111769712)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334184353453422222234444442241111769712):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3345435435433433333334182241111769712)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3345435435433433333334182241111769712):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9874543563456334182241111769712)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up9874543563456334182241111769712):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33345367867856456434182241111769712)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33345367867856456434182241111769712):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241324322343423432432432432423111769712)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241324322343423432432432432423111769712):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up389755434545345334182241111769712)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up389755434545345334182241111769712):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up312312312312312312312312334182241111769712)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up312312312312312312312312334182241111769712):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x0D3038, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111769712)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111769712):
PixelSearch, XB, YB, 4, 100, 510, 367, 0x1B2726, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002342341352613111769712)
else
mousemove XB, YB
sleep 500
click left
sleep 2000
mousemove XB, YB
sleep 3000
Recovered(Up33418411143243243512431769712):
PixelSearch, XB2, YB2, 90, 58, 121, 75, 0x009CFF, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up300002342341352613111769712)
else
Goto, Recovered(Up3341841111769712)
Recover(Up300002342341352613111769712):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recovered(Up33418411143243243512431769712)
else
click 402, 312
sleep 100
Recover(Down30000234235464541645352613111769712):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341352613111769712)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down300002342341352613111769712)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up334184132456768344392111769712)
Recover(Down3000023423412343242352613111769712):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up300002342341352613111769712)
Recover(Down300002342341352613111769712):
GoTo, Recovered(Up3341841111769712)
}
Return
Buttonflyfishingtrout:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
Recovered(Up33418413245676834439211176971255):
BlockInput On
sleep 50
click 563, 54
Send {Up Down}
sleep 2000
Send {Up Up}
GoTo, Recovered(Up334184111176971255)
Recovered(Up33418419211176971255):
sleep 5000
Recovered(Up334184111176971255):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X322313432, Y322313432, 10, 379, 514, 507, 0xA3A4AE, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841114324324351243176971255)
else
Goto, Recovered(Up33418224111176971255)
Recovered(Up33418224534523437689111176971253424324325134545332):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224534523437689111176971255)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224534523437689111176971255):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111764355476763223971255)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111764355476763223971255):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241113232325467578176971255)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241113232325467578176971255):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3374567786556445255)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3374567786556445255):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418567452225255)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418567452225255):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418434322411117323423566971255)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418434322411117323423566971255):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176973223456653232561255)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176973223456653232561255):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3546354343271255)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3546354343271255):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up389765564534571255)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up389765564534571255):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up345234576524111176971255)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up345234576524111176971255):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334183564782276971255)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334183564782276971255):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up335674672255)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up335674672255):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334567764545453255)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334567764545453255):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up335434567322271255)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up335434567322271255):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411117697432534523452345255)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411117697432534523452345255):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3343456567586573336971255)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3343456567586573336971255):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182234563456435433453255)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182234563456435433453255):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up344657844352454531255)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up344657844352454531255):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up456767865423323176971255)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up456767865423323176971255):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224343242354532454534111176971255)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224343242354532454534111176971255):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182241111213123123124343576971255)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182241111213123123124343576971255):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418223222332454532464111176971255)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418223222332454532464111176971255):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822342346576786434324111176971255)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822342346576786434324111176971255):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33456344234234276576454355645655)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33456344234234276576454355645655):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418242342455678891255)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418242342455678891255):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x9899A6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234234234255)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3234234234255):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182344354234234224111176971255)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334182344354234234224111176971255):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33345673567333546755)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33345673567333546755):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up34324332523344322434324356223453455)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up34324332523344322434324356223453455):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up1111133418224111176971255)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up1111133418224111176971255):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2222233418224111176971255)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2222233418224111176971255):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3333333418224111176971255)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3333333418224111176971255):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up344443418224111176971255)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up344443418224111176971255):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up44444433418224111176971255)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up44444433418224111176971255):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up355553418224111176971255)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up355553418224111176971255):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up5555555533418224111176971255)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up5555555533418224111176971255):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up6666633418224111176971255)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up6666633418224111176971255):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up77777733418224111176971255)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up77777733418224111176971255):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up88888833418224111176971255)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up88888833418224111176971255):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up99999933418224111176971255)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up99999933418224111176971255):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up283432433418224111176971255)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up283432433418224111176971255):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up342345675643433418224111176971255)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up342345675643433418224111176971255):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up323423456434182255664111176971255)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up323423456434182255664111176971255):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176971254456543242355)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176971254456543242355):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up434333418223443411117697123214355)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up434333418223443411117697123214355):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up23423566755633418224111176971255)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up23423566755633418224111176971255):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up8564734434333418224111176971255)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up8564734434333418224111176971255):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up43435466576768677633418224111176971255)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up43435466576768677633418224111176971255):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up9345674356733418224111176971255)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up9345674356733418224111176971255):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3389576893456755)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up3389576893456755):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33234342345667764343418224111176971255)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33234342345667764343418224111176971255):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0xBEBEC6, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334182233423765767843431255)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up334182233423765767843431255):
Recovered(Up1234564576433418224111176971255):
PixelSearch, X322313, Y322313, 646, 245, 685, 280, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up333422222241345345345355)
else
mousemove X322313, Y322313
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up333422222241345345345355):
PixelSearch, X3223133, Y3223133, 688, 245, 728, 280, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up94334534533418224111176971255)
else
mousemove X3223133, Y3223133
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up94334534533418224111176971255):
PixelSearch, X3789, Y3789, 561, 279, 600, 315, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up45643322333418224111176971255)
else
mousemove X3789, Y3789
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up45643322333418224111176971255):
PixelSearch, X37891, Y37891, 603, 279, 642, 315, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3234657564343433418224111176971255)
else
mousemove X37891, Y37891
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3234657564343433418224111176971255):
PixelSearch, X378912, Y378912, 646, 279, 684, 315, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up924564325633418224111176971255)
else
mousemove X378912, Y378912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up924564325633418224111176971255):
PixelSearch, X3789123, Y3789123, 688, 279, 729, 315, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up2342345645633418224111176971255)
else
mousemove X3789123, Y3789123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up2342345645633418224111176971255):
PixelSearch, X37891234, Y37891234, 560, 320, 600, 350, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up45234564537656754633418224111176971255)
else
mousemove X37891234, Y37891234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up45234564537656754633418224111176971255):
PixelSearch, X378912345, Y378912345, 604, 320, 641, 350, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up36546324535334255)
else
mousemove X378912345, Y378912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up36546324535334255):
PixelSearch, X3789123456, Y3789123456, 645, 320, 685, 350, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up32423465564343111176971255)
else
mousemove X3789123456, Y3789123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up32423465564343111176971255):
PixelSearch, X37891234567, Y37891234567, 688, 320, 727, 350, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up5443678673433418224111176971255)
else
mousemove X37891234567, Y37891234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up5443678673433418224111176971255):
PixelSearch, X91, Y91, 561, 355, 600, 386, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7878789454533418224111176971255)
else
mousemove X91, Y91
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7878789454533418224111176971255):
PixelSearch, X912, Y912, 604, 355, 642, 386, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up897078546456433418224111176971255)
else
mousemove X912, Y912
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up897078546456433418224111176971255):
PixelSearch, X9123, Y9123, 645, 355, 685, 386, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up789456345633418224111176971255)
else
mousemove X9123, Y9123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up789456345633418224111176971255):
PixelSearch, X91234, Y91234, 688, 355, 725, 386, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up87452435645633418224111176971255)
else
mousemove X91234, Y91234
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up87452435645633418224111176971255):
PixelSearch, X912345, Y912345, 561, 390, 600, 422, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up7685742356345633418224111176971255)
else
mousemove X912345, Y912345
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up7685742356345633418224111176971255):
PixelSearch, X9123456, Y9123456, 602, 390, 643, 422, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up906845363456345633418224111176971255)
else
mousemove X9123456, Y9123456
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up906845363456345633418224111176971255):
PixelSearch, X91234567, Y91234567, 646, 390, 685, 422, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up98734564356435333418224111176971255)
else
mousemove X91234567, Y91234567
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up98734564356435333418224111176971255):
PixelSearch, X912345678, Y912345678, 687, 390, 728, 422, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341822411176454354332156787865564176971255)
else
mousemove X912345678, Y912345678
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3341822411176454354332156787865564176971255):
PixelSearch, XF1, YF1, 560, 425, 600, 460, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418435345342222223444444224111176971255)
else
mousemove XF1, YF1
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up33418435345342222223444444224111176971255):
PixelSearch, XF11, YF11, 603, 425, 642, 460, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334543543543343333333418224111176971255)
else
mousemove XF11, YF11
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up334543543543343333333418224111176971255):
PixelSearch, XF112, YF112, 646, 425, 684, 460, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up987454356345633418224111176971255)
else
mousemove XF112, YF112
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up987454356345633418224111176971255):
PixelSearch, XF1123, YF1123, 687, 425, 728, 460, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3334536786785645643418224111176971255)
else
mousemove XF1123, YF1123
click right
MouseMove, 0, 40, 1, R
sleep 100
click
sleep 50
Recovered(Up3334536786785645643418224111176971255):
PixelSearch, XF11234, YF11234, 560, 463, 601, 494, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224132432234342343243243243242311176971255)
else
mousemove XF11234, YF11234
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224132432234342343243243243242311176971255):
PixelSearch, XF112345, YF112345, 602, 463, 643, 494, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up38975543454534533418224111176971255)
else
mousemove XF112345, YF112345
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up38975543454534533418224111176971255):
PixelSearch, XF1123456, YF1123456, 647, 463, 685, 494, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up31231231231231231231231233418224111176971255)
else
mousemove XF1123456, YF1123456
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up31231231231231231231231233418224111176971255):
PixelSearch, XF11234567, YF11234567, 687, 463, 728, 494, 0x878DB0, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418224111176971255)
else
mousemove XF11234567, YF11234567
click right
MouseMove, 0, 20, 1, R
sleep 100
click
sleep 50
Recovered(Up33418224111176971255):
PixelSearch, XB, YB, 4, 100, 510, 367, 0x5915EC, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234135261311176971435543435435435255)
else
mousemove XB, YB
sleep 500
MouseMove, 38, 20, 1, R
click left
sleep 2000
mousemove XB, YB
sleep 3000
Recovered(Up3341841114324324351243176971255):
PixelSearch, XB2, YB2, 406, 59, 513, 84, 0x0000FF, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up334184111176971255)
else
Goto, Recovered(Up33418224534523437689111176971253424324325134545332)
Recover(Up30000234234135261311176971435543435435435255):
PixelSearch, XB432, YB432, 577, 48, 733, 197, 0x5915EC, 1, Fast
if Errorlevel = 1
GoTo, Recover(Up30000234234135261311176971255)
else
mousemove XB432, YB432
click left
sleep 10000
Recover(Up30000234234135261311176971255):
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recovered(Up334184111176971255)
else
click 402, 312
sleep 100
Recover(Down3000023423546454164535261311176971255):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261311176971255)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down30000234234135261311176971255)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
GoTo, Recovered(Up33418413245676834439211176971255)
Recover(Down300002342341234324235261311176971255):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up30000234234135261311176971255)
Recover(Down30000234234135261311176971255):
GoTo, Recovered(Up334184111176971255)
}
Return
ButtonVarrockagilityauto:
IfWinExist, ahk_class SunAwtFrame
WinActivate, ahk_class SunAwtFrame
SetTimer, ReloadScript,  900000000000
BlockInput On
Recovered(Up3341841111769712456):
Loop
{
WinActivate, ahk_class SunAwtFrame
PixelSearch, X, Y, 8, 37, 517, 369, 0x3A9045, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841111769712456)
else
mousemove X, Y
click
GoTo, Recovered(Up3341841111769712456)
}
Return
buttonupdatelog:
{
Run, notepad Essentials\UpdateLogv13.txt
}
return
Buttonautologinsetup:
msgbox, Open the "Essentials" Folder which is located in the same filepath as this macro, and open up "AccountUsername.txt" and change the first line of text to your Runescape username. Also Open up "AccountPassword.txt" and change the first line to your Runescape password.
return
Buttonhowtoupgradetopremium:
MsgBox, udont
return
Buttoncontactme:
MsgBox, wot u wont"
return
Recover(Up30000234234123445765324432322343242352613111765131):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up3341841)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111456456456)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down478247467846731111456456456)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47847467846731111456456456)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456)
else
click 402, 312
sleep 100
Recover(Down47847467846731111456456456):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down47847467846731111456456456)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up334425634567184192)
Recover(Down478247467846731111456456456):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up30000234234123445765324432322343242352613111765131)
Recover(Down4784746784673456456456):
GoTo, Recover(Up30000234234123445765324432322343242352613111765131)
return
Recover(Up300002453345345345765131):
PixelSearch, DXKIOE, DKYIOE, 164, 53, 207, 124, 0xCBBAB9, 1, Fast
if Errorlevel = 1
GoTo, Recovered(Up33418419261)
else
PixelSearch, DXKIO, DKYIO, 314, 287, 336, 302, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47824746784673111145645645644)
PixelSearch, DXKI, DKYI, 345, 301, 388, 315, 0xFFFFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down47824746784673111145645645644)
PixelSearch, DXKI, DKYI, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 0
Goto, Recover(Down4784746784673111145645645644)
PixelSearch, DXI, DYI, 388, 300, 403, 313, 0x201D1C, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644)
else
PixelSearch, DXU, DYU, 159, 50, 207, 118, 0xCBBAB9, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644)
else
click 402, 312
sleep 100
Recover(Down4784746784673111145645645644):
PixelSearch, XX, YY, 225, 361, 246, 381, 0x0B0B0B, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644)
else
PixelSearch, XXX, YYY, 250, 244, 521, 262, 0x00FFFF, 1, Fast
if Errorlevel = 1
Goto, Recover(Down4784746784673111145645645644)
else
click 315, 292
send %accname%{enter}
send %accpass%{enter}
sleep 7000
click 384, 367
sleep 7000
Goto, Recovered(Up334184194556567645734342565463261)
Recover(Down47824746784673111145645645644):
click  316, 289
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
click 346, 307
send {backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}{backspace}
Goto, Recover(Up300002453345345345765131)
Recover(Down478474678467345645645644):
GoTo, Recovered(Up33418419261)
return
GuiClose:
ExitApp