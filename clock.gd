extends Label

var hour = 19
var minute = 0.0
var minutes_per_second = 0.3


func _process(delta):
	minute += delta * minutes_per_second

	if minute >= 60:
		minute -= 60
		hour += 1

	if hour >= 24:
		hour = 0

	self.text = "%02d:%02d" % [hour, int(minute)]
