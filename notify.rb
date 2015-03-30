require 'libnotify'


 while true    
	n = Libnotify.new do |notify|
	  notify.summary    = "Time"
	  notify.body       = Time.now.strftime("%d/%m/%Y %I:%M%p")  
	  notify.timeout    = 1.5         # 1.5 (s), 1000 (ms), "2", nil, false
	  notify.urgency    = :critical   # :low, :normal, :critical
	  notify.append     = false       # default true - append onto existing notification
	  notify.transient  = true        # default false - keep the notifications around after display
	  notify.icon_path  = "/home/qbadmin/Desktop/hobby/gun.jpg"
	end
	n.show!
	sleep 60
end
