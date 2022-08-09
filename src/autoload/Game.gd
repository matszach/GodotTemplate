extends Node

func _ready() -> void:
	Logger.info('game started')
	SaveState.load_data()
