extends Node3D


@onready var fps_label: Label = $FPSLabel


func _input(event: InputEvent):
	if event.is_action_pressed("exit"):
		self.get_tree().quit()


func _process(delta: float):
	fps_label.text = "FPS: %f" % Engine.get_frames_per_second()

