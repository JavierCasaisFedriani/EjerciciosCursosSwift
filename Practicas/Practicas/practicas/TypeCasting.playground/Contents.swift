import UIKit

//Validacion de tipos de datos

let myName = "Javi"
let MyAge = 22

class MyPerson {
    var name: String?
    var age : Int?
}

let myPerson = MyPerson()
myPerson.name = "Javier"
myPerson.age = 22

//Tipo Any es cualquier typo
let myArray: [Any] = [myName, MyAge, myPerson]

for item in myArray {
    //Type Casting
    //Con el *is* comprobamos si el valor del item es un string
    if item is String {
        //Downcasting
        //Con *as* lo convertimos al dato que haya despues del as
        let myItemString = item as! String
        print("Item es de tipo String y tiene el valor \(myItemString)")
    }else if item is Int {
        let myItemInt = item as! Int
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    }else if item is MyPerson {
        let myItemClass = item as! MyPerson
        print("Item es de tipo MyPerson y tiene de nombre \(myItemClass.name!) y tiene \(myItemClass.age!) años ")
    }
}
print("\n Mejor Forma")
//La mejor forma es la siguiente
for item in myArray {
    if let myItemString = item as? String {
        print("Item es de tipo String y tiene el valor \(myItemString)")
    }else if let myItemInt = item as? Int {
        print("Item es de tipo Int y tiene el valor \(myItemInt)")
    }else if let myItemClass = item as? MyPerson {
        print("Item es de tipo MyPerson y tiene de nombre \(myItemClass.name!) y tiene \(myItemClass.age!) años ")
    }
}


