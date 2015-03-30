require 'libnotify'
require 'json'

file = File.read('/home/qbadmin/Desktop/hobby/time-notifier/dictionary-master/dictionary.json')
data_hash = JSON.parse(file)

 

 while true 
 	key = data_hash.keys[rand(0..86035)]   
	n = Libnotify.new do |notify|
	  notify.summary    = key
	  notify.body       = data_hash[key]
	  notify.timeout    = 1.5        # 1.5 (s), 1000 (ms), "2", nil, false
	  notify.urgency    = :critical   # :low, :normal, :critical
	  notify.append     = false       # default true - append onto existing notification
	  notify.transient  = true        # default false - keep the notifications around after display
	  notify.icon_path  = "/home/qbadmin/Desktop/hobby/gun.jpg"
	end
	n.show!
	sleep 60
end
