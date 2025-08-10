extends Control

func _on_back_button_pressed() -> void:
	UiController.close_menu()

func _on_a_sub_1_button_pressed() -> void:
	UiController.open_menu("MenuA1")

func _on_a_sub_2_button_pressed() -> void:
	UiController.open_menu("MenuA2")
