-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

local callback = false

-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

Open = function(header,style,cb)
  callback = cb
  SetNuiFocus(true,true)
  SendNUIMessage({
    type   = ("open"),
    header = (header or "Input"),
    style  = (style or "Native")
  })
end

-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

Posted = function(data)
  SetNuiFocus(false,false)
  if callback then
    callback(data.message)
  end
end

-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

RegisterNUICallback('post', Posted)

-- Leaked By: Leaking Hub | J. Snow | leakinghub.com

AddEventHandler('Input:Open',Open)
exports("Open",Open)


-- Leaked By: Leaking Hub | J. Snow | leakinghub.com