import UIKit

var myArray = [3,654,867,321,4,6,56,76]

//MARK: - Count
//Contar cuantos elementos hay en la coleccion
myArray.count

//MARK: - isEmpty
//Comprobar si la coleccion esta vacia, devuelve bool
myArray.isEmpty


//MARK: - reversed
//Invierte la coleccion
myArray.reversed()
print(myArray.reversed() as [Int])


//MARK: - first o last
/**
 first -> nos muestra el primer elemento de la coleccion
 last -> nos muestra el ultimo elemento de la coleccion. Solo se encunetra en los Arrays
 */
myArray.first
myArray.last
