import UIKit

//Funciones sin parametro
func helloWord() {
    print("Hola mundo")
}
helloWord()

//Funciones con un paramatro
func helloName(name: String) {
    print("Hola \(name)")
}
helloName(name: "Javi")

//Funciones que davuelva un valor
func cuboDe(numero: Int) -> Int{
    var numerCubo = numero * numero * numero
    return numerCubo
}
let result = cuboDe(numero: 10)
print("El cubo del numero es \(result)")

//Funciones con parametros por defecto
func cuadradoDe(numero: Int = 2){
    var numerCuadrado = numero * numero
    print("El cuadrado de \(numero) es igual a \(numerCuadrado)")
}
cuadradoDe()

//Funciones con parametros internos y externos
func calificaciones(Matematica materiaUno: Double, Fisica materiaDos: Double, Quimica materiaTres: Double) -> Double{
    return (materiaUno + materiaDos + materiaTres)/3
}
let miCalificacion = calificaciones(Matematica: 81, Fisica: 45, Quimica: 60)
print(miCalificacion)
