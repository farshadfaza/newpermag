--begin
local function run(msg, matches)
  if is_sudo(msg) then
 if matches[1]:lower() == "send" and matches[2] and matches[3] then
  local send_file = "./"..matches[2].."/"..matches[3]
  tdcli.sendDocument(msg.chat_id_, msg.id_,0, 1, nil, send_file, 'Creator @NinjaHacker')
 end
 if matches[1]:lower() == "plug" and matches[2] then
     local plug = "./plugins/"..matches[2]..".lua"
  tdcli.sendDocument(msg.chat_id_, msg.id_,0, 1, nil, plug, 'Creator @NinjaHacker')
    end
  end
end

return {
  patterns = {
  "^[!/#]([Ss][Ee][Nn][Dd]) (.*) (.*)$",
  "^[!/#]([Pp][Ll][Uu][Gg]) (.*)$"
  },
  run = run
}