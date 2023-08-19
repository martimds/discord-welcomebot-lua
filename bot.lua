local discordia = require("discordia")
local client = discordia.Client()

client:on("ready", function() 
	print("Logado como " .. client.user.username)
end)

client:on('memberJoin', function(member)
    client:getChannel('ID CANAL'):send{
        embed = {
            title = "Bem-vindo(a) " .. member.tag .. "!",
            thumbnail = member.avatarURL,
            description = "Descrição",
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
                text = "Rodapé"
            },
            color = discordia.Color.fromHex('#00ff00').value 
        }
    }
end)

client:on('memberLeave', function(member)
    client:getChannel('ID CANAL'):send{
        embed = {
            title = "Adeus " .. member.tag .. ".",
            thumbnail = member.avatarURL,
            description = "Descrição",
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
                text = "Rodapé"
            },
            color = discordia.Color.fromHex('#ff0000').value 
        }
    }
end)

client:run('Bot TOKEN')
