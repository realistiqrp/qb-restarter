local Translations = {
    notify = {
        restart_30 = "Server restarts in 30 minutes!",
        restart_15 = "Server restarts in 15 minutes!",
        restart_10 = "Server restarts in 10 minutes!",
        restart_5 = "Server restarts in 5 minutes!",
        restart_4 = "Server restarts in 4 minutes!",
        restart_3 = "Server restarts in 3 minutes!",
        restart_2 = "Server restarts in 2 minutes!",
        restart_1 = "Server restarts in 1 minute!",
        restart_5sec = "Server restarts in 5 seconds!",
        restart_leavesrv = "LEAVE THE SERVER!!!",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})