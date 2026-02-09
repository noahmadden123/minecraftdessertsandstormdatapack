# Main tick function - runs every game tick

# Check for sandstorm trigger in desert biomes
execute as @a[nbt={Dimension:"minecraft:overworld"}] at @s if biome ~ ~ ~ #minecraft:is_desert run function sandstorm:check_sandstorm

# If active, update effects
execute if score sandstorm_active sandstorm_active matches 1 run function sandstorm:update_sandstorm