# here we celabrate the victory of the only survivor (assuming only 1 survivor)
# if there is more than one survivor, a diffrent function will be called.
execute if score tick time matches 2 if score victory_timer victory matches 1.. run scoreboard players remove victory_timer victory 1

#kill the corruption 
kill @e[tag=corruption_part]
# disable the timer
scoreboard players set endgame state 0
# text celebrating the survivor

execute if score tick time matches 3 if score victory_timer victory matches 19 as @a[team=!dead] run tellraw @a [{"selector":"@s"}," is the only survivor at ",{"score":{"objective":"corruption","name":"@s"}},"% corruption"]
execute if score tick time matches 3 if score victory_timer victory matches 17 as @a[team=!dead] run tellraw @a ["you are ",{"text":"beautiful","bold":true}]

# teleport
execute if score tick time matches 3 if score victory_timer victory matches 0 run tp @a @e[tag=lobby,limit=1] 

# and now for the final command... reload the entire simulation, completing the gameplay loop
execute if score tick time matches 3 if score victory_timer victory matches 0 as @a run reload
