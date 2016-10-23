local function run(msg,matches)
if matches[1] == 'reply' and matches[2] then
reply_msg(msg.reply_id,matches[2],ok_cb,false)
end
end

return {
patterns { 
'^[#!/]([Rr]eply) (.*)$',
},
run = run,
}