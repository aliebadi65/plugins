local function run(msg, matches, callback, extra)

if matches[1] == 'myname' then 
    return ''..string.gsub(msg.from.print_name, "_", " ")
end    
if matches[1] == 'name' then
    return ''..string.gsub(msg.to.print_name, "_", " ")
end
if matches[1] == 'myid' then 
    return ''..msg.from.id
end 
if matches[1] == 'gpid' then 
    return ''..msg.to.id
end
if matches[1] == 'user' then 
    return '@'..msg.from.username
end
if matches[1] == 'pm' then 
    return ''..msg.id
end
if matches[1] == 'msg' then 
    return ''..msg.text
end
if matches[1] == 'phone' then 
    return '+'..msg.from.phone
end
if matches[1] == 'photo' then 
    return 'telegram.me/'..msg.from.username
end
end
return {
  patterns = {
  "^[/!#](myname)$",
  "^[/!#](name)$",
  "^[/!#](mylast)$",
  "^[/!#](myfirst)$",
  "^[/!#](myid)$",
  "^[/!#](gpid)$",
  "^[/!#](user)$",
  "^[/!#](pm)$",
  "^[/!#](msg)$",
  "^[/!#](phone)$",
  "^[/!#](photo)$",
  },
  run = run
}
