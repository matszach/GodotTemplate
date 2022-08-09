extends CanvasLayer
class_name TransitionHandler

var is_transition: bool = false

func _ready() -> void:
	$ColorRect.visible = true
	is_transition = true
	$AnimationPlayer.play_backwards("fade")
	yield($AnimationPlayer, "animation_finished")
	is_transition = false

func transition(next_scene: String) -> void:
	is_transition = true
	$AnimationPlayer.play("fade")
	yield($AnimationPlayer, "animation_finished")
	get_tree().change_scene(next_scene)

func restart() -> void:
	is_transition = true
	$AnimationPlayer.play("fade")
	yield($AnimationPlayer, "animation_finished")
	get_tree().reload_current_scene()
