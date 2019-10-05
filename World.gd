extends Node

func _ready():
	$Music.play();

func _on_DropFish_timeout():
	print("drop");


func _on_Countdown_stop():
	$Music.stop();


func _on_End_timeout():
	print("DONE!");


func _on_Playagain_pressed():
	get_tree().change_scene("MainMenu.tscn");
