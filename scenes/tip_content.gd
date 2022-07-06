extends Node2D

signal timeout

const TIME_PERIOD = 1000.0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func changeLabel(info):
	var label = get_node("Label")
	label.set_text(info)
	
	
# Called when the node enters the scene tree for the first time.
func _ready():	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	changeLabel("As galáxias são formadas por diversos elementos cósmicos, como gases e estrelas")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("Você sabia que a vizinha mais famosa da Via Láctea é a galáxia de Andrômeda")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("Você sabia que a maioria das grandes galáxias possui buracos negros no seu centro.")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("Você sabia que a galáxia a qual vivemos se chama Via Láctea")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("As galáxias evoluem com o passar do tempo, podendo até se unirem")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("As galáxias elipticas possuem forma circular e achatada")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("As galáxias espirais possuem uma forma parecida com um disco")
	yield(get_tree().create_timer(5.0), "timeout")
	changeLabel("As galáxias irregulares não possuem um formato definido")
	pass
