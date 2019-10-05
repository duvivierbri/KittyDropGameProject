extends RichTextLabel
var start = 0

func _ready():
	hide();

func _on_End_timeout():
	show();


func _on_CAT_update():
	var n = 10;
	start = start + n;
	var updateit = str(start);
	set_bbcode("Great Job! Your score is: " + updateit);
