--// KEY SYSTEM
local VALID_KEY = "SS907-ANONYMOUS9x-KEY-FREE"

--// GAME ROUTER
local SCRIPTS = {
    [10449761463] = "https://raw.githubusercontent.com/Anonymous9x-oss/FullFreeScA9x/refs/heads/main/Maintsb.lua", -- game 1
    [1234567890]  = "LINK_SCRIPT_GAME2",            -- game 2
    [9876543210]  = "LINK_SCRIPT_GAME3"             -- game 3
}

--// MAIN FUNCTION
return function(inputKey)
    
    -- CHECK KEY
    if inputKey ~= VALID_KEY then
        return false
    end

    -- DETECT GAME
    local placeID = game.PlaceId
    local scriptURL = SCRIPTS[placeID]

    if scriptURL then
        loadstring(game:HttpGet(scriptURL))()
    else
        warn("Game not supported")
    end

    return true
end
