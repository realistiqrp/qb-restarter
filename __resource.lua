resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

title 'Restart Announces'
description 'Core Notifications when server will restart, made by txAdmin there events.'
author 'RealistiqRP#6293'

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/nl.lua' -- Change this to your preferred language

}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}