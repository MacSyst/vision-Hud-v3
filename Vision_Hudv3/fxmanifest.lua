-- Made By Benni (Vision-Service) with <3 for the Community.

fx_version 'cerulean'
game 'gta5'

description 'Vision_Hud V3'
author 'benrizzz'

version '1.0.1'

lua54 'yes'

shared_script '@es_extended/imports.lua'

ui_page 'ui/index.html'

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua'
}

files {
    'ui/style.css',
    'ui/script.js',
    'ui/index.html'
}
