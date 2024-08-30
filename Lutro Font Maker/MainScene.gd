extends Node2D

onready var text_size = $Configuration.text_size
onready var char_sizes = $Configuration.char_sizes
onready var font_colors = $Configuration.font_colors

func _ready():
	make_lines()

var time = 0
var totalColors = 0
func _process(delta):
	time += delta
	if time > 1:
		multiple_or_single_select()

func multiple_or_single_select():
	if $Configuration.multiple_colors:
		create_multiple_fonts()
	else:
		if totalColors == 0:
			create_one_font_image("")
			print("finished")
			totalColors += 1

# Godot loop modulate not working, I've made some hack to work.
func create_multiple_fonts():
	if totalColors == 0:
		$FontGlyphs.modulate = font_colors[0]
	elif totalColors < font_colors.size():
		create_one_font_image(totalColors-1)
		$FontGlyphs.modulate = font_colors[totalColors]
	elif totalColors == font_colors.size():
		create_one_font_image(totalColors-1)
		print("finished")
	totalColors += 1

func create_one_font_image(n):
	var vpt = get_viewport()
	var tex = vpt.get_texture()
	var img = tex.get_data()
	
	#this color will be changed to transparent
	var color_to_change = Color8(77, 77, 77, 255)
	var new_color = Color8(0, 0, 0, 0)
	
	img.flip_y()
	img.convert(Image.FORMAT_RGBA8)
	
	for y in range(img.get_height()):
		for x in range(img.get_width()):
			img.lock()
			var get_color = img.get_pixel(x, y)
			if get_color == color_to_change:
				img.lock()
				img.set_pixel(x, y, new_color)
	
	img.save_png("res://font/font" + str(n) + ".png")

func make_lines():
	for i in text_size:
		add_line(char_sizes[i].x)
	add_line(0)

func add_line(n):
	var line = ColorRect.new()
	line.color = $Configuration.lines_color
	line.rect_size = Vector2(1, char_sizes[0].y + 1)
	line.rect_position = Vector2(n, 0)
	add_child(line)

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		totalColors = 0
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://MainScene.tscn")
