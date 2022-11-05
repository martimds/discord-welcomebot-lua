local discordia = require("discordia")
local client = discordia.Client()

client:on("ready", function() 
	print("Logado como " .. client.user.username)
end)

client:on('memberJoin', function(member)
    client:getChannel('1035291481927319552'):send{
        embed = {
            title = "Bem-vinde " .. member.tag .. "!",
            thumbnail = member.avatarURL,
            description = "ao fvckin crazy server",
            thumbnail = {
                url = member.avatarURL,
                height = 50,
                width = 50,
            },
            author = {
                name = member.username,
                icon_url = member.avatarURL
            },
            footer = {
                text = "feito pela juli winner!!!"
            },
            color = discordia.Color.fromHex('#00ff00').value 
        }
    }
end)

client:on('memberLeave', function(member)
    client:getChannel('1035291481927319552'):send{
        embed = {
            title = "Adeus " .. member.tag .. ".",
            thumbnail = member.avatarURL,
            description = "seu merda lixo otario",
            thumbnail = {
                url = member.avatarURL,
                height = 50,
                width = 50,
            },
            author = {
                name =member.username,
                icon_url = member.avatarURL
            },
            footer = {
                text = "feito pela juli winner!!!"
            },
            color = discordia.Color.fromHex('#ff0000').value 
        }
    }
end)

client:run('Bot TOKEN')