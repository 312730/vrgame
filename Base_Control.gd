extends Control

onready var sphere_count_label = $Label_Sphere_Count

func _ready():
	get_tree().root.get_node("Game").sphere_ui = self

func update_ui(sphere_count):
	if sphere_count > 0:
		sphere_count_label.text = str(sphere_count) + " Objetivos restantes"
	else:
		sphere_count_label.text = "Ya no hay esferas!"
