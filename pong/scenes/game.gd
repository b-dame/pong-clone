extends Node2D

var player_score = 0
var opponent_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_opponent_score_boundary_body_entered(body):
	opponent_score += 1
	print("Opponent Scored! -- CPU:", opponent_score, " You:", player_score)
	

func _on_player_score_boundary_body_entered(body):
	player_score += 1
	print("You Scored! -- CPU:", opponent_score, " You:", player_score)
