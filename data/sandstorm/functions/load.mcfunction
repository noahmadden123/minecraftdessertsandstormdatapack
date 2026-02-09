# Desert Sandstorm Datapack - Load Function
# Run once on world load

scoreboard objectives add sandstorm_active dummy
scoreboard objectives add sandstorm_timer dummy
scoreboard objectives add sandstorm_chance dummy

function sandstorm:init
tell @s "Desert Sandstorm Datapack loaded successfully!"