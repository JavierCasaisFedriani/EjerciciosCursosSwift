import UIKit

/*
 ARRAYS
*/
var arrayNumbers = [1,2,3]
//var arrayNummber: [Int] = [1,2,3]

//Agregar dato en el ultimo espacio
arrayNumbers.append(5)
print(arrayNumbers)

//Agregar dato en espacio concreto
arrayNumbers.insert(4, at: 3)
print(arrayNumbers)

//Eliminar elemento concreto
arrayNumbers.remove(at: 0)
print(arrayNumbers)

//Elimar el ultimo dato
arrayNumbers.removeLast()
print(arrayNumbers)

/*
 DICCIONARIO
 */

var myDictionary = [Int:String]()

//Añadir Datos
myDictionary = [001: "Pozo", 002: "dyakaska", 003: "salmorejo12"]

//Añadir un dato
myDictionary[004] = "codido303"
print(myDictionary)

//Modificar dato del diccionario
myDictionary[003] = "Vero"
print(myDictionary)

//Eliminar dato
myDictionary[002] = nil
print(myDictionary)


/*
 TUPLAS
 */

//Crear tupla
var personTuples = (nombre: "Javi", edad: 22, estatura: 1.66, calvo: false)
personTuples.calvo
