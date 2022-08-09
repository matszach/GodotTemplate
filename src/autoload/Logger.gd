extends Node

enum Level {
	ERROR = 4, 
	WARN = 3, 
	INFO = 2, 
	DEBUG = 1, 
	TRACE = 0,
	NONE = -1
}

var level: int = self.Level.DEBUG

func set_level(level: int):
	self.level = level

func _log(level: int, name: String, content: String):
	if level >= self.level:
		print('[%s]: %s' % [name, content])

func trace(content: String):
	_log(self.Level.TRACE, 'TRACE', content)

func debug(content: String):
	_log(self.Level.DEBUG, 'DEBUG', content)

func info(content: String):
	_log(self.Level.INFO, 'INFO', content)

func warn(content: String):
	_log(self.Level.WARN, 'WARN', content)

func error(content: String):
	_log(self.Level.ERROR, 'ERROR', content)
