extends Control

# ----------------------
# Created 6/30/2026
# Purpose: A script to control  the inventorys UI elements and current inventory
# Video Used: Devworm, How to create a inventory in godot 4
# ----------------------

@onready var inventroy: Inv = preload("res://TestLab_UIElements/TestLab_Inventory/test_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

var is_open = false

func _ready():
	update_slots()
	close_inv()

func _process(delta):
	if Input.is_action_just_pressed("InventoryOpenClose"):
		if is_open:
			close_inv()
		else:
			open_inv()
			
func update_slots():
	for i in range(min(inventroy.items.size(), slots.size())):
		slots[i].update_inv_slot(inventroy.items[i])
		
#when called will open the inventory
func open_inv():
	self.visible = true
	is_open = true

#when called will close the inventory
func close_inv():
	self.visible = false
	is_open = false
