extends Control


export (String, FILE, "*.tscn") var Level0
export (String, FILE, "*.tscn") var Level1
export (String, FILE, "*.tscn") var Level2

onready var Levels = get_tree().get_nodes_in_group("LEVELS")
onready var StorageData = $"/root/GameData".get_setting("GAME_LEVELS","GAME_UNLOCKED_LEVEL")

func _ready():
	$"/root/GameData".LoadValues()
	StorageData += 2
	
	for i in range(StorageData,Levels.size()):
		Levels[i].disabled = true

func _on_Level0_pressed():
	if get_tree().change_scene(Level0)!= OK:
		print('An Error Occured')

func _on_Level1_pressed():
	if get_tree().change_scene(Level1)!= OK:
		print('An Error Occured')

func _on_Level2_pressed():
	if get_tree().change_scene(Level2)!= OK:
		print('An Error Occured')
