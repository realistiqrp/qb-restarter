Config = Config or {}

Config.RestartSound = true -- Toggles the alarm sound when 1 minute left, by default true.
Config.Shake = true -- Toggles a shake ability when the server is almost restarting.
Config.Rain = true -- Toggles rain on/off when almost restarting, it starts raining but ends with thunder.
Config.SavePlayer = false -- Toggles the extra save for all players when 1 minute is left, by default false. || QBCore will save the player when leave the server.

Config.IntensityShake = 4.5 -- If enabled above, how strong the shake will be.
Config.ShakeType = 'LARGE_EXPLOSION_SHAKE' -- If enabled above, what type of shake will be, check the list at the bottom.

-- DEATH_FAIL_IN_EFFECT_SHAKE
-- DRUNK_SHAKE
-- FAMILY5_DRUG_TRIP_SHAKE 
-- HAND_SHAKE
-- JOLT_SHAKE
-- LARGE_EXPLOSION_SHAKE
-- MEDIUM_EXPLOSION_SHAKE
-- SMALL_EXPLOSION_SHAKE -- Default 
-- ROAD_VIBRATION_SHAKE
-- SKY_DIVING_SHAKE
-- VIBRATE_SHAKE