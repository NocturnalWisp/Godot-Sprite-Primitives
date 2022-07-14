tool
extends "res://addons/sprite_primitives/primitive.gd"

class_name RectanglePrimitive, "res://addons/sprite_primitives/Rectangle.png"

export(Vector2) var size = Vector2.ONE

export(bool) var fill = true
export(float) var border_size = 1.0
export(bool) var antialiasing = false

func _draw():
	draw_rect(Rect2(offset - size/2, size), color, fill, border_size, antialiasing)
