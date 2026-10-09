give @s minecraft:carrot_on_a_stick[item_model="minecraft:tnt", lore=["Ted's Artifacts"], enchantments={blast_protection:3}, item_name="Smoke Machine"] 1
scoreboard objectives add smoke minecraft.used:minecraft.carrot_on_a_stick smoke
scoreboard players add @s smoke 0
tag @s add smoke