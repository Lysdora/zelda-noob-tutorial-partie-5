extends CharacterBody2D

@onready var zone_collecte: Area2D = $ZoneCollecte
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Vitesse (pour la partie 6)
var vitesse: float = 30.0

# Est-ce que le poulet peut encore etre ramassé ?
var peut_etre_ramasse = true




func _on_zone_collecte_body_entered(body: Node2D) -> void:
	if body.name == "Player" and peut_etre_ramasse:
		print("Cot cot ! Poulet attrapé !")
		ramasser()

func ramasser():
	pass
		
