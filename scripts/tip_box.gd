tool
extends Node2D

export var width = 50 setget set_width
export var height = 50 setget set_height

func _ready():
	pass


func set_width(val):
	width = val
	update()

func set_height(val):
	height = val
	update()
