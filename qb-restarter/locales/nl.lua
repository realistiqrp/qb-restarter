local Translations = {
    notify = {
        restart_30 = "Server restart binnen 30 minuten!",
        restart_15 = "Server restart binnen 15 minuten!",
        restart_10 = "Server restart binnen 10 minuten!",
        restart_5 = "Server restart binnen 5 minuten!",
        restart_4 = "Server restart binnen 4 minuten!",
        restart_3 = "Server restart binnen 3 minuten!",
        restart_2 = "Server restart binnen 2 minuten!",
        restart_1 = "Server restart binnen 1 minuut!",
        restart_5sec = "Server restart binnen 5 seconden!",
        restart_leavesrv = "VERLAAT DE SERVER!!!",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})