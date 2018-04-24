//
//  Gato.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Gato: DesenhosTangram {
     func paint(tangram: Tangram){
        var scale :CGFloat = 0.54
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 0)
        tangram.vermelho.center.x = tangram.lado/2 - tangram.vermelho.frame.width * 0.7
        tangram.vermelho.frame.origin.y = tangram.vermelho.frame.size.width * 0.5
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: 0)
        tangram.verde.frame.origin.x = tangram.vermelho.frame.origin.x
        tangram.verde.center.y = tangram.vermelho.frame.origin.y
        
        //azul claro
        tangram.azulClaro.prepare(scale, rotate: 180)
        tangram.azulClaro.center.y = tangram.verde.center.y
        tangram.azulClaro.frame.origin.x = tangram.vermelho.center.x
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 180)
        tangram.amarelo.frame.origin.x = tangram.vermelho.frame.origin.x
        tangram.amarelo.frame.origin.y = tangram.vermelho.center.y + tangram.amarelo.frame.height * 0.213
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: 0)
        tangram.cian.frame.origin.x = tangram.amarelo.frame.origin.x + tangram.amarelo.frame.width
        tangram.cian.frame.origin.y = tangram.amarelo.frame.origin.y
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: 45)
        tangram.laranja.center.x = tangram.cian.center.x + tangram.laranja.frame.width * 0.0705
        tangram.laranja.center.y = tangram.cian.center.y + tangram.laranja.frame.height * 0.498
        
        //azulescuro
        tangram.azulEscuro.prepare(scale, rotate: 150)
        tangram.azulEscuro.center.x = tangram.laranja.center.x + tangram.azulEscuro.frame.width * 0.567
        tangram.azulEscuro.center.y = tangram.laranja.center.y - tangram.azulEscuro.frame.height * 0.2
    }
}
