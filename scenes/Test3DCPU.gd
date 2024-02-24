extends Node3D

@onready var fps_label: Label = $FPSLabel
#@onready var water_mesh: MeshInstance3D = $WaterMesh
#@onready var plane_mesh: PlaneMesh = $WaterMesh.mesh
#@onready var oldState: MeshDataTool = MeshDataTool.new()
#@onready var newState: MeshDataTool = MeshDataTool.new()

class meme:
	var h: float = 0	# water depth
	var H: float = 0	# terrain height
	var u: float = 0	# x velocity
	var w: float = 0	# z velocity


func _input(event: InputEvent):
	if event.is_action_pressed("exit"):
		self.get_tree().quit()


func _process(delta: float):
	fps_label.text = "FPS: %f" % Engine.get_frames_per_second()

