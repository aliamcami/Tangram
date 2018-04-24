//
//  Quadrado.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Quadrado: DesenhosTangram {
    func paint(tangram: Tangram) {
        var scale :CGFloat = 1
        //tangram.cian
        tangram.cian.prepare(scale, rotate: 0)
        tangram.cian.frame.origin.x = 0
        tangram.cian.frame.origin.y = 0
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: 90)
        tangram.laranja.frame.origin.x = 0
        tangram.laranja.frame.origin.y = 0
        
        //azul escuro
        tangram.azulEscuro.prepare(scale, rotate: 0)
        tangram.azulEscuro.frame.origin.y = tangram.lado - tangram.azulEscuro.frame.height
        tangram.azulEscuro.frame.origin.x = 0
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 45)
        tangram.amarelo.center.x = tangram.laranja.center.x + tangram.amarelo.frame.width * 0.505
        tangram.amarelo.center.y = tangram.azulEscuro.center.y
        
        // tangram.verde
        tangram.verde.prepare(scale, rotate: -90)
        tangram.verde.frame.origin.y = tangram.cian.center.y
        tangram.verde.center.x = tangram.laranja.center.x
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 0)
        tangram.vermelho.center.y = tangram.cian.center.y
        tangram.vermelho.frame.origin.x = tangram.laranja.center.x
        
        //triangulo azul claro
        tangram.azulClaro.prepare(scale, rotate: 180)
        tangram.azulClaro.frame.origin.x = tangram.laranja.frame.width - tangram.azulClaro.frame.width
        tangram.azulClaro.frame.origin.y = 0
    }

}
