To run:
* Create the file .env that contains the token for your bot
  DISCORD_TOKEN=TOKEN
  If you're running on anywhere other than Hackeholken (or irc.dtek.se moves off of hackeholken), the Server ip must be updated in matterbridge.toml

* Run docker-compose -d up

----------------------------
Why didn't I use the existing docker images provided by the matterbridge project?
They just refused to work, that's it.

Why put the discord token in an .env file?
Because we probably shouldn't post the token on github...

Why is it called discord.clipboard?
Because I was testing against my clipboard server

