extends StaticBody2D

@export var health_component : HealthComponent

signal entityDamaged(amount)

func damageCalculation(recievedDamage):
	if health_component:
		emit_signal("entityDamaged", recievedDamage)
		health_component.damageCalculation(recievedDamage)
		
