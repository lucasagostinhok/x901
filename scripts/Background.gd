extends Sprite

var des = 0
export(NodePath) var nave

var time = 0.0

func _ready():
	if nave:
		nave = get_node(nave)
	else:
		set_process(false)


func _process(delta):
	time += delta
	material.set_shader_param("des" , (nave.global_position.x - 80) * 0.005)
	material.set_shader_param("time" , time )
