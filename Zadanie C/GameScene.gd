extends Control

var rng = RandomNumberGenerator.new()
var mojTest = "test mojego tekstu"

func _ready():
	#Pierwsza opcja:
	#get_node("Label").text = "Ala ma kota"
	#Druga opcja:
	#$Label.text = "Kot ma na imię Blekot"
	$VBoxContainer/TekstGlowny.text = mojTest
	
	rng.randomize()
	var my_random_number = rng.randf_range(0, 100)
	var number_txt = str(my_random_number)
	print(my_random_number)
	print(number_txt)

func _on_LineEdit_text_entered(new_text):
	$VBoxContainer/TekstGlowny.text = new_text
	#if new_text == "7": print("TAK jest równy ha!")
	#jak wyczyścić tekst po enterze? [jakiś "clear"?]
	
	#var liczba = 0
	
	#if liczba==2: print("dwa")
	#elif  liczba==1: print("jeden!")
	#else: print("inna")
