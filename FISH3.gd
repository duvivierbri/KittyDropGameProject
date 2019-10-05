extends KinematicBody2D

func _ready():
	hide();
	randomize();

func _physics_process(delta):
	move_and_collide(Vector2(0,4));

func _on_DropFish3_timeout():
	show();
	position = Vector2(rand_range(54,991),97);


func _on_CAT_hidefish3():
	hide();
