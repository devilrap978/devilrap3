--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀    BY SAJJAD NOORI                   ▀▄ ▄▀ 
▀▄ ▄▀     BY SAJAD NOORI (@SAJJADNOORI)    ▀▄ ▄▀ 
▀▄ ▄▀ JUST WRITED BY SAJJAD NOORI          ▀▄ ▄▀   
▀▄ ▄▀      help dev  : اوامر المطور        ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
do

local function run(msg, matches)
if is_sudo(msg) and matches[1]== "اوامر المطور" then
return [[ ❌🚫اوامر المطورين😊✋
  
♣♦♣♦♣♦♣♦♣♦♣♦
📵❌/add 🔘 أضافة البوت
📵❌/rem 🔘 حذف البوت
📵❌/creategroup🔘صنع 
📵❌/banall🔘حضر عام
📵❌/unbanall🔘فتح العام
📵❌/setowner🔘وضع مشرف
📵❌/broadcast🔘رسالة للجميع
📵❌/setadmin🔘وضع اداري
📵❌/demoteadmin🔘حذف اداري
📵❌/tosuper 🔘تحويل لسوبر
📵❌/type 🔘 لمعرفة نوع المجموعه
📵❌/plugins🔘 لرؤية الملفات
♻️〰〰〰〰〰〰〰〰〰♻️
chanall:-
https://telegram.me/joinchat/AdUWzT-7XOkCrru4caDB4Q

🌟 dev :- @saad7m 💠
]]
end

if not is_sudo(msg) then
return "للمطورين فقط 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(اوامر المطور)"
},
run = run 
}
end