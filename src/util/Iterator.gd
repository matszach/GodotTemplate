extends Object
class_name Iterator

var _items: Array
var _pointer: int = 0

func _init(items: Array):
	 _items = items
	
func current() -> Object:
	return _items[_pointer]

func next() -> Object:
	_pointer += 1
	if _pointer >= _items.size():
		_pointer = 0
	return current()

func prev() -> Object:
	_pointer -= 1
	if _pointer <= 0:
		_pointer = _items.size() - 1
	return current()
