extends Node2D

class_name HealthComponent

signal entity_died
signal health_changed(new_health)

@export var maxHealth := 100 
@export var curHealth := 10

func _ready():
	curHealth = clamp(curHealth, 0, maxHealth)

func DamageCalculation(recievedDamage: int ):
	curHealth = max(curHealth - recievedDamage, 0)
	emit_signal("health_changed", curHealth)
	if curHealth <= 0:
		emit_signal("entity_died")

func HealingCalculation(recievedHealth: int):
	curHealth = min(curHealth + recievedHealth, maxHealth)
	emit_signal("health_changed", curHealth)
	
func IsDead() -> bool:
	return curHealth <= 0
