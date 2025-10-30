extends CharacterBody2D

signal poulet_collecte

# Préchargement de la scene plume
var plume_scene = preload("res://scenes/plume.tscn")


@onready var zone_collecte: Area2D = $ZoneCollecte
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Vitesse (pour la partie 6)
var vitesse: float = 30.0

# Est-ce que le poulet peut encore etre ramassé ?
var peut_etre_ramasse:bool = true




func _on_zone_collecte_body_entered(body: Node2D) -> void:
	if body.name == "Player" and peut_etre_ramasse:
		print("Cot cot ! Poulet attrapé !")
		ramasser()

func ramasser():
	peut_etre_ramasse = false
	
	var position_depart_y = position.y
	
	var tween = create_tween()
	
	
	
	# Le saut vers le haut
	tween.tween_property(self,"position:y", position_depart_y - 15,0.25)
	
	# faire tourner le poulet
	tween.tween_property(self, "rotation_degrees", 360, 0.5)
	
	# le retour au sol
	tween.tween_property(self, "position:y", position_depart_y, 0.25)
	
	# la disparition
	tween.tween_property(self, "modulate:a", 0.0, 0.3)
	
	# Attendre la fin
	await tween.finished
	
	faire_apparaitre_plume()
	
	# Emettre le signal
	poulet_collecte.emit()
	
	# Supprime le poulet
	queue_free()
	
func faire_apparaitre_plume():
	#1.  On instancie (crée) une copie de la scene
	var plume = plume_scene.instantiate()
	
	#2. On positionne la plume à l'endroit du poulrt
	plume.global_position = global_position
	
	#3. On ajoute la plume dans le jeu
	get_parent().add_child(plume)
	
		
