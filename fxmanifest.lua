fx_version "cerulean"

author "Fazycks"
games {"gta5"}
lua54 "yes"

client_scripts {
    "src/RageUI.lua",
	"src/Menu.lua",
	"src/MenuController.lua",
	"src/components/*.lua",
	"src/elements/*.lua",
	"src/items/*.lua",
	"src/panels/*.lua",
	
	"client/cl_main.lua",
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"server/sv_main.lua",
}

shared_scripts {
    "config.lua",
    "locales/*.lua",
    "trad.lua",
}