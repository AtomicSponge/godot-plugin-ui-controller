extends Node
## A node that the UiController will anchor menus to.
##
## Before calling the UiController members this node needs to be
## placed in the main scene.

func _ready() -> void:
	UiController._ui_node = self
