//
//  Peixe.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Peixe: DesenhosTangram {
   
    func paint(tangram: Tangram) {
        var scale :CGFloat = 0.635
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: 45)
        tangram.cian.center.x = tangram.cian.frame.width * 0.5
        tangram.cian.center.y = tangram.cian.frame.height * 0.57
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: -45)
        tangram.laranja.center.x = tangram.cian.center.x
        tangram.laranja.center.y = tangram.cian.center.y + tangram.laranja.frame.height * 0.33
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: 180)
        tangram.verde.center.x = tangram.cian.center.x + tangram.verde.frame.width * 1.2
        tangram.verde.center.y = tangram.cian.center.y - tangram.verde.frame.height * 0.7
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 0)
        tangram.amarelo.center.x = tangram.verde.center.x + tangram.amarelo.frame.width * 0.15
        tangram.amarelo.frame.origin.y = tangram.verde.center.y
        
        //azul escuro
        tangram.azulEscuro.prepare(scale, rotate: -45)
        tangram.azulEscuro.center.x = tangram.verde.center.x + tangram.azulEscuro.frame.width * 0.075
        tangram.azulEscuro.center.y = tangram.verde.center.y + tangram.azulEscuro.frame.height
        
        //azul claro
        tangram.azulClaro.prepare(scale, rotate: 180)
        tangram.azulClaro.center.x = tangram.azulEscuro.center.x - tangram.azulClaro.frame.width * 0.2
        tangram.azulClaro.center.y = tangram.azulEscuro.center.y + tangram.azulClaro.frame.height * 0.7
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 0)
        tangram.vermelho.frame.origin.x = tangram.amarelo.frame.origin.x + tangram.amarelo.frame.width
        tangram.vermelho.center.y = tangram.amarelo.center.y + tangram.vermelho.frame.height * 0.35

    }
}
