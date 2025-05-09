extends Interactable

@export var light : NodePath
@export var on_by_default = true
@export var energy_when_on = 10
@export var energy_when_off = 3

@onready var light_node : Light3D = get_node(light)

@onready var switch_mesh = get_parent()

var on = on_by_default

func _ready():
	light_node.light_energy = energy_when_on if on else energy_when_off

func interact():
	if on:
		switch_mesh.translate(Vector3(0,0, -0.3))
	else:
		switch_mesh.translate(Vector3(0,0, +0.3))
	on = !on
	light_node.light_energy = energy_when_on if on else energy_when_off
