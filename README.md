# Godot UI Controller Plugin

A a simple menu stack system for Godot.  Useful for when your entire game is in one scene but you want to have multiple menus.

## How it Works
The plugin is broken up in two parts, the `UiAnchor` node and the `UiController` autoload.  Place the `UiAnchor` node into your scene tree, then fill in the `Menus` dictionary with a reference of key names and the associated menu scene to load.

Under the hood it will instantiate each loaded scene when it is called and attaches it to the UiAnchor node, then removes it and all children nodes when the menu is closed.

### API Reference
- `UiController.open_menu("MenuName")`:  Opens the menu with the given key name.

- `UiController.close_menu()`:  Closes the current menu and will open the top menu of the stack if one exists.

- `UiController.close_all_menus()`:  Closes all menus (clears the stack).
