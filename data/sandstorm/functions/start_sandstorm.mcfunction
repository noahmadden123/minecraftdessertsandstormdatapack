# Start the sandstorm event

scoreboard players set sandstorm_active sandstorm_active 1
scoreboard players set sandstorm_timer sandstorm_timer 0

# Notify players
tellraw @a[distance=..100] {"text":"☁️ A sandstorm approaches!","color":"yellow"}

# Play sound
playsound weather.rain ambient @a[distance=..100] ~ ~ ~ 1.0 0.8