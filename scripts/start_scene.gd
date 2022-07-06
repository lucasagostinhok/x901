extends Node2D

var opcao = 0
var blinks = 0

func _process(delta):
	
	if Input.is_action_just_pressed("ui_down"):
		opcao += 1
	
	if Input.is_action_just_pressed("ui_up"):
		opcao -= 1
		
	if opcao < 0:
		opcao = $itens.get_child_count() - 1
	
	if opcao > $itens.get_child_count() - 1:
		opcao = 0
	
	if Input.is_action_just_pressed("ui_accept"):
		set_process(false)
		match opcao:
			0:
				$timer_blink.start()
				$start.play()
			1:
				get_tree().quit()
	
	$seta.global_position = $itens.get_child(opcao).global_position + Vector2(-13 , 8)


func _on_timer_blink_timeout():
	blinks += 1
	$itens/start.visible = not $itens/start.visible
	
	if blinks > 10:
		get_tree().change_scene("res://scenes/game.tscn")
