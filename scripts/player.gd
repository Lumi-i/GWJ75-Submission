extends CharacterBody2D

var speed = 500

@onready var hitbox: Area2D = $Hitbox

func _ready():
	pass

func _physics_process(delta: float) -> void:
	manage_movement()



func manage_movement():
	var input_vector = Vector2()
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector = input_vector.normalized()

	velocity.x = input_vector.x * speed
	move_and_slide()
