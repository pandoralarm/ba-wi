extends ColorRect

var current_vpsize = Vector2.ZERO  # Store last known viewport size

func _ready():
	resize_to_viewport()  # Set size initially

func _process(delta: float) -> void:
	var viewport_size = get_viewport_rect().size
	if current_vpsize != viewport_size:
		resize_to_viewport()

func resize_to_viewport():
	current_vpsize = get_viewport_rect().size
	size = current_vpsize  # Resize ColorRect
	print(current_vpsize)
