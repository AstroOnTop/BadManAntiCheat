#badman Banned
execute Herobrine3209 ~~~ event entity @s badman:ban 
execute Herobrine3209 ~~~ scoreboard players set @s cbeflag 9
execute Herobrine3209 ~~~ function badman/permban
execute @s[scores={cbeflag=9..}] ~~~ event entity @s badman:ban


function badman/alwaysactivemodules/anticbe
function badman/alwaysactivemodules/antigmc
function badman/alwaysactivemodules/autolagclear
function badman/alwaysactivemodules/bottombedrock
function badman/alwaysactivemodules/hotbarmessage
function badman/alwaysactivemodules/moderating
function badman/alwaysactivemodules/timeplayed
function badman/alwaysactivemodules/timeplayedtrackerconverter

execute @e[type=npc,scores={cbetoggle=1}] ~~~ execute @p[tag=!§k§9♀] ~~~ tellraw @a {"rawtext":[{"text":"§l§cNPC STOPPED §4"}]}
execute @e[type=command_block_minecart,scores={cbetoggle=1}] ~~~ execute @p[tag=!§k§9♀] ~~~ tellraw @a {"rawtext":[{"text":"§l§cCOMMAND_MINECART STOPPED §4"}]}
execute @s[tag=!§k§9♀,scores={cbetoggle=1}] ~~~ tp @e[type=npc] ~ -200 ~
execute @s[tag=!§k§9♀,scores={cbetoggle=1}] ~~~ tp @e[type=command_block_minecart] ~ -200 ~
execute @s[tag=!§k§9♀,scores={cbetoggle=1}] ~~~ kill @e[type=command_block_minecart,tag=!test1]
execute @s[tag=!§k§9♀,scores={cbetoggle=1}] ~~~ kill @e[type=npc,tag=!test1]
execute @s[name=┼§1t§k♀§r§2e§3s§4t§r┼] ~~~ tag @p add test1
gamerule functioncommandlimit 10000
gamerule sendcommandfeedback false
gamerule commandblockoutput false
execute @s[scores={timer=1}] ~~~ scoreboard objectives setdisplay list realmname1 ascending
execute @s[scores={timer=3}] ~~~ scoreboard objectives setdisplay list realmname2 ascending
execute @s[scores={timer=5}] ~~~ scoreboard objectives setdisplay list realmname3 ascending
execute @s[scores={timer=7}] ~~~ scoreboard objectives setdisplay list realmname4 ascending
execute @s[scores={timer=9}] ~~~ scoreboard objectives setdisplay list realmname5 ascending
execute @s[scores={timer=11}] ~~~ scoreboard objectives setdisplay list realmname6 ascending
execute @s[scores={timer=13}] ~~~ scoreboard objectives setdisplay list realmname7 ascending
execute @s[scores={timer=15}] ~~~ scoreboard objectives setdisplay list realmname8 ascending
execute @s[scores={timer=17}] ~~~ scoreboard objectives setdisplay list realmname9 ascending
scoreboard players add @s timer 1
execute @s[scores={timer=19..}] ~~~ scoreboard players set @a timer 0
scoreboard objectives add welcome dummy
scoreboard players add @a welcome 1
execute @a[scores={welcome=120}] ~~~ title @r title §cThis Realm Is Protected By §4badman AntiCheat
execute @a[scores={welcome=120}] ~~~ title @r subtitle §4badman §r §3→ §cV1.0.0
execute @a[scores={welcome=120}] ~~~ tellraw @a {"rawtext":[{"text":"§4badman §r §3→ "},{"selector":"@s"},{"text":"§5 Has Joined For the First Time!"}]}
execute @a[scores={welcome=120}] ~~~ function badman/credit
execute @a[scores={welcome=120}] ~~~ function badman/asset/setup
tellraw @a[scores={welcome=120}] {"rawtext":[{"text":"§4badman §r §3→ "},{"selector":"@s"},{"text":"§5 /function badman/help "}]}
tellraw @a[scores={welcome=120}] {"rawtext":[{"text":"§4badman §r §3→ §5Join Our Discord For Help https://discord.gg/kUCF7m94Y2"}]}