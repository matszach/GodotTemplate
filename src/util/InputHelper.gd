extends Object
class_name InputHelper

static func ui_dir() -> Vector2:
	return Vector2(
		Input.get_action_strength("ui_right") -
		Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") -
		Input.get_action_strength("ui_up") 
	)
