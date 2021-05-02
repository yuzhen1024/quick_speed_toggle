control_key = "z"
save_speed = mp.get_property("speed")
function speed_toggle(n)
	if tonumber(n)==1 then
		mp.set_property("speed", save_speed)
	elseif  n~=1 then
		save_speed = mp.get_property("speed")
		mp.set_property("speed", 1)
	end
	msg = string.format("%.2f",mp.get_property("speed"))
	mp.osd_message("Speed: "..msg)
end
mp.add_key_binding(control_key, "speed_toggle", function() speed_toggle(mp.get_property("speed")) end)
