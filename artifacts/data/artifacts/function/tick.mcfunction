execute at @a[tag=smoke,limit=1] run execute if score @a[tag=smoke,limit=1] smoke matches 1.. run particle minecraft:explosion_emitter ~ ~ ~ 0.5 0.5 0.5 1 100 normal
execute if score @a[tag=smoke,limit=1] smoke matches 1 run scoreboard players set @a[tag=smoke,limit=1] smoke 0
execute at @a[tag=guard,limit=1] run execute if score @a[tag=guard,limit=1] guard matches 1.. run summon minecraft:iron_golem ~ ~ ~ {Tags:["iron"]}
execute at @a[tag=guard,limit=1] run execute if score @a[tag=guard,limit=1] guard matches 1.. run scoreboard players set @a[tag=guard,limit=1] guard 0
execute as @a[tag=guard,limit=1] run execute if score @a[tag=guard,limit=1] guard matches 1.. run scoreboard players set @a[tag=guard] timer 200
execute as @e[scores={timer=1..}] run scoreboard players remove @s timer 1
execute if score @a[tag=guard,limit=1] timer matches 0 run kill @e[tag=iron]
execute if score @a[tag=guard,limit=1] timer matches 0 run scoreboard players set @a[tag=guard] timer 200