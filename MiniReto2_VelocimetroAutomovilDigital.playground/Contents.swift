//: Mini Reto 2: Velocimetro de un automóvil digital

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var velocidadCadena: String
        var velocidadActual: Int
        
        switch velocidad{
        case .Apagado:
            velocidadActual = velocidad.rawValue
            velocidadCadena = "Apagado"
            velocidad   = Velocidades.VelocidadBaja
        
        case .VelocidadBaja:
            
            velocidadActual = velocidad.rawValue
            velocidadCadena = "Velocidad Baja"
            velocidad   = Velocidades.VelocidadMedia
            
        case .VelocidadMedia:
            
            velocidadActual = velocidad.rawValue
            velocidadCadena = "Velocidad Media"
            velocidad   = Velocidades.VelocidadAlta
            
        case .VelocidadAlta:
            
            velocidadActual = velocidad.rawValue
            velocidadCadena = "Velocidad Alta"
            velocidad   = Velocidades.VelocidadMedia
        }
        
       return (velocidadActual, velocidadCadena)
    }
}


var miAuto = Auto()


for n in 1 ... 20{
    
    let (velocidadActual, velocidadCadena) = miAuto.cambioDeVelocidad()
    
    print("\(n). \(velocidadActual), \(velocidadCadena)")
    
}

