import UIKit

/* Valores Simples */

var myVariable = 42
myVariable = 50

let myConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

let label = "A largura é "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "Eu tenho \(apples) maçãs"
let fruitSummarty = "Eu tenho \(apples + oranges) frutas"

let quotation = """
Eu disse "eu tenho \(apples) maçãs."
E então eu disse: "eu tenho \(apples + oranges) frutas"
"""

var fruits = ["morangos", "limões", "tangerinas"]
fruits[1] = "uvas"
fruits.append("amoras") // push no JS
print(fruits)

// Dicionário
var occupations = [
    "João": "Capitão",
    "Pedro": "Mecânico",
]
occupations["Maria"] = "Relações Públicas"
print(occupations)

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:] // dicionário vazio [:]

fruits = []
occupations = [:]
