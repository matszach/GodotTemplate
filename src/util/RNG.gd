extends RandomNumberGenerator
class_name RNG

func pick(array: Array) -> Object:
	return array[randi_range(0, array.size() - 1)]
