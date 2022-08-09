extends RandomNumberGenerator
class_name RNG

func pick(array: Array) -> Object:
	return array[randi_range(0, array.size() - 1)]

func weighted_pick(array: Array) -> Object:
	var total_weight = 0
	for item in array:
		total_weight += item[0]
	var p = randf_range(0, total_weight)
	for item in array:
		p -= item[0]
		if p <= 0:
			return item
	return null
