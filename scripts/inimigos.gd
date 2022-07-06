extends Node2D

const PRE_ASTEROID = preload("res://scenes/asteroid.tscn")
const PRE_EXPLOSION = preload("res://scenes/explosão.tscn")

export(NodePath) var nave


func _ready():
	restartTimer()


func _process(delta):
	pass


func _on_spawn_timer_timeout():
	var ast = PRE_ASTEROID.instance()
	ast.connect("destroied" , self , "on_asteroid_destroied")
	add_child(ast)
	ast.global_position = Vector2(rand_range(40 , 120) , -60)
	restartTimer()
	
func restartTimer():
	$spawn_timer.wait_time = rand_range(.1 , .3)
	$spawn_timer.start()
	
func on_asteroid_destroied(ast):
	var e = PRE_EXPLOSION.instance()
	add_child(e)
	e.global_position = ast.global_position
	get_tree().call_group("hud" , "asteroid_destroied" , ast)
	
	
