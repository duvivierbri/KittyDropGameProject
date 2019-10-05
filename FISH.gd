extends KinematicBody2D
signal get

func _ready():
	hide(); #bang
	randomize(); #this ensures when the fish generates, it doesnt choose the same position sequences every time!!
	print(position);
	
func _physics_process(delta):
	move_and_collide(Vector2(0,4));

func _on_DropFish_timeout():
	show();
	position = Vector2(rand_range(54,991),97);


func _on_CAT_hidefish():
	hide();