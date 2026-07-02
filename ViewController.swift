import UIKit


class ViewController: UIViewController {


var preguntaActual = 0


var puntos = [

"Heroe":0,

"Ingeniero":0,

"Aventurero":0

]


override func viewDidLoad() {

super.viewDidLoad()

mostrarPregunta()

}



func mostrarPregunta(){

print(preguntas[preguntaActual])

print(respuestas[preguntaActual])

}



func responder(opcion:Int){


if opcion == 0 {

puntos["Heroe"]! += 1

}


if opcion == 1 {

puntos["Ingeniero"]! += 1

}


if opcion == 2 {

puntos["Aventurero"]! += 1

}


preguntaActual += 1



if preguntaActual == 5 {


mostrarResultado()


}else{


mostrarPregunta()

}


}



func mostrarResultado(){


let resultado = puntos.max{

$0.value < $1.value

}



if let personaje = resultado {


print("Eres \(personaje.key)")


}


}


}