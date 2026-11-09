extends Camera3D


# How fast the player moves in meters per second.
@export var speed = 14
# The downward acceleration when in the air, in meters per second squared.
@export var fall_acceleration = 75
# Vertical impulse applied to the character upon jumping in meters per second.
@export var jump_impulse = 20
# Vertical impulse applied to the character upon bouncing over a mob in
# meters per second.
@export var bounce_impulse = 16
# Emitted when the player was hit by a mob.
var velocity =  PI
var target_velocity = Vector3.ZERO

func _physics_process(delta):
	var direction = Vector3.ZERO
	$Pivot.rotation.x = PI / 6 * velocity.y / jump_impulse
#ça c pour donner la physique du player (au-dessus)


	#ça c pour les control et les inputs du joueur!!(en-dessous)
	if Input.is_action_pressed("Move_Right"):
		direction.x += 1
	if Input.is_action_pressed("Move_Left"):
		direction.x -= 1
	if Input.is_action_pressed("Move_Backward"):
		direction.z += 1
	if Input.is_action_pressed("Move_Forward"):
		direction.z -= 1
