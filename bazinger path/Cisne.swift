//
//  Cisne.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Cisne: DesenhosTangram {
     func paint (tangram: Tangram){
        var scale :CGFloat = 0.62
        println("cisne")
        //azulclaro
        tangram.azulClaro.prepare(scale, rotate: 45)
        tangram.azulClaro.center.x = tangram.azulClaro.frame.width * 0.7
        tangram.azulClaro.center.y = tangram.azulClaro.frame.height * 0.5
        
        //azul escuro
        tangram.azulEscuro.prepare(scale, rotate: 90)
        tangram.azulEscuro.center.y = tangram.azulClaro.center.y + tangram.azulEscuro.frame.width * 0.42
        tangram.azulEscuro.center.x = tangram.azulClaro.center.x + tangram.azulClaro.frame.width * 0.4
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 0)
        tangram.vermelho.center.x = tangram.azulEscuro.frame.origin.x
        tangram.vermelho.center.y = tangram.azulEscuro.center.y + tangram.vermelho.frame.height * 0.75
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: 0)
        tangram.verde.frame.origin.y = tangram.vermelho.center.y
        tangram.verde.center.x = tangram.azulClaro.center.x - tangram.verde.frame.width * 0.15
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 180)
        tangram.amarelo.frame.origin.x = tangram.verde.frame.origin.x
        tangram.amarelo.center.y = tangram.verde.frame.origin.y + tangram.verde.frame.size.height
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: 135)
        tangram.cian.center.x = tangram.azulEscuro.center.x + tangram.cian.frame.width * 0.145
        tangram.cian.center.y = tangram.amarelo.center.y + tangram.cian.frame.height * 0.16
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: 90)
        tangram.laranja.center.x = tangram.cian.center.x + tangram.laranja.frame.width * 0.32
        tangram.laranja.center.y = tangram.verde.center.y + tangram.laranja.frame.height * 0.269
        
    }

}
