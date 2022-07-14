tool
extends "res://addons/sprite_primitives/primitive.gd"

class_name TrianglePrimitive, "res://addons/sprite_primitives/Triangle.png"

export(Vector2) var size = Vector2.ONE

export(bool) var fill = true
export(float) var border_size = 1.0
export(bool) var antialiasing = false

func _draw():
	var actual_offset = offset * Vector2(1, -1)
	
	var points = PoolVector2Array([
		actual_offset + Vector2(0, -(size.y/2)),
		actual_offset + Vector2(-1 - (size.x/2), (size.y - size.y/3)/2),
		actual_offset + Vector2(1 + (size.x/2), (size.y - size.y/3)/2)
		])
	
	if fill:
		draw_colored_polygon(points, color)
	else:
		points.append(points[0])
		draw_polyline(points, color, border_size, antialiasing)


