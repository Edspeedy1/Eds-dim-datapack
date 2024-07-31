execute in eds_dim:mining_dim as @a[tag=moving_dim] run tp @s ~ ~ ~
execute as @a[tag=moving_dim] run tag @s add build_portal

execute in eds_dim:mining_dim as @a[tag=moving_dim] at @s run tag @s remove moving_dim
execute as @a if score @s _IsCrouching matches 20.. at @s run scoreboard players set @s _IsCrouching 0