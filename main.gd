extends Node

@export var mob_scene = preload("res://mob.tscn")


func _ready():
	randomize()


func _on_mob_timer_timeout():
	var mob = mob_scene.instantiate() 
	
	var mob_spawn_location = $SpawnPath/SpawnLocation
	mob_spawn_location.progress_ratio = randf()
	
	var player_position = $Player.position
	
	add_child(mob)
	mob.initialize(mob_spawn_location.position, player_position)
