import UIKit

var edad = Int.random(in: 13...27)
//var edad = 18

if edad > 18 {
    print("Es mayor de edad")
}else if edad == 18 {
    print("Estas en el limite")
}else {
    print("No es mayor de edad")
}

//SWIFT

var note = 5

switch note {
case 1...4:
    print("Suspenso")
case 5:
    print("Suficiente")
case 6-7:
    print("Bien")
case 8,9:
    print("Notable")
case 10:
    print("Sobresaliente")
default:
    print("Esta nota no es valida")
}

//SWIFT CON ENUM

enum PersonalData {
    case name
    case surname
    case address
    case phone
}

let userData: PersonalData = .name

switch userData {
case .name:
    print("Cual es tu nombre")
case .surname:
    print("Cual es tu apellido")
case .address:
    print("Cual es tu direccion")
case .phone:
    print("Cual es tu telefono")
}
