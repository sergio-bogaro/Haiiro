extends CanvasLayer

var CHAR_READ_RATE = 0.05

onready var textboxContainer = $TextBoxContainer
onready var starSimbol = $TextBoxContainer/MarginContainer/HBoxContainer/Start
onready var endSimbol = $TextBoxContainer/MarginContainer/HBoxContainer/End
onready var Text = $TextBoxContainer/MarginContainer/HBoxContainer/Text

enum State{
	READY,
	READING,
	FINISHED
}

var current_state = State.READY
var text_queue = []

func _ready():
	hide_textbox()

func _process(_delta):
	match current_state:
		State.READY:
			if !text_queue.empty():
				display_text()
		State.READING:
			if Input.is_action_just_pressed("ui_accept"):
				Text.percent_visible = 1
				$Tween.remove_all()
				endSimbol.text = 'e'
				changeState(State.FINISHED)
		State.FINISHED:
			if Input.is_action_just_pressed("ui_accept"):
				changeState(State.READY)
				if text_queue.empty():
					hide_textbox()
				

func queue_text(next_text):
	text_queue.push_back(next_text)

func hide_textbox():
	get_tree().paused = false
	starSimbol.text = ''
	endSimbol.text = ''
	Text.text = ''
	textboxContainer.hide()

func show_textbox():
	starSimbol.text = '>'
	textboxContainer.show()

func display_text():
	get_tree().paused = true
	var next_text = text_queue.pop_front()
	Text.text = next_text
	Text.percent_visible = 0
	changeState(State.READING)
	show_textbox()
	$Tween.interpolate_property(Text, 'percent_visible', 0.0, 1.0, len(next_text)* CHAR_READ_RATE, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()


func _on_Tween_tween_completed(_object, _key):
	endSimbol.text = 'e'
	changeState(State.FINISHED)

func changeState(next_state):
	current_state = next_state
