extends Node
## A node that the UiController will anchor menus to.
##
## Before calling the UiController members this node needs to be
## placed in the main scene.  After that build the dictionary
## of menus that can be called.

## List of available menus and their according scene files.
## After attaching this node this must be filled in before calling
## UiController.open_menu("menu_name")
@export var _menus: Dictionary[String, PackedScene]

func _ready() -> void:
	UiController._ui_node = self
