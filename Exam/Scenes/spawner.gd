extends Control

var amount_To_Spawn: int
var spawn_Array = []

@onready var slider_num = $"CanvasLayer/Panel/Panel/Slider Num"
@onready var h_slider = $CanvasLayer/Panel/Panel/HSlider



@onready var spawning = $CanvasLayer/Panel/Panel/Spawning
@onready var obj = preload("res://Scenes/falling_Object.tscn")
var obj_Instance 


# Called when the node enters the scene tree for the first time.
func _ready():
	amount_To_Spawn = h_slider.value
	slider_num.text = str(h_slider.value)
	obj_Instance = obj.instantiate()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	spawning.add_child(obj_Instance)


func _on_h_slider_value_changed(value):
	amount_To_Spawn = int(value)
	slider_num.text = str(int(value))
	print(value)
