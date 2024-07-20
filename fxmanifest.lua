fx_version 'cerulean'
game 'gta5'
author 'l1'
description 'l1-jewelheist'
version '1.0'
shared_scripts {
    '@qb-core/shared/locale.lua',
    '@ox_lib/init.lua',
    'locales/en.lua',
    'config.lua',
}
client_scripts{
    'client/client.lua',
    'client/targets.lua',
}
server_scripts{
    'server/server.lua',
}
lua54 'yes'