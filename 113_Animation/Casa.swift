//
//  Casa.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Casa: DesenhosTangram {

     func paint(tangram: Tangram) {
        var scale :CGFloat = 0.74
        
        //azul escuro
        tangram.azulEscuro.prepare(scale, rotate: 45)
        tangram.azulEscuro.center.x = tangram.lado - tangram.azulEscuro.frame.width/2
        tangram.azulEscuro.center.y = tangram.lado/2 - tangram.azulEscuro.frame.width * 0.1
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 45)
        tangram.vermelho.center.x = tangram.azulEscuro.center.x - tangram.vermelho.frame.width/4
        tangram.vermelho.center.y = tangram.azulEscuro.center.y - tangram.vermelho.frame.height/2
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: -90)
        tangram.laranja.center.x = tangram.azulEscuro.center.x - tangram.laranja.frame.height
        tangram.laranja.center.y = tangram.azulEscuro.center.y - tangram.laranja.frame.width * 0.072
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: -90)
        tangram.cian.center.x = tangram.azulEscuro.frame.origin.x + tangram.cian.frame.width * 0.01
        tangram.cian.center.y = tangram.azulEscuro.center.y + tangram.cian.frame.width/2.33
        
        //azul claro
        tangram.azulClaro.prepare(scale, rotate: 0)
        tangram.azulClaro.center.y = tangram.cian.center.y
        tangram.azulClaro.frame.origin.x = tangram.cian.frame.origin.x
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: 90)
        tangram.verde.frame.origin.x = tangram.azulClaro.frame.origin.x
        tangram.verde.frame.origin.y = tangram.azulClaro.frame.origin.y
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: -45)
        tangram.amarelo.center.x = tangram.azulEscuro.center.x + tangram.amarelo.frame.width * 0.039
        tangram.amarelo.center.y = tangram.cian.center.y - tangram.amarelo.frame.width * 0.17
        
    }

}
