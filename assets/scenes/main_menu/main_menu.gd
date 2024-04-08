# ******************************************************************************
# main_menu.gd
# ******************************************************************************
#                             This file is part of
#                                   Centrix
# ******************************************************************************
# Copyright (c) 2024-present University of Cabuyao
# 
# Developers
# Shannja Ashley Malelang
# Miccael Jasper Tayas
# Jhovic Cortel
#
# Adviser
# Paulo Edrozo
# ******************************************************************************

extends Control

var _scene: Resource = load("res://assets/scenes/main_game/main_game.tscn")

# NODES ************************************************************************
@onready var _anim: AnimationPlayer = get_node("menu/anim")

# VIRTUAL **********************************************************************
func _ready() -> void:
	# Enable animation.
	_anim.play("splash")

# SIGNALS **********************************************************************
func _on_play_pressed() -> void:
	get_tree().change_scene_to_packed(_scene)
