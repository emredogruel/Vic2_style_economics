extends Node

#var taxRate = Government.taxRate

class_name Pop
var job = null
var income = null
var expenses = null
var demand = null
var Comm = load("commodityScript.gd")

var comList = ["food", "machine_parts", "small_arms"]

var jobs = {
	"labourer":{"wage":50, "needs":["food","machine_parts",""]},#Base wage for now
	"clergyman":{"wage":100, "needs":["food", "small_arms"]},
}

func _init(a):
	job = a
	income = jobs[a]["wage"]
	expenses = 0
	demand = 1

func supplyHandler(a,i,commodities):
	var demand = a
	var commodity = i
	var finalSupply = commodities[i]["supply"] - demand 
	if commodities[i]["supply"] == 0:
		print("No Supply")
		commodities[i]["price"] += 1
		return 0
	elif [commodities[i]["supply"] > 0] and [finalSupply >= 0]:
		return finalSupply

func buy(commodities):
	var income1 = income
	if demand and income > 0:
		for i in comList:
			var needs = jobs[job]["needs"]
			if i in needs:
				income -= commodities[i]["price"]
				commodities[i]["supply"] = supplyHandler(demand, i, commodities)
				print("income: ", income)
				print("supply: ", commodities[i]["supply"])
		print("final income: ", income)
		expenses = income1 - income

func promote_demote():
	pass

func migrate():
	pass
