
# ▄████▄   ▒█████   ██▀███   ██▀███   █    ██  ██▓███  ▄▄▄█████▓   ▄▄▄█████▓ ▄▄▄        ▄████     ███▄    █ ▓█████  █     █░    ██▒   █▓ ██▓ ██▀███   █    ██   ██████ 
#▒██▀ ▀█  ▒██▒  ██▒▓██ ▒ ██▒▓██ ▒ ██▒ ██  ▓██▒▓██░  ██▒▓  ██▒ ▓▒   ▓  ██▒ ▓▒▒████▄     ██▒ ▀█▒    ██ ▀█   █ ▓█   ▀ ▓█░ █ ░█░   ▓██░   █▒▓██▒▓██ ▒ ██▒ ██  ▓██▒▒██    ▒ 
#▒▓█    ▄ ▒██░  ██▒▓██ ░▄█ ▒▓██ ░▄█ ▒▓██  ▒██░▓██░ ██▓▒▒ ▓██░ ▒░   ▒ ▓██░ ▒░▒██  ▀█▄  ▒██░▄▄▄░   ▓██  ▀█ ██▒▒███   ▒█░ █ ░█     ▓██  █▒░▒██▒▓██ ░▄█ ▒▓██  ▒██░░ ▓██▄   
#▒▓▓▄ ▄██▒▒██   ██░▒██▀▀█▄  ▒██▀▀█▄  ▓▓█  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░    ░ ▓██▓ ░ ░██▄▄▄▄██ ░▓█  ██▓   ▓██▒  ▐▌██▒▒▓█  ▄ ░█░ █ ░█      ▒██ █░░░██░▒██▀▀█▄  ▓▓█  ░██░  ▒   ██▒
#▒ ▓███▀ ░░ ████▓▒░░██▓ ▒██▒░██▓ ▒██▒▒▒█████▓ ▒██▒ ░  ░  ▒██▒ ░      ▒██▒ ░  ▓█   ▓██▒░▒▓███▀▒   ▒██░   ▓██░░▒████▒░░██▒██▓       ▒▀█░  ░██░░██▓ ▒██▒▒▒█████▓ ▒██████▒▒
#░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒ ▒▓▒░ ░  ░  ▒ ░░        ▒ ░░    ▒▒   ▓▒█░ ░▒   ▒    ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▓░▒ ▒        ░ ▐░  ░▓  ░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░
#  ░  ▒     ░ ▒ ▒░   ░▒ ░ ▒░  ░▒ ░ ▒░░░▒░ ░ ░ ░▒ ░         ░           ░      ▒   ▒▒ ░  ░   ░    ░ ░░   ░ ▒░ ░ ░  ░  ▒ ░ ░        ░ ░░   ▒ ░  ░▒ ░ ▒░░░▒░ ░ ░ ░ ░▒  ░ ░
#░        ░ ░ ░ ▒    ░░   ░   ░░   ░  ░░░ ░ ░ ░░         ░           ░        ░   ▒   ░ ░   ░       ░   ░ ░    ░     ░   ░          ░░   ▒ ░  ░░   ░  ░░░ ░ ░ ░  ░  ░  
#░ ░          ░ ░     ░        ░        ░                                         ░  ░      ░             ░    ░  ░    ░             ░   ░     ░        ░           ░  
#░                                                                                                                                  ░                                  

# welcome to corrupt tag:new virus: by Degebs
# any wouldbe modder is welcome to study this code
# you may notice that there is more comments than code, this is because in the original there was almost no comments
# and if you EVER try to understand minecraft command code without comments you will go insane
# anyway its time for the code to start running.

tellraw @a ["",{"text":"wellcome to","color":"blue"},{"text":" ","color":"light_purple"},{"text":"Corrupt tag:new virus","color":"dark_purple","bold":true},"\n "]

#set up all gamerules
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doDaylightCycle false
time set day
gamerule drowningDamage false
gamerule commandBlockOutput false
gamerule fireDamage false
gamerule showDeathMessages false
gamerule mobGriefing false
gamerule fallDamage false
gamerule doWeatherCycle false
gamerule spawnRadius 0
gamerule doImmediateRespawn true
weather clear
gamerule showDeathMessages false
gamerule freezeDamage false
gamerule sendCommandFeedback false
clear @a


# --------------------------------------------------------------------------------------------
# all variables must be established 

#---------game state variable--------------
scoreboard objectives add state dummy
scoreboard players set game state 0
scoreboard players set endgame state 0


#--------universal timer variable--------------
scoreboard objectives add time dummy
scoreboard players set tick time 0
scoreboard players set 360 time 0
# this variable is used so that sertan togles can work properly
scoreboard players set seconds time 0
scoreboard players set minutes time 0
scoreboard players set hours time 0

#--------countdown variable--------------
# normaly the countdown variable is 30, but for quick testing i set it to 5
scoreboard players set countdown time 30
# this variable is used to keep track of the countdown
# dont forget to reset this thing after its done being used

#--------------item drop delay variable === DO NOT FORGET TO RESET THIS VARIABLE WHEN THE GAME RESETS
scoreboard players set drop_detect_function_Delay time 5


#-debug toggle switch---------------------------
scoreboard objectives add debug dummy
scoreboard players set toggle debug 1
# there is another variable for counting map beacons its in the map beacon create function


# --------------------------------------------------------------------------------------------
# create all teams
#remove it before rejoining it
team remove party_lead
team add party_lead
team modify party_lead color blue
team add dead
team modify dead color black

team add runners
team add corrupted


#--------------add the variables that check on how many platers there are
#====THIS FUNCTION CANNOT BE RUN AGAIN AFTER IT IS RAN ONCE
scoreboard objectives add playerlist dummy
scoreboard objectives add players_online dummy

#--------------setting up title commands----------------
title @a times 2 50 5


# --------------------------------------------------------------------------------------------
# create the scoreboards needed to keep track of player classes (very important) both normal and corrupted classes are here
#there are 6 of each class and they will be kept track with a number
scoreboard objectives add class trigger
scoreboard objectives add evil_class trigger

#--------------------------------------------class related variables----------------------------------------------------
# the bulk item delay
scoreboard objectives add bulk dummy
# the bulk totem counter
scoreboard objectives add bulk_totem dummy
# the medic healing rose
scoreboard objectives add medic_heal dummy
scoreboard players set medic_totem_rotation medic_heal 0
#the archer arrow count
scoreboard objectives add acher_arrow_count dummy
scoreboard objectives add bow_shot minecraft.used:bow
# the assassins crouch invis and his ink sack
scoreboard objectives add assassin_charge dummy
scoreboard objectives add assassin_hide minecraft.custom:sneak_time

# classic corrupted cooldowns
scoreboard objectives add classic_corrupted_t1_cooldown dummy
scoreboard objectives add classic_corrupted_t2_cooldown dummy
scoreboard objectives add classic_corrupted_t3_cooldown dummy
# classic corrupted fruit eating detection
scoreboard objectives add corruption_fruit_eat minecraft.used:minecraft.chorus_fruit
# predator corrupted cooldowns
scoreboard objectives add predator_t1_speed_range dummy
scoreboard objectives add predator_corrupted_t2_cooldown dummy
scoreboard objectives add predator_corrupted_t3_cooldown dummy
# apparition corrupted cooldowns
#scoreboard objectives add light_level blocklight
scoreboard objectives add apparition_light_level dummy
scoreboard objectives add apparition_corrupted_t2_cooldown dummy
#scoreboard objectives add apparition_corrupted_t3_cooldown dummy

# hunter cooldowns
scoreboard objectives add hunter_corrupted_t1_cooldown dummy
scoreboard objectives add hunter_corrupted_t1_trap dummy
scoreboard objectives add hunter_corrupted_t2_trap dummy
scoreboard objectives add hunter_corrupted_t3_trap dummy

#set up the entity that detects if someone tried to kill @e (this is important for keeping track of map beacons)
execute unless entity @e[tag=life_detecter] run summon armor_stand ~ 0 ~ {Pose:{LeftLeg:[0f,0f,277f],RightLeg:[0f,0f,65f]},Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:1966080,CustomName:[{text:life_detector}],Invulnerable:1b,NoAI:1b,NoGravity:1b,Silent:1b,Tags:["life_detector"]}
# dont do this if the life detecter already exists




#-----------CALL the function that give a random player the party leader token----
# it is important that this happens LAST
kill @e[type=item]
function ctnv:one_time_function/party_leader/party_leader


#---------------------establish the settings in scoreboard variables-------------------------
# we will use the /trigger command to set the settings witch means that each setting must be its own scoreboard objective, :(
#this is gonna be hard to visualize but it will work
#we are using /trigger because the person who is setting the settings will probably not have access to commands

scoreboard objectives add ST____time_of_day trigger
scoreboard objectives add ST____nautral_regen trigger
scoreboard objectives add ST____corruption_rate trigger
scoreboard objectives add ST____max_health trigger
scoreboard objectives add ST____game_mode trigger
scoreboard objectives add ST____initial_corruption_stun trigger

# when the game starts for the first time, chanses are that the ammount of map beacons is forgotten, so we can check the life detecter
# and set the map beacon count to the number of life detecters
#execute as @e[tag=life_detector] 
# this has been fixed

# this is to reset the map selector, make sure it does not remember the last map.
scoreboard players set @e[type=minecraft:turtle] map_list 0
scoreboard objectives remove map_list

#--------------------------map beacon scorboard list------------------

scoreboard objectives add map_list dummy
scoreboard objectives add ordered_map_list dummy
#clear the map list imidiatly, it will be dynamicly generated later.
execute if score avalable_map_index debug matches 0 run scoreboard players add avalable_map_index debug 1
# it is critical that the avalable map index NEVER GOES DOWN!

scoreboard players set deleted_index debug 0




# cound the maps and add them to the scoreboard
scoreboard players add @e[type=turtle] map_list 0


#----------------------create the scoreboard values for the map beacon selection system----------------
scoreboard objectives add map_selection trigger
scoreboard players reset @a map_selection
#scoreboard players reset @e[type=turtle] map_selection

#-------------------------set up scoreboard for the spawing sircle-------------------------------
# we need to set a new scoreboard for the spawning circle
scoreboard objectives add spawning_circle dummy
scoreboard players reset @e spawning_circle
scoreboard objectives add spawn_circle_count dummy
scoreboard players reset @e spawn_circle_count
kill @e[tag=spawn_point]
scoreboard players set index spawn_circle_count 0

#---------------------give every player a unique id-------------------------------------------
scoreboard objectives add player_ID dummy
scoreboard players reset @a player_ID
scoreboard players reset #nextID player_ID

bossbar set minecraft:game_time visible false
# the player id is used for spawing everyone in around the spawn beacon properly.

# this next playerlist is basically a night club "bouncer" list.
# anyone who is not on the bouncer list will be dead during gameplay.
scoreboard objectives add bouncer_list dummy
# people who joined after the game started are not allowed on the list
# people with a corruption of 100% are not allowed on the list
# people who leave are removed from the list

#--------------------------corruption counters-------------------------------------------------------------
scoreboard objectives add corruption dummy {"text":"Corruption","color":"gold"}
scoreboard players set @a corruption 0

#---------------------------health----------------------------------------------------------
execute as @a run attribute @s max_health base set 20
#------------------------damage detection------------------------------------------------------------
scoreboard objectives add hit minecraft.custom:minecraft.damage_taken
scoreboard objectives add health dummy
scoreboard players reset @a health

#--------------------------- stun----------------------------------------------------------
scoreboard objectives add corruption_stun dummy
# reset stun attributes
execute as @a run attribute @s movement_speed base reset
execute as @a run attribute @s minecraft:entity_interaction_range base reset
execute as @a run attribute @s jump_strength base reset
#-----------------reset the corruption part---------------------------------------------------------------
kill @e[tag=corruption_part]

#--------------------victorty scoreboard (for the various scoreboard timers)----------------------------------
scoreboard objectives add victory dummy
scoreboard players set victory_timer victory 20

