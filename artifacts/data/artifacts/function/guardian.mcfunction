give @s minecraft:carrot_on_a_stick[item_model="minecraft:poppy", lore=["Ted's Artifacts"], enchantments={protection:3}, item_name="Spirit of the Guardian"]
scoreboard objectives add guard minecraft.used:minecraft.carrot_on_a_stick guard
scoreboard players add @s guard 0
tag @s add guard