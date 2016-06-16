local discordia = require('discordia')
local client = discordia.Client:new()

-- Settings
local Admins = { ["189513922808774656"] = true,
["179201489363795968"] = true } 
local Creator = { ["179201489363795968"] = true }

-- Client Starts
client:on('ready', function()

	p(string.format('Logged in as %s', client.user.username))
end)

-- Creator Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=test' then
		message.channel:sendMessage(string.format(' ``` JBot:Online ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=servers' then
		message.channel:sendMessage(string.format(' ``` Current Servers: 2 ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Creator[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=stats' then
		message.channel:sendMessage(string.format(' ``` Name: JBot#7214. Bot: Yes. Desc: Multipurpose bot used to moderator servers or provide fun commands for you and your server. Language: Lua. Framework: Luvit. Lib: Discordia. Lib Creator: Sinister Rectus. Region: World. Version: 1.2.5. Updated: Yes. Updates: No. ```, %s', message.author:getMentionString()))
		end
	end
end)

-- Admin Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=kick' then
		for _, member in pairs(message.mentions.members) do
		message.channel:sendMessage(string.format('%s has been kicked!', message.author:getMentionString()))
		member:kick()
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=ban' then
		for _, member in pairs(message.mentions.members) do
		message.channel:sendMessage(string.format('%s has been banned!', message.author:getMentionString()))
		member:ban(message.server)
			end
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=admins' then
		message.channel:sendMessage(string.format(' ``` Admin List: 189513922808774656/Katyusha ```, %s', message.author:getMentionString()))
		end
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	if Admins[message.author.id] == true then 
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=creator' then
		message.channel:sendMessage(string.format(' ``` Creator: 179201489363795968/sanjay2003rbx   ```, %s', message.author:getMentionString()))
		end
	end
end)

-- Normal User Commands
client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=cmds' then
		message.channel:sendMessage(string.format(' ``` Comamnds: @Creator: =test, =servers, =stats @Admin: =kick <@user>, =ban <@user>, =admins, =creator @Free: =cmds, =joke, =invite, prefix, =about, =home, =new ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=joke' then
		message.channel:sendMessage(string.format(' ``` Who has 4 legs and utterly austistic? Your mum. ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=new' then
		message.channel:sendMessage(string.format(' ``` Current Version 1.2.5: Added "=home" and "=new" commands! Fixed bugs and cleaned up code. ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=invite' then
		message.channel:sendMessage(string.format(' ``` Hey! I knew you wanted me in your server. Click the link and add me to any server you want! For admin functions, enable all permissions and create a roleset on the account and name it anything. Then, make sure my roleset is the highest! Anyway, heres my invite link: ``` https://discordapp.com/oauth2/authorize?client_id=188832852270383106&scope=bot&permissions=0 , %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=home' then
		message.channel:sendMessage(string.format(' ``` Want to talk to the people that made me and work to keep me moving? Join this server! link: ``` https://discord.gg/011CUVhYmwGGk6d8H , %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == 'prefix' then
		message.channel:sendMessage(string.format(' ``` The prefix is a "=" also known universally as a equal sign! Chat =cmds for a list of commands.  ```, %s', message.author:getMentionString()))
		
	end
end)

client:on('messageCreate', function(message)
	if message.author == client.user then return end
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content
	if cmd == '=about' then
		message.channel:sendMessage(string.format(' ``` JBot is a multi-service bot created by sanjay2003rbx. Simply written in Lua using the Discordia Library. Deemed as the 1st complex bot written via the Discordia Lib, and does its best to uphold that mantle! As you can imagine, its features are vast! Supports Admin features, fun commands, Bot Stats, and others! JBot is always updating so be sure to have it in your server today!  ```, %s', message.author:getMentionString()))
		
	end
end)




client:run('MTg4ODMyOTE0NjM5ODE0NjU2.CkOQUw.m61_fQf6ryN22t1_VXE74iyV1-8') 
-- Client Ran