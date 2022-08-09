extends Node

var data_url = "user://save_state.save"
var data: Dictionary

func _ready() -> void:
	data = _get_default_data()

func get_default_data_prod() -> Dictionary:
	return {
		# stub
	}
	
func get_default_data_debug() -> Dictionary:
	return {
		# stub
	}
	
func _get_default_data() -> Dictionary:
	return get_default_data_debug() if OS.is_debug_build() else get_default_data_prod()

func reset():
	Logger.info('resetting user data')
	data = _get_default_data()
	save_data()

func save_data():
	Logger.info('saving user data')
	if not OS.is_debug_build():
		var file = File.new()
		file.open(data_url, File.WRITE)
		file.store_var(data, true)
		file.close()
		return self
	
func load_data():
	Logger.info('loading user data')
	if not OS.is_debug_build():
		var file = File.new()
		if file.file_exists(data_url):
			file.open(data_url, File.READ)
			data = file.get_var(true)
		file.close()
		return self
