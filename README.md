# Godot UI Controller Plugin

A simple menu stack system for Godot.  Useful for when your entire game is in one scene but you want to have multiple menus.

## How it Works
The plugin is broken up in two parts, the `UiAnchor` node and the `UiController` autoload.  Place the `UiAnchor` node into your scene tree, then fill in the `Menus` dictionary with a reference of key names and the associated menu scene to load.  After that just call the open and close menu functions to navigate the menu stack.

Under the hood it will instantiate each loaded menu (scene) when it is called and attach it to the `UiAnchor` node, then removes it and all children nodes when the menu is closed.

See the included example project for a more in depth usage guide.

## API Reference
- `UiController.open_menu("MenuName")`:  Opens the menu with the given key name.

- `UiController.close_menu()`:  Closes the current menu and will open the top menu of the stack if one exists.

- `UiController.close_all_menus()`:  Closes all menus (clears the stack).
