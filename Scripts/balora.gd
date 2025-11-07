extends CharacterBody3D

@export_group("Ruch spirali")
@export_range(0.0, 10.0) var tangential_speed: float = 4.0 #Prędkość krążenia
@export_range(0.0, 10.0) var radial_speed: float = 4.0 #prędkość zacieśniania spirali
@export_range(0.1, 5.0) var vertical_speed: float = 1.0 # prędkość ruchu góra/dół

@export_group("Cel")
var player_target: Node3D = null

# Zmienna do kontrolowania krążenia (1.0 = w lewo, -1.0 = w prawo)
# Można to losować przy _ready() dla większej różnorodności 
var circulation_direction: float = 1.0

func _ready():
	# Znajdź gracza po grupie 
	# Upewnij się, że twój gracz XROrigin3D jest w grupie "player"
	var players = get_tree().get_nodes_in_group("player")
	if not players.is_empty():
		player_target = players[0]
	else:
		push_error("Ballora nie może znaleźć gracza! Dodaj Node'a gracza do targetu Balory!")
		
	#losuj kierunek krążenia
	if randf() > 0.5:
		circulation_direction = -1.0
		
		
func _physics_process(delta):
	# Jeśli nie ma celu, nei ruszaj się
	if not player_target:
		velocity = Vector3.ZERO
		move_and_slide()
		return
		
	# --- Logika Ruchu Spiralnego ---
	# 1. Oblicz wektory (w płaszczyźnie poziomej XZ)
	var current_pos_xz = global_position * Vector3(1, 0, 1)
	var player_pos_xz = player_target.global_position * Vector3(1,0,1)
	
	# Wektor "do gracza" (kierunek RADIALNY)
	var dir_to_player = (player_pos_xz - current_pos_xz).normalized()
	
	# Wektor "prostopadły" (keirunek TANGENCJALNY / statyczny)
	# Obrót wektora o 90 stopni na płąszczyźnie XZ
	var dir_tangential = dir_to_player.rotated(Vector3.UP, deg_to_rad(90.0) * circulation_direction)
	
	# 2. Oblicz składowe prędkości XZ
	var radial_velocity = dir_to_player * radial_speed
	var tangential_velocity = dir_tangential * tangential_speed
	
	#3. Połącz prędkości, aby stworzyć spiralę
	var target_velocity_xz = radial_velocity + tangential_velocity
	
	# -- Logika Ruchu Pionowego (Opcjonalnie) ---
	# Ją narazię pomijam
	
	# 4. Ustaw ostateczną prędkość
	velocity.x = target_velocity_xz.x
	velocity.z = target_velocity_xz.z
	# velocity.y = vertical_velocity
	
	# 5.  WYkonaj ruch
	move_and_slide()
	
	# 6. Obracanie wroga
	# Czat mówi żeby Balora ptrzyła się ciągle na gracza
	# Ale ja nie wiem czy jest to konieczne
	# look_at(player_target.global_position, Vector3.UP)
	
