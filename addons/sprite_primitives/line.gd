tool
extends "res://addons/sprite_primitives/primitive.gd"

class_name LinePrimitive, "res://addons/sprite_primitives/Line.png"

export(float) var size = 1

export(Vector2) var point1 = Vector2(0, -1)
export(Vector2) var point2 = Vector2(0, 1)

export(float) var thickness = 1
export(bool) var antialiasing = false

func _draw():
	draw_line(offset + point1 * size * Vector2(1, -1), offset + point2 * size * Vector2(1, -1), color, thickness, antialiasing)
