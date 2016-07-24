--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ 
      #CODS CREATED By ~ @JALAL_ALDON 
      please join to Channel Oscar Team @OSCARTEAMM
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]]
do 

local function run(msg, matches) 
 local r = get_receiver(msg) 
  if matches[1] == "ضع الترحيب" then 
     local welcome = 'mate:'..msg.to.id 
     redis:set(welcome, matches[2]) 
     return "تم وضع الترحيب في المجموعة".."\n"..msg.to.title.."\n\n"..matches[2] 

  elseif matches[1] == "حذف الترحيب" then 
     local welcome = 'mate:'..msg.to.id 
     redis:del(welcome) 
     return "تم ازالة الترحيب في المجموعه"..msg.to.title 
  elseif matches[1] == "الترحيب" then 
     local welcome = 'mate:'..msg.to.id 
     send_large_msg(r, "الترحيب الخاص في المجموعة~\n["..msg.to.title.."]".."\n\n"..redis:get(welcome)) 

end 
  local welcome = 'mate:'..msg.to.id 
  if matches[1] == "chat_add_user" then 
     send_large_msg(r, "مرحبا بك ~["..msg.action.user.first_name.."]".."\n".."انت في~["..msg.to.title.."]".."\n".."اضافك~["..msg.from.first_name.."]".."\n قناة خاصة بالبوت @AlDonZ".."\n\n"..redis:get(welcome)) 
--by @JALAL_ALDON
  elseif matches[1] == "chat_add_user_link" then 
     send_large_msg(r, "مرحبا بك ~["..msg.from.first_name.."]".."\n".."انت في~["..msg.to.title.."]".."\n".. "لقد قمت بالدخول بستخدام رابط الدعوه".."\n قناة خاصة بالبوت @AlDonZ".."\n\n"..redis:get(welcome)) 
end 
end 

return { 
  patterns = { 
       "^[!/#](ضع الترحيب) (.*)$", 
       "^[!/#](حذف الترحيب)$", 
       "^[!/#](الترحيب)$", 
       "^!!tgservice (chat_add_user)$", 
       "^!!tgservice (chat_add_user_link)$" 
  }, 
  run = run, 
} 

end
--by @JALAL_ALDON