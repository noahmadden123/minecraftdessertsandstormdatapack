# Randomly trigger sandstorm (20% chance)

scoreboard players set @s sandstorm_random dummy
execute if predicate sandstorm:twenty_percent run function sandstorm:start_sandstorm