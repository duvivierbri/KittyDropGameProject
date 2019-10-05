extends KinematicBody2D
signal hit
signal hidefish
signal hidefish2
signal hidefish3
signal update

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(5,0));
		
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-5,0));

func _on_fish_area_entered(area):
	emit_signal("hit");
	print("yay!");
	emit_signal("hidefish");
	$gf.play();
	emit_signal("update");

func _on_Area2D_area_entered(area):
	emit_signal("hit");
	print("wohoo!");
	emit_signal("hidefish2");
	$gf.play()
	emit_signal("update");

func _on_fish3_area_entered(area):
	emit_signal("hit");
	print("YASSS!");
	emit_signal("hidefish3")
	$gf.play();
	emit_signal("update");
