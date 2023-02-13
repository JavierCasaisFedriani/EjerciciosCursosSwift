import UIKit

let array = [0,10,25,32,49,5]

//Operador rango doble

//Coge los elementos entre la posicion 1 y la 3
var subsetArray1 = array[1...3]
//Coge los elementos entre la posicion 1 y la anterior a la 3
var subsetArray2 = array[1..<3]

//Operador rango lado unico

//Cogemos los elementos desde el inicio del array hasta el expecificado
var subsetArray3 = array[...3]
//Cogemos los elementos desde el expecificado hasta el ultimo del array
var subsetArray4 = array[3...]

