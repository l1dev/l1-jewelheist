# l1-jewelheist
Vangelico robbery for QBCore

## Preview:
https://streamable.com/xjtms0

## Dependencies  
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)
- [ox_doorlock](https://github.com/overextended/ox_doorlock)
- [ox_lib](https://github.com/overextended/ox_lib)
- [ps-dispatch](https://github.com/Project-Sloth/ps-dispatch)
- [boii-minigames](https://github.com/boiidevelopment/boii_minigames)

## Insert to sql for doorlock
```lua
INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES (453, 'kuyumcu', '{"maxDistance":2,"doors":[{"model":1425919976,"heading":306,"coords":{"x":-631.9553833007813,"y":-236.33326721191407,"z":38.2065315246582}},{"model":9467943,"heading":306,"coords":{"x":-630.426513671875,"y":-238.4375457763672,"z":38.2065315246582}}],"autolock":3700,"coords":{"x":-631.19091796875,"y":-237.38540649414063,"z":38.2065315246582},"state":1,"items":[{"name":"security_card_01","remove":true}]}'); 
