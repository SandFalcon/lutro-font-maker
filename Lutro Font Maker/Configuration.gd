extends Node

export var text = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789"
export var font_color = Color("ffffff")
export var lines_color = Color("ff0000")
export var multiple_colors = false
export var font_colors = [
	Color("000000"),
	Color("1d2b53"),
	Color("7e2553"),
	Color("008751"),
	Color("ab5236"),
	Color("5f574f"),
	Color("c2c3c7"),
	Color("fff1e8"),
	Color("ff004d"),
	Color("ffa300"),
	Color("fff024"),
	Color("00e756"),
	Color("29adff"),
	Color("83769c"),
	Color("ff77a8"),
	Color("ffccaa"),
]

var text_size = text.length()

var char_sizes = []
func _ready():
	for i in text.length():
		char_sizes.append(get_parent().get_node("FontGlyphs").get_font("font").get_string_size(text[i]))
	for i in char_sizes.size():
		if i > 0:
			char_sizes[i].x += char_sizes[i-1].x
		print(char_sizes[i])


