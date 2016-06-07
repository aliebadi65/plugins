do
--_____ _     _       _    
--|_   _| |__ (_)_ __ | | __
 -- | | | '_ \| | '_ \| |/ /
 -- | | | | | | | | | |   < 
 -- |_| |_| |_|_|_| |_|_|\_\
 -- _____                    
--|_   _|__  __ _ _ __ ___  
--  | |/ _ \/ _` | '_ ` _ \ 
 -- | |  __/ (_| | | | | | |
 -- |_|\___|\__,_|_| |_| |_|
 -- #Sudoers :
--  #SikTirMirza
 -- #MamadZaq
 -- #Silencer
  --AllRight Reserved
local siktirmirza = 205906514
local mamad = 197020214
local danial = 150127786
function run(msg, matches)
  if is_sudo(msg) and not msg.from.id  == tonumber(siktirmirza) and not msg.from.id == tonumber(mamad) and not msg.from.id == tonumber(danial) then
  return 'تو بابامی دیگه :|'
  elseif msg.from.id == tonumber(danial) then
  return '😂به به دانیال چقد عوض شدی'
  elseif msg.from.id  == tonumber(siktirmirza) then
  return '😂تو که سیکتیر میرزای خودمونی !'
  elseif msg.from.id == tonumber(mamad) then
  return '😂عه این که ممده'
  elseif is_admin(msg) then
  return '😂تو یکی از ادمینامی !'
  elseif is_momod(msg) then
  return '😂تو یکی از مدیرامی'
  else
  return '😂تو یک کاربری'
  end
end

return {
  patterns = {
    "^من کیم ؟$",
	"^من$",
	"^[Mm][Ee]$",
	"^/me"
  }, 
  run = run 
}

end