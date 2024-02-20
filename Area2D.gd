extends Area2D
var speed = 50
const JUMP =100
const GRAVITY =50
func _process(delta):
	position.x += speed + delta
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("jump"):
		velocity.y=JUMP
	velocity.y=velocity.y + GRAVITY
extends TileMap

var road_tileset = preload("res://road_tileset.tres") # Replace with your road tileset path
var tile_size = Vector2(32, 32) # Change this to match your tile size
var road_width = 5 # Change this to set the road width

func _ready():
	create_road(Vector2(0, 0))

func create_road(start_position):
	for x in range(road_width):
		for y in range(1000): # Set the desired length of the road
			var cell_position = start_position + Vector2(x, y) * tile_size
			add_tile(road_tileset, cell_position)

func add_tile(tileset, position):
	var cell = tileset.get_cellv(0, position)
	if cell != -1:
		set_cellv(cell, position)
