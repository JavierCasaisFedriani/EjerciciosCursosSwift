import UIKit

//Crear una variable indicando que su valor puede ser nulo
var number: Int?

//IF LET
//Solo se ejecutara el codigo de dentro del if si el valor de number sea distinto de nulo
if let myNumber = number {
    print(myNumber)
}else {
    print("Es nulo")
}
number = 12

if let myNumber = number {
    print(myNumber)
}else {
    print("Es nulo")
}
print("")

//GUARD LET
//Se ejecutara el bloque de codigo si number2 es nulo, exigiendo xcode que indiquemos como vamos a detener nuestro programa
var number2: Int?

func checkNil() {
    guard let myNumber2 = number2 else {
        print("El valor de number2 es nulo")
        return
    }
    
    print("El valor de number2 es \(myNumber2)")
}

checkNil()
number2 = 4
checkNil()

