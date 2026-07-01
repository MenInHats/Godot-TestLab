extends Panel

# ----------------------
# Created 6/30/2026
# Purpose: A script to control the individual slots of the inventorys 
# Video Used: Devworm, How to create a inventory in godot 4
# ----------------------

@onready var item_visual: Sprite2D = $CenterContainer/Panel/item_display

func update_inv_slot(item: InvItem):
	if !item:
		item_visual.visible = false
	else:
		item_visual.visible = true
		item_visual.texture = item.texture
