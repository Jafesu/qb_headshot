fx_version 'cerulean'
game 'gta5'

author 'EzekielJ Development Services'
description 'Capture player headshots and save them in the database'
version '1.0.0'

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}
