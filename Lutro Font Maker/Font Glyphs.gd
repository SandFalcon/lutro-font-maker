extends Label

onready var text_size = get_parent().get_node("Configuration").text_size
onready var char_sizes = get_parent().get_node("Configuration").char_sizes
func _ready():
	modulate = get_parent().get_node("Configuration").font_color
#	modulate = font_colors[0]

#	text = "¹²³⁴⁵⁶⁷⁸ᵇᶜᵉᶠ▮■□⁙⁘‖◀▶「」¥•、。゛゜ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~○█▒🐱⬇░✽●♥☉웃⌂⬅😐♪🅾◆…➡★⧗⬆ˇ∧❎▤▥あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンッャュョ◜◝"
#	text = "¹²³⁴⁵⁶⁷⁸ᵇᶜᵉᶠ▮■□⁙⁘‖◀▶「」¥•、。゛゜ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`{|}~○█▒🐱⬇░✽●♥☉웃⌂⬅😐♪🅾◆…➡★⧗⬆ˇ∧❎▤▥あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンッャュョ◜◝"
	
	text = get_parent().get_node("Configuration").text
	
	OS.min_window_size = Vector2(1,1)
	OS.window_size = Vector2(
		char_sizes[char_sizes.size()-1].x + 1,
		char_sizes[0].y + 1)
		
	get_parent().get_node("ColorRect").rect_size = OS.window_size

# trocar minúscula por símbolos
# 

#¹²³⁴⁵⁶⁷⁸ᵇᶜᵉᶠ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~○█▒🐱⬇░✽●♥☉웃⌂⬅😐♪🅾◆…➡★⧗⬆ˇ∧❎▤▥
#¹²³⁴⁵⁶⁷⁸ᵇᶜᵉᶠ▮■□⁙⁘‖◀▶「」¥•、。゛゜ !\"#$%&'()*+,-./0123456789:;<=>?@{|}~○█▒🐱⬇░✽●♥☉웃⌂⬅😐♪🅾◆…➡★⧗⬆ˇ∧❎▤▥あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンッャュョ◜◝
#¹²³⁴⁵⁶⁷⁸ᵇᶜᵉᶠ▮■□⁙⁘‖◀▶「」¥•、。゛゜ !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~○█▒🐱⬇░✽●♥☉웃⌂⬅😐♪🅾◆…➡★⧗⬆ˇ∧❎▤▥あいうえおかきくけこさしすせそたちつてとなにぬねのはひふへほまみむめもやゆよらりるれろわをんっゃゅょアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワヲンッャュョ◜◝
