import UIKit

// Array - coleção ordenadas de valores
// Set - coleção não ordenada de valores únicos
// Dictionaries - coleção não ordenada de associações chave-valor (tupla)


// --- Array

let myArray1: [String] = []
let myArray2: Array<String> = []

// ---

var someInts: [Int] = []
print(someInts)
print(someInts.count) // .lenght em JS

someInts.append(3) // .push em JS
someInts = []

// ---

var threeDoubles = Array(repeating: 1.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles)

// ---

var shoppingList: [String] = ["Ovos", "Leite"]
print(shoppingList.count) // .lenght em JS

if shoppingList.isEmpty {
    print("vazio")
} else {
    print("cheio")
}

shoppingList.append("Farinha") // .push em JS
shoppingList += ["Fermento", "Manteiga"] // .push em JS

print(shoppingList)

var firstItem = shoppingList[0]
shoppingList[1] = "1 litro de leite" // muda o valor do indice especificado

shoppingList[1...3] = ["Bananas", "Maçãs"] // substitui os indices especificados pelos valores
shoppingList.insert("Xarope", at: 1) // insere elemento no indice especificado

let remove = shoppingList.remove(at: 1) // remove o indice especificado
let removeLast = shoppingList.removeLast() // remove o último indice

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() { // enumera o indice
    print(index + 1, value)
}

// --- Set

let mySet = Set<String>()

var letters = Set<Character>()
letters.insert("a") // insere valores
letters = []

// ---

var favoriteGenres: Set<String> = ["Rock", "HipHop", "Clássico"]
var newFavoriteGenres: Set = ["Rock", "Clássico"] // tipo implícito

print(favoriteGenres.count)

if favoriteGenres.isEmpty {
    print("vazio")
} else {
    print("cheio")
}

favoriteGenres.remove("Rock") // remove item através do nome
favoriteGenres.insert("Batatinha") // insere valores
print(favoriteGenres)

let funk = favoriteGenres.contains("Funk") // retorna true ou false
print(funk)

for genre in favoriteGenres {
    print("sem sort \(genre)")
}

for genre in favoriteGenres.sorted() { // retorna ordenado
    print("sort \(genre)")
}

// --- Set - Operações de Conjunto

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitsPrimeNumber: Set = [2, 3, 5, 7]

let union = oddDigits.union(evenDigits).sorted()
print(union)

let intersection = oddDigits.intersection(evenDigits).sorted()
print(intersection)

let subtracting = oddDigits.subtracting(singleDigitsPrimeNumber).sorted()
print(subtracting)

let symmetricDifference = oddDigits.symmetricDifference(singleDigitsPrimeNumber).sorted()
print(symmetricDifference)


// isSubset(of: <#T##Set<ObjectType>#>) // verifica se um conjunto é um subconjunto de outro.
// isSuperset(of: Set<ObjectType>) // verifica se um conjunto é um superconjunto de outro
// isDisjoint(with: <#T##Set<Element>#>) // verifica se dois conjuntos não têm elementos em comum.
// Todos retornam true ou false


// --- Dictionary

let myDictionary1: Dictionary<Int, String> = [:]
let myDictionary2: [Int: String] = [:]

// ---

var namesOfIntergers: [Int: String] = [:]
namesOfIntergers[16] = "dezesseis"
print(namesOfIntergers)
namesOfIntergers = [:]

// ---

var aeroportos: [String: String] = ["YYZ": "Toronto", "BSB": "Brasilia"]
var aeroportosLiterais = ["YYZ": "Toronto", "BSB": "Brasilia"] // implicito

print(aeroportos.count)

if aeroportos.isEmpty {
    print("vazio")
} else {
    print("cheio")
}

aeroportos["DUB"] = "Dublin" // insere nova tupla (chave e valor)
aeroportos["BSB"] = "Batatinha" // altera valor do aeroporto especifico

if let oldValue = aeroportos.updateValue("Cleber", forKey: "BSB") { // altera e retorna o valor antigo
    print(oldValue)
}

if let name = aeroportos["BAT"] {
    print(name)
} else {
    print("nao existe")
}

aeroportos["BSB"] = nil // remove tupla (chave e valor)
aeroportos.removeValue(forKey: "DUB") // remove tupla (chave e valor) e retorna nil

for (code, name) in aeroportos {
    print(code, name)
}

for code in aeroportos.keys { // retorna somente a chave
    print(code)
}

for name in aeroportos.values { // retorna somente o valor
    print(name)
}

let code = [String](aeroportos.keys)
let name = [String](aeroportos.values)

print(aeroportos)


