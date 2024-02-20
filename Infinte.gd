extends TileMap

var road_tileset = preload("res://Infinte.gd") # Replace with your road tileset path
var tile_size = Vector2(32, 32) # Change this to match your tile size
var road_width = 5 # Change this to set the road width

func _ready():
	create_road(Vector2(0, 0))

func create_road(start_position):
	for x in range(road_width):
		for y in range(1000): # Set the desired length of the road
			var cell_position = start_position + Vector2(x, y) * tile_size
