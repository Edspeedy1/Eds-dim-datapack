# /give @p stick[max_stack_size=1,enchantments={levels:{"eds_dim:dashing":1 }},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000,using_converts_to:{id:"minecraft:stick",count:1}}] 1

execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":3}}}}} run effect give @s minecraft:regeneration 1 1 true
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":2}}}}} run effect give @s minecraft:regeneration 1 1 true
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":1}}}}} run effect give @s minecraft:regeneration 1 1 true

execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":3}}}}} run scoreboard players set @s _dashCoolDown 25
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":3}}}}} run summon creeper ^ ^1.7 ^-0.5 {Invisible:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-10b,Fuse:0s}
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":3}}}}} run summon creeper ^ ^1.7 ^-0.5 {Invisible:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-10b,Fuse:0s}
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":3}}}}} run summon creeper ^ ^1.7 ^-0.5 {Invisible:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-10b,Fuse:0s}

execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":2}}}}} run scoreboard players set @s _dashCoolDown 32
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":2}}}}} run summon creeper ^ ^1.7 ^-0.5 {Invisible:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-10b,Fuse:0s}
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":2}}}}} run summon creeper ^ ^1.7 ^-0.6 {Invisible:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-10b,Fuse:0s}

execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":1}}}}} run scoreboard players set @s _dashCoolDown 48
execute if data entity @s {SelectedItem:{components:{"minecraft:enchantments":{levels:{"eds_dim:dashing":1}}}}} run summon creeper ^ ^1.7 ^-0.5 {Invisible:1b,Silent:1b,Invulnerable:1b,ExplosionRadius:-10b,Fuse:0s}

