extends TextureButton

func _ready():
	hide();


func _on_End_timeout():
	show();
