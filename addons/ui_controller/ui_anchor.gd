extends Node
## A node that the UiController will anchor menus to.
##
## Before calling the UiController members this node needs to be
## placed in the main scene.

@export var _menus: Dictionary[String, PackedScene]

func _ready() -> void:
	UiController._ui_node = self
