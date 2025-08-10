extends Control


func _on_menu_a_button_pressed() -> void:
	UiController.open_menu("MenuA")

func _on_menu_b_button_pressed() -> void:
	UiController.open_menu("MenuB")

func _on_menu_c_button_pressed() -> void:
	UiController.open_menu("MenuC")
