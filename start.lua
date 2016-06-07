do

function run(msg, matches)
local reply_id = msg['id']
local text = 'Welcome to puker TG!\n\n>To get a new pukerTG group, contact a support group:\n https://telegram.me/joinchat/BV9T5j-k9jXIwVSkklpHsg\n\nFor more information, check out our channels:\n\nChannel : @sHtEaM\nSite : coming soon... \n\nUse #superhelp command to show bot commands!!\n\n#Thanks_for_using @pukerTG!'
if matches [1] == '/start' then
    if not is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^[#!/](start)$"
},
run = run
}

end

--By @MehdiHS
