local mp = require('mp')
local control_key = "z"
local save_speed = mp.get_property("speed")
mp.add_key_binding(control_key, "speed_toggle", function()
	local n = mp.get_property("speed")
	if tonumber(n)==1 then
		mp.set_property("speed", save_speed)
	elseif  n~=1 then
		save_speed = mp.get_property("speed")
		mp.set_property("speed", 1)
	end
	local msg = string.format("%.2f",mp.get_property("speed"))
	mp.osd_message("Speed: "..msg)
end)
