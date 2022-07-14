tool
extends Node2D

export(bool) var editor_refreshing = true
export(bool) var play_refreshing = false

export(bool) var refresh = false setget refresh

export(Vector2) var offset = Vector2.ZERO

export(Color) var color = Color.white

func _process(_delta):
	if Engine.editor_hint && editor_refreshing || (not Engine.editor_hint) && play_refreshing:
		update()

func refresh(_p = null):
	update()
