local mp = require('mp')

local keys = {"z", }  -- append to `,` bind the key you want

local temp_speed = mp.get_property("speed")

local function update()
	local n = mp.get_property("speed")
	if tonumber(n)==1 then
		mp.set_property("speed", temp_speed)
	elseif  n~=1 then
		temp_speed = mp.get_property("speed")
		mp.set_property("speed", 1)
	end
	local msg = string.format("%.2f",mp.get_property("speed"))
	mp.osd_message("Speed: "..msg)
end

for i, v in pairs(keys) do
	mp.add_key_binding(v, string.format("speed_toggle_%s", i), update)
end
