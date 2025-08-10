extends Node
## A singleton class that controls which menus are attached on the UiAnchor node.

var _ui_node: Node
var _ui_ref: Array[String]

## Opens a menu.
## Takes a string name of a menu scene and attaches it to the UiAnchor node.
## Also adds it to the stack of open menus.
func open_menu(menu_name: String) -> void:
	_clear_menu_mem()
	_ui_ref.push_back(menu_name)
	_ui_node.add_child(_ui_node._menus[menu_name].instantiate())

## Closes a menu.
## Will open the previous menu if any are left in the stack.
func close_menu() -> void:
	_clear_menu_mem()
	_ui_ref.pop_back()
	if not _ui_ref.is_empty():
		_ui_node.add_child(_ui_node._menus[_ui_ref.back()].instantiate())

## Closes all menus and clears the stack.
func close_all_menus() -> void:
	_clear_menu_mem()
	_ui_ref.clear()

func _clear_menu_mem() -> void:
	for node in _ui_node.get_children():
		_ui_node.remove_child(node)
		node.queue_free()
