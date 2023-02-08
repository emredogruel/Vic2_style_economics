extends Node
class_name Market	
###OUT OF USE###
var Commodity = load("commodityScript.gd")
var pop1 = load("popScript.gd")

var foodM = Commodity.new("food")
var small_armsM = Commodity.new("small_arms")
var machine_partsM = Commodity.new("machine_parts")

var goodsList = null

func _init():
	goodsList = machine_partsM.comList
	print("market initialized")

func getPrice():
	
	pass
