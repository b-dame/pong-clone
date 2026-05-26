extends CharacterBody2D

const SPEED = 225
const IDLE_SPEED = 100

var direction = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var diff = %Ball.position.y - position.y
	if abs(diff) > 5:
		direction = sign(diff)
	else:
		direction = 0.0
	var paddle_velocity = clampf(diff * 5.0, -SPEED,  SPEED)
	if %Ball.linear_velocity.x < 0:
		velocity.y = paddle_velocity
	else:
		velocity.y = direction * IDLE_SPEED
		
	move_and_slide()
