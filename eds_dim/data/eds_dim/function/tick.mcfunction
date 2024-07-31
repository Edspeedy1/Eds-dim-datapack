
execute in minecraft:overworld as @a[distance=0..] at @s if score @s _IsCrouching matches 40.. if block ~ ~-1 ~ minecraft:oxidized_copper if block ~ ~2 ~ minecraft:oxidized_copper if block ~ ~3 ~ minecraft:lightning_rod run tag @s add moving_dim
execute as @a[tag=moving_dim] at @s run function eds_dim:to_mining_dim
execute in eds_dim:mining_dim as @a[distance=0..] at @s if score @s _IsCrouching matches 40.. if block ~ ~-1 ~ minecraft:oxidized_copper if block ~ ~2 ~ minecraft:oxidized_copper if block ~ ~3 ~ minecraft:lightning_rod run tag @s add moving_dim
execute as @a[tag=moving_dim] at @s run function eds_dim:to_overworld

execute as @a if score @s _IsCrouching matches 40.. at @s run scoreboard players set @s _IsCrouching 0

execute as @a[tag=build_portal] at @s run scoreboard players set @s _PortalBuilding 2
execute as @a[tag=build_portal] at @s run tag @s remove build_portal
execute as @a[scores={_PortalBuilding=1..}] run scoreboard players add @s _PortalBuilding 1


execute as @a[scores={_PortalBuilding=5..}] at @s run setblock ~ ~ ~ air
execute as @a[scores={_PortalBuilding=5..}] at @s run setblock ~ ~1 ~ air
execute as @a[scores={_PortalBuilding=5..}] at @s run setblock ~ ~-1 ~ oxidized_copper
execute as @a[scores={_PortalBuilding=5..}] at @s run setblock ~ ~2 ~ oxidized_copper
execute as @a[scores={_PortalBuilding=5..}] at @s run setblock ~ ~3 ~ lightning_rod

execute as @a[scores={_PortalBuilding=5..}] run scoreboard players set @s _PortalBuilding 0

execute as @e at @s if biome ~ ~ ~ eds_dim:void run attribute @s minecraft:generic.gravity base set 0.02
execute as @e at @s if biome ~ ~ ~ eds_dim:void run attribute @s minecraft:generic.fall_damage_multiplier base set 0.2
execute as @e at @s if biome ~ ~ ~ eds_dim:void run attribute @s minecraft:generic.safe_fall_distance base set 12

execute as @e at @s if biome ~ ~ ~ #minecraft:is_overworld run attribute @s minecraft:generic.gravity base set 0.08
execute as @e at @s if biome ~ ~ ~ #minecraft:is_overworld run attribute @s minecraft:generic.fall_damage_multiplier base set 1
execute as @e at @s if biome ~ ~ ~ #minecraft:is_overworld run attribute @s minecraft:generic.safe_fall_distance base set 3
execute as @e at @s if biome ~ ~ ~ #eds_dim:is_eds_dim run attribute @s minecraft:generic.gravity base set 0.08
execute as @e at @s if biome ~ ~ ~ #eds_dim:is_eds_dim run attribute @s minecraft:generic.fall_damage_multiplier base set 1
execute as @e at @s if biome ~ ~ ~ #eds_dim:is_eds_dim run attribute @s minecraft:generic.safe_fall_distance base set 3


execute as @a if score @s _IsJumping matches 1.. at @s run execute if block ~ ~-1 ~ minecraft:brewing_stand run execute if items block ~ ~-1 ~ container.* minecraft:redstone unless data block ~ ~-1 ~ {Fuel:0b} run execute if data block ~ ~-1 ~ {Items:[{components:{"minecraft:potion_contents":{potion:"minecraft:thick"}}}]} run function eds_dim:give_haste_potion
execute as @a if score @s _IsJumping matches 1.. at @s run scoreboard players set @s _IsJumping 0

execute as @a[tag=!dashCooldownStarter] run scoreboard players set @s _dashCoolDown 0
execute as @a[tag=!dashCooldownStarter] run tag @s add dashCooldownStarter
execute as @a[scores={_dashCoolDown=1..}] run scoreboard players operation @s _dashCoolDown -= 1 _dashCoolDown
execute as @a[scores={_dashCoolDown=0}] run advancement revoke @s only eds_dim:dash_stick


execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:stick"}}] at @s if block ~ ~ ~ minecraft:enchanting_table run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:lapis_lazuli",count:3}}, distance=..2] run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:tnt",count:3}}, distance=..2] run function eds_dim:give_stick_3
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:stick"}}] at @s if block ~ ~ ~ minecraft:enchanting_table run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:lapis_lazuli",count:2}}, distance=..2] run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:tnt",count:2}}, distance=..2] run function eds_dim:give_stick_2
execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:stick"}}] at @s if block ~ ~ ~ minecraft:enchanting_table run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:lapis_lazuli",count:1}}, distance=..2] run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:tnt",count:1}}, distance=..2] run function eds_dim:give_stick_1