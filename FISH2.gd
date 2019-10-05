extends KinematicBody2D
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	hide();
	randomize();

func _physics_process(delta):
	move_and_collide(Vector2(0,4));


func _on_DropFish2_timeout():
	show();
	position = Vector2(rand_range(54,991),97);


func _on_CAT_hidefish2():
	hide();
