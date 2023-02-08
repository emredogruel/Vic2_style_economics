extends Node

var POP = load("popScript.gd")
var GOV = load("governmentScript.gd")
var MAR = load("marketScript.gd")
var COM = load("commodityScript.gd")
var PROV = load("provScript.gd")

var timer = [1,1,1,1,1,1,1,1,1,1,1,1]

var commodities = {
	"food":{"price": 5, "supply": 100},
	"machine_parts":{"price": 50, "supply": 5},
	"small_arms":{"price": 25, "supply": 50},
}

var pop = POP.new("labourer")
var pop1 = Pop.new("clergyman")
var pop2 = POP.new("labourer")
var pop3 = POP.new("labourer")
var pop4 = POP.new("labourer")

var prov1 = PROV.new(1)
var prov2 = PROV.new(2)
var prov3 = PROV.new(3)
var prov4 = PROV.new(4)

func main_loop():
	for i in timer:
		pop.buy(commodities)
		pop1.buy(commodities)
		pop2.buy(commodities)
		pop3.buy(commodities)
		pop4.buy(commodities)
		prov1.production(commodities)
		prov2.production(commodities)
		prov3.production(commodities)
		prov4.production(commodities)
		
func _init():
	main_loop()
