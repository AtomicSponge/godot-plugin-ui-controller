extends Node
## A singleton class that controls which menus are attached on the UiAnchor node.

var _ui_node: Node
var _ui_ref: Array[String]

@export var _menus: Dictionary[String, PackedScene]

## Opensa menu.
## Takes a string name of a menu scene and attaches it to the UiAnchor node.
func open_menu(menu_name: String) -> void:
	_clear_menu_mem()
	_ui_ref.push_back(menu_name)
	_ui_node.add_child(_menus[menu_name].instantiate())

## Close menu
func close_menu() -> void:
	_clear_menu_mem()
	_ui_ref.pop_back()
	if not _ui_ref.is_empty():
		_ui_node.add_child(_menus[_ui_ref.back()].instantiate())

func _clear_menu_mem() -> void:
	for node in _ui_node.get_children():
		_ui_node.remove_child(node)
		node.queue_free()
