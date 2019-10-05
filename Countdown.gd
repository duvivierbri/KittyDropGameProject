extends RichTextLabel
var start_seconds = 30;
signal stop;

func _ready():
	set_bbcode("30");
	
func _on_CountdownTimer_timeout():
	start_seconds = start_seconds - 1;
	var seconds = str(start_seconds);
	set_bbcode(seconds)
	
	if start_seconds == 0:
		set_bbcode("Times Up!");
		emit_signal("stop");
