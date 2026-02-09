# Update sandstorm effects while active

# Increment timer
scoreboard players add sandstorm_timer sandstorm_timer 1

# Particle effects
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if biome ~ ~ ~ #minecraft:is_desert run particle sand ~ ~2 ~ 5 2 5 0.1 50 normal

# Apply blindness effect gradually
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if biome ~ ~ ~ #minecraft:is_desert run effect give @s blindness 1 0 true

# Wind sound effects
execute if score sandstorm_timer sandstorm_timer matches 0..200 run playsound weather.rain ambient @a[distance=..100] ~ ~ ~ 0.5 0.8

# Stop sandstorm after 600 ticks (30 seconds)
execute if score sandstorm_timer sandstorm_timer matches 600 run function sandstorm:end_sandstorm