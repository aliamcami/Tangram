//
//  Barco.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Barco: DesenhosTangram {
    func paint (tangram: Tangram){
        var scale :CGFloat = 0.565
        //tangram.verde
        tangram.verde.prepare(scale, rotate: 45)
        tangram.verde.center.x = tangram.verde.frame.width/2
        tangram.verde.center.y = tangram.lado/1.7
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 45)
        tangram.vermelho.center.y = tangram.verde.center.y - tangram.vermelho.frame.width * 0.125
        tangram.vermelho.center.x = tangram.verde.frame.origin.x + tangram.verde.frame.width
        
        //azul claro
        tangram.azulClaro.prepare(scale, rotate: 45)
        tangram.azulClaro.center.x = tangram.vermelho.center.x + tangram.azulClaro.frame.width * 0.17
        tangram.azulClaro.center.y = tangram.verde.center.y - tangram.azulClaro.frame.width/1.492
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: 0)
        tangram.laranja.center.y = tangram.azulClaro.center.y * 0.9
        tangram.laranja.center.x = tangram.vermelho.center.x + tangram.laranja.frame.width * 0.95
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: -90)
        tangram.cian.frame.origin.x = tangram.laranja.frame.origin.x
        tangram.cian.frame.origin.y = tangram.laranja.center.y
        
        //azul escuro Quadrilatero
        tangram.azulEscuro.prepare(scale, rotate: 45)
        tangram.azulEscuro.center.y = tangram.vermelho.center.y + tangram.azulEscuro.frame.height * 0.56
        tangram.azulEscuro.center.x = tangram.vermelho.center.x * 1.1
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 90)
        tangram.amarelo.center.y = tangram.azulEscuro.center.y
        tangram.amarelo.frame.origin.x = tangram.azulEscuro.center.x
    }
    

}
