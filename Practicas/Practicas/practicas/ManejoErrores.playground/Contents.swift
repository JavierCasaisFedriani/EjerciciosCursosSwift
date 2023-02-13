import UIKit

//Añadiendo la palabra THROWS al final de la funcion, estamos indicando que esta funcion puede lanzar errores
func sum(firtNumber: Int?, secondNumber: Int?) throws -> Int {
    guard let num1 = firtNumber else {
        throw SumError.firstNumberNil
    }
    
    guard let num2 = secondNumber else {
        throw SumError.secondNumberNil
    }
    return num1 + num2
}

//Implementar errores
enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
}

//Propagacion de errores
do {
    print(try sum(firtNumber: 40, secondNumber: 2))
} catch SumError.firstNumberNil {
    print("El primer numero es nulo")
} catch SumError.secondNumberNil {
    print("El segundo numero es nulo")
}
