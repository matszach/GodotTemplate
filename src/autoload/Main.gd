extends Node

func _ready() -> void:
	Logger.info('game started')
	SaveState.load_data()

func _process(delta: float) -> void:
	print(InputHelper.ui_dir())
