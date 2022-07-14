tool
extends "res://addons/sprite_primitives/primitive.gd"

class_name PolygonPrimitive, "res://addons/sprite_primitives/Polygon.png"

export(PoolVector2Array) var local_points = PoolVector2Array([Vector2.ZERO, Vector2.ZERO, Vector2.ZERO])
export(Vector2) var size = Vector2.ONE

export(bool) var fill = true
export(float) var border_size = 1.0
export(bool) var antialiasing = false

func _draw():
	var actual_points = PoolVector2Array([])
	
	for point in local_points:
		actual_points.append(offset + point * size * Vector2(1, -1))
	
	if fill:
		draw_colored_polygon(actual_points, color)
	else:
		actual_points.append(actual_points[0])
		draw_polyline(actual_points, color, border_size, antialiasing)


