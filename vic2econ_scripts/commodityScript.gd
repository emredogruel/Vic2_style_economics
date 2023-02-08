extends Node
class_name Commodity
###OUT OF USE###
var comName = null
var util = null
var price = null
var supply = null
var priceChange = null
var demand = null
var exchange = null

var comList = []

var commodities = {
	"food":{"price": 5, "supply": 100},
	"machine_parts":{"price": 50, "supply": 5},
	"small_arms":{"price": 25, "supply": 50},
}

func _init(i):
	for a in commodities:
		comList.append(a)
	price = commodities[i]["price"]
	supply = commodities[i]["supply"]
	comName = i	

func int1():
	for i in comList:
		price = commodities[i]["price"]
		supply = commodities[i]["supply"]
	for i in commodities:	
		print(" ", price, " ", supply)

func price():	
		print("demand: ", demand)
		print("supply: ", supply)
		print(priceChange)
		print("price: ", price)
		if demand > supply:
			priceChange = true
			price += (demand - supply)
			demand = demand - supply
			supply = 0
		elif demand == supply: 
			priceChange = false
			demand = 0
			supply = 0
		else:
			priceChange = true
			price -= (supply - demand)
			supply = supply - demand
			demand = 0
		if price < 0:
			price = 0

func getPrice():
	return price
