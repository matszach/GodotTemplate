extends Object
class_name Iterator

var _items: Array
var _pointer: int = 0

func _init(items: Array):
	 _items = items
	
func current():
	return _items[_pointer]

func next():
	
