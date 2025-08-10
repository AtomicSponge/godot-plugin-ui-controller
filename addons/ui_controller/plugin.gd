@tool
extends EditorPlugin

const AUTOLOAD_NAME = "UiController"
const NODE_NAME = "UiAnchor"
const PATH = "res://addons/ui_controller/"

func _enter_tree() -> void:
	add_autoload_singleton(AUTOLOAD_NAME, str(PATH + "ui_controller.gd"))
	add_custom_type(NODE_NAME, "Node", preload(PATH + "ui_anchor.gd"), preload(PATH + "icon.svg"))

func _exit_tree() -> void:
	remove_autoload_singleton(AUTOLOAD_NAME)
	remove_custom_type(NODE_NAME)
