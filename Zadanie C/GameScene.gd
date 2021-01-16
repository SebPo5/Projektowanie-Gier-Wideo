extends Control

var rng = RandomNumberGenerator.new()
var test = "Twoja ostatnia liczba"

func _ready():
	$VBoxContainer/MainText.text = test
	
	rng.randomize()
	var my_random_number = rng.randi_range(0, 100)
	var number_txt = str(my_random_number)
	print(my_random_number)
	print(number_txt)

func _on_LineEdit_text_entered(new_text):
	$VBoxContainer/MainText.text = new_text
	if new_text =="7": print("TAK jest równy ha!")
	#jak wyczyścić tekst po enterze? [jakiś "clear"?]
	#załadowąć po prostu scenę zwycięstwa/porażki
	
	#może o to chodzi właśnie – że text=/=liczba, czyli:
	#text–>liczba, jeśli liczba=wygenerowana..., load scene...
#	var liczba = 0

#	moja proba: if liczba==RandomNumberGenerator.new(): print ("TAK!")
	#jeśli liczba jest większa, to zrób to...
	#jeśli jest mniejsza, to zrób to...
	#jeśli jest równa, to zrób to...
#	if liczba==2: print("dwa")
#	elif  liczba==1: print("jeden!")
#	elif liczba ==10: print("dziesięć!")
#	else: print("inna")
