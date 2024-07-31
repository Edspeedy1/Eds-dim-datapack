execute as @e[type=minecraft:item, nbt={Item:{id:"minecraft:stick"}}] at @s if block ~ ~ ~ minecraft:enchanting_table run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:lapis_lazuli",count:1}}, distance=..2] run execute if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:tnt",count:1}}, distance=..2] run summon minecraft:item ~ ~ ~ {Item:{components:{"minecraft:max_stack_size":1, "minecraft:enchantments":{levels:{"eds_dim:dashing":1}}, "minecraft:food":{saturation:0.0f, nutrition:0, can_always_eat:1b, eat_seconds: 1000000.0f, using_converts_to: {id: "minecraft:stick"}}}, count:1,id:"minecraft:stick"}}

execute as @e[type=item, distance=..2, nbt={Item:{id:"minecraft:lapis_lazuli",count:1}}] run kill
execute as @e[type=item, distance=..2, nbt={Item:{id:"minecraft:tnt",count:1}}] run kill
kill