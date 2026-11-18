extends Camera3D

@export var acceleration = 25.0
@export var moveSpeed = 5.0
@export var mouseSpeed = 300

var velocity = Vector3.ZERO
var lookAngles = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	##ça sa sert à savoir jusqu'où la caméra peut regarder en haut et en bas
	lookAngles.y = clamp(lookAngles.y, PI / -2, PI / 2)
	set_rotation(Vector3(lookAngles.y, lookAngles.x, 0))
	
	
	

func _input(event):
	## ça c pour la mouse rotation
	if event is inputEventMouseMotion:
		lookAngles -= event.relative / mouseSpeed
