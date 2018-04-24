//
//  Coelho.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Coelho: DesenhosTangram {

     func paint(tangram: Tangram) {
        var scale :CGFloat = 0.5
        
        //azul escuro
        tangram.azulEscuro.prepare(scale, rotate: 45)
        tangram.azulEscuro.center.x = tangram.lado/2
        tangram.azulEscuro.center.y = tangram.azulEscuro.frame.height/4
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 45)
        tangram.vermelho.center.x = tangram.azulEscuro.center.x + tangram.vermelho.frame.width/2.1
        tangram.vermelho.center.y = tangram.azulEscuro.center.y + tangram.vermelho.frame.width/2.03
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: 45)
        tangram.laranja.center.x = tangram.azulEscuro.center.x - tangram.laranja.frame.width * 0.015
        tangram.laranja.center.y = tangram.azulEscuro.center.y + tangram.laranja.frame.width * 0.8
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: -135)
        tangram.cian.center.x = tangram.laranja.center.x - tangram.cian.frame.width * 0.335
        tangram.cian.center.y = tangram.laranja.center.y + tangram.cian.frame.width/3
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 45)
        tangram.amarelo.center.x = tangram.cian.center.x + tangram.amarelo.frame.width * 0.275
        tangram.amarelo.center.y = tangram.cian.center.y + tangram.amarelo.frame.width * 0.53
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: 0)
        tangram.verde.center.x = tangram.vermelho.center.x - tangram.vermelho.frame.width * 0.075
        tangram.verde.center.y = tangram.laranja.center.y + tangram.verde.frame.width * 0.5
        
        //azul claro
        tangram.azulClaro.prepare(scale, rotate: 0)
        tangram.azulClaro.center.x = tangram.amarelo.center.x + tangram.azulClaro.frame.width
        tangram.azulClaro.center.y = tangram.amarelo.center.y - tangram.azulClaro.frame.width * 0.5
    }

}
