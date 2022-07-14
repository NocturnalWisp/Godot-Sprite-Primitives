tool
extends "res://addons/sprite_primitives/primitive.gd"

class_name MultiLinePrimitive, "res://addons/sprite_primitives/MultiLine.png"

export(float) var size = 1

export(PoolVector2Array) var local_points = PoolVector2Array([Vector2(0, -1), Vector2(0, 1)])

export(float) var thickness = 1
export(bool) var antialiasing = false

func _draw():
	var actual_points = PoolVector2Array([])
	
	var i = 0
	
	for point in local_points:
		var new_point = offset + point * size * Vector2(1, -1)
		
		actual_points.append(new_point)
		
		# Connect lines by ends, don't create seperated lines.
		if i != 0:
			actual_points.append(new_point)
		
		i += 1
	
	print(actual_points)
	
	draw_multiline(actual_points, color, thickness, antialiasing)
