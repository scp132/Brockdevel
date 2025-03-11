-- Kick the player with the ban message after 1 minute
local function kickPlayer()
    wait(60)  -- Wait for 1 minute
    player:Kick("You were kicked from this game: Account Ban (1042) \nYour account was BANNED because it used cheats, scripts, bots and/or exploits. \nThe ban is PERMANENT and can't be appealed! \n(Error Code: 267)")
