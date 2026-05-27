extends RigidBody2D

var linear_velocity_positive_floor = 350.0
var linear_velocity_negative_floor = -350.0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _integrate_forces(_state):
	if linear_velocity.x > 0:
		linear_velocity.x = linear_velocity_positive_floor + .5
		linear_velocity_positive_floor = linear_velocity.x
	else:
		linear_velocity.x = linear_velocity_negative_floor - .5
		linear_velocity_negative_floor = linear_velocity.x

	if $"../PlayerPaddle".velocity.y > 0:
		angular_velocity = randi_range(-5, -20)
	elif $"../PlayerPaddle".velocity.y < 0:
		angular_velocity = randi_range(5, 20)
	else:
		angular_velocity = 0
