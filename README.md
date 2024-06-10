# qb_headshot
### A Simple resource that creates Player headshots using [MugShotBase64](https://github.com/BaziForYou/MugShotBase64) and saves them to the Player Database

## Dependencies
 - [ox_lib](https://github.com/overextended/ox_lib)
 - [OXMysql](https://github.com/overextended/oxmysql)
 - [MugShotBase64](https://github.com/BaziForYou/MugShotBase64)


Add this line into qb-mulichatacter client/main.lua @ Line 118
```lua
exports['qb_headshot']:TakePlayerHeadshot()
```

Example
```lua
RegisterNetEvent('qb-multicharacter:client:closeNUI', function()
    DeleteEntity(charPed)
    SetNuiFocus(false, false)
    exports['qb_headshot']:TakePlayerHeadshot()
end)
```