local action = function(msg, matches, ln)
    if matches[1] == 'cmute' then
    if msg.reply then
    if is_rankup(1,msg.from.id,msg.reply.from.id,msg.chat.id) then
 client:hset('chat:'..msg.chat.id..'user:'..msg.reply.from.id,'cmuted',msg.from.id)
     api.sendReply(msg,'user cmds muted!')
     else
  api.sendReply(msg,'user is upper rank than you!')  
end
elseif matches[2] then
 local user
 if matches[2]:match('^%d+$') then
user = matches[2]
end
if not user then
    api.sendReply(msg, 'Not Found!')
    return
end
if is_rankup(1,msg.from.id,user,msg.chat.id) then
 client:hset('chat:'..msg.chat.id..'user:'..user,'cmuted',msg.from.id)
    api.sendReply(msg,'user cmds muted!')
else
  api.sendReply(msg,'user is upper rank than you!')  
end
else
  api.sendReply(msg,'use:/cmute <id/username> or /cmute <by reply>!')  
end
elseif matches[1] == 'cunmute' then
    if msg.reply then
    local cmuter = client:hget('chat:'..msg.chat.id..'user:'..msg.reply.from.id,'cmuted')
      if cmuter then
    if is_rankup(1,msg.from.id,msg.reply.from.id,msg.chat.id) then
 client:hdel('chat:'..msg.chat.id..'user:'..msg.reply.from.id,'cmuted')
     api.sendReply(msg,'user cmds unmuted!')
     else
  api.sendReply(msg,'user muter is upper rank than you!')  
end
 else
    api.sendReply(msg,'user not muted!')  
     end
elseif matches[2] then
 local user
 if matches[2]:match('^%d+$') then
user = matches[2]
end
if not user then
    api.sendReply(msg, 'Not Found!')
    return
end
 local cmuter = client:hget('chat:'..msg.chat.id..'user:'..user,'cmuted')
       if cmuter then
if is_rankup(1,msg.from.id,user,msg.chat.id) then
 client:hdel('chat:'..msg.chat.id..'user:'..user,'cmuted',true)
    api.sendReply(msg,'user cmds unmuted!')
else
  api.sendReply(msg,'user muter is upper rank than you!')  
end
 else
    api.sendReply(msg,'user not muted!')  
     end
else
  api.sendReply(msg,'use:/cunmute <id/username> or /cmute <by reply>!')  
end
end

end
local triggers = {
  "^[!/](cmute) (.*)$",
  "^[!/](cmute)$",
  "^[!/](cunmute) (.*)$",
  "^[!/](cunmute)$",
 }
return {
  action = action,
  triggers = triggers
}