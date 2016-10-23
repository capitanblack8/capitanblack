do

local function run(msg, matches)
  local bot_id = 147094511
    if matches[1] == 'leave' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
      send_large_msg("chat#id"..msg.to.id, 'بابام هی میکه اتولیو داره شما بگید نه \n بلاک شدی عمو', ok_cb, false)
      chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
      block_user("user#id"..msg.from.id,ok_cb,false)
    end
end
end
 
return {
  patterns = {
    "^(leave)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
