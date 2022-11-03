extends Node2D

export var GameLevel = 0
export (String, FILE, "*.tscn") var MainMenu

func _ready():
	Level_Validation()

func Level_Validation():
	if $"/root/GameData".get_setting("GAME_LEVELS","GAME_UNLOCKED_LEVEL") <= GameLevel:
		$"/root/GameData".set_setting("GAME_LEVELS","GAME_UNLOCKED_LEVEL",GameLevel)
	$"/root/GameData".SaveValues()

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		if get_tree().change_scene(MainMenu)!= OK:
			print('An Error Occured')
