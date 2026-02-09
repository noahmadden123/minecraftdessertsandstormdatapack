# End the sandstorm event

scoreboard players set sandstorm_active sandstorm_active 0
scoreboard players set sandstorm_timer sandstorm_timer 0

# Notify players
tellraw @a[distance=..100] {"text":"The sandstorm has cleared.","color":"green"}

# Clear effects
execute as @a[nbt={Dimension:"minecraft:overworld"}] run effect clear @s blindness