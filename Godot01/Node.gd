extends Node

var welcomeFirst = "Hi"
var welcomeSecond = "Bonjour"
var nameFirst = "Sebastian"
var nameSecond = "Susan"
var dada = 2

var names = ["Sebastian", "Susan", "Ian", "Wojna Żabiomysia"]
var welcomes = ["Czesc", "Hello", "Hi", "Bonjour"]
var activities = ["Batrachomyomachia"]

func _ready():
# print("Hello World")
# print (2+7)
# print ("2+7")
	print (welcomes[1] + " my name is " + names[1])
	print (welcomes[2] + " my name is " + names[2])
	print (names[3] + " zwie się " + activities[0])
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
