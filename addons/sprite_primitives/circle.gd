tool
extends "res://addons/sprite_primitives/primitive.gd"

class_name CirclePrimitive, "res://addons/sprite_primitives/Circle.png"

export(float) var radius = 1

export(bool) var fill = true
export(float) var border_size = 1.0
export(bool) var antialiasing = false
export(int) var segment_count = 32

func _draw():
	if fill:
		draw_circle(offset, radius, color)
	else:
		draw_arc(offset, radius, 0, 2*PI, segment_count, color, border_size, antialiasing)
