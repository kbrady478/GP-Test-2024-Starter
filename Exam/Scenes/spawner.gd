extends Control

var amount_To_Spawn: int

@onready var slider_num = $"CanvasLayer/Panel/Panel/Slider Num"
@onready var h_slider = $CanvasLayer/Panel/Panel/HSlider


# Called when the node enters the scene tree for the first time.
func _ready():
	amount_To_Spawn = h_slider.value
	slider_num.text = str(h_slider.value)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	pass # Replace with function body.


func _on_h_slider_value_changed(value):
	amount_To_Spawn = int(value)
	slider_num.text = str(int(value))
	print(value)
