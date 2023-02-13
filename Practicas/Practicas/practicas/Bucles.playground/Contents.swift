import UIKit

//FOR
var sumNum = 0
for num in 1...5 {
    print(num)
    sumNum+=num
}
print("La suma total es de \(sumNum)")
print("")


let foods = ["Apple", "Cake", "Rice"]
for food in foods {
    print(food)
}
print("")

//WHILE
var age = 10

while age < 18 {
    print("Eres menor de edad. Te faltan \(18-age)")
    age+=1
}
print("Ya eres mayor de edad\n")


//WHILE REPEAT
var number = [1,2,3,4,5,6,7,8,9,10]
var index = number.count - 1

repeat{
    number.remove(at: index)
    print(number)
    index -= 1
}while(index >= 0)
print("El array esta vacio\n")


