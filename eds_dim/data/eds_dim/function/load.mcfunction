
tellraw @a {"text":"redoing..."}

scoreboard objectives remove _IsCrouching
scoreboard objectives add _IsCrouching minecraft.custom:minecraft.sneak_time

scoreboard objectives remove _IsJumping
scoreboard objectives add _IsJumping minecraft.custom:minecraft.jump

scoreboard objectives remove _dashCoolDown
scoreboard objectives add _dashCoolDown dummy
scoreboard players set 1 _dashCoolDown 1
execute as @a[tag=dashCooldownStarter] run tag @s remove dashCooldownStarter

scoreboard objectives remove _PortalBuilding
scoreboard objectives add _PortalBuilding dummy
