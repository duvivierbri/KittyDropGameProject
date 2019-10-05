extends RichTextLabel
var number = 0;


func _ready():
	show();
	set_bbcode("Score: ");
	


func _on_CAT_hit():
	var value = 10
	number = number + value
	var score_total = str(number)
	set_bbcode("Score: " + score_total)
