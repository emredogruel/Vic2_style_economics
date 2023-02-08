extends Node
class_name Province

var prod = null
var provName = null
var prodQuantity = null
var commodity = load("commodityScript.gd")
var provList = [1,2,3,4]


var provDict = {
	1: {"name": "Ankara", "production": "small_arms"},
	2: {"name": "Istanbul", "production": "food"},
	3: {"name": "Izmir", "production": "machine_parts"},
	4: {"name": "Bursa", "production": "food"},
}

var comList = ["food", "machine_parts", "small_arms"]

func _init(number):
		provName = provDict[number]["name"]
		prod = provDict[number]["production"]
		prodQuantity = 5

func production(commodities):
		for i in comList:
			if i == prod:
				commodities[i]["supply"] += prodQuantity
				print("SUPPLY", commodities[i]["supply"])
