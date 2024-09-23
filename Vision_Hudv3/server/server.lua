-- Made By Benni (Vision-Service) with <3 for the Community.

SetConvarServerInfo('tags', 'Vision-Scripts')

ESX.RegisterServerCallback('vision_hudv2:getaccounts', function(src, cb)
	local xPlayer = ESX.GetPlayerFromId(src)
  local accounts = {
    ['bank'] = xPlayer.getAccount('bank').money,
    ['money'] = xPlayer.getMoney()
  }
  cb(accounts)
end)
