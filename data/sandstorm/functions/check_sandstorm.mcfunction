# Check if sandstorm should start

# Random chance every 100 ticks (5 seconds)
scoreboard players add sandstorm_chance sandstorm_chance 1
execute if score sandstorm_chance sandstorm_chance matches 100 run function sandstorm:random_trigger
scoreboard players set sandstorm_chance sandstorm_chance 0