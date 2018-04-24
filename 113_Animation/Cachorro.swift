//
//  Cachorro.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Cachorro: DesenhosTangram {
     func paint(tangram: Tangram) {
        var scale : CGFloat = 0.51
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 0)
        tangram.vermelho.frame.origin.x = tangram.lado - tangram.vermelho.frame.width
        tangram.vermelho.center.y = tangram.vermelho.frame.width
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: -90)
        tangram.verde.center.x = tangram.vermelho.center.x - tangram.verde.frame.width * 0.5
        tangram.verde.center.y = tangram.vermelho.center.y - tangram.verde.frame.height * 1.5
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: 90)
        tangram.cian.frame.origin.y = tangram.vermelho.center.y
        tangram.cian.center.x = tangram.vermelho.center.x - tangram.cian.frame.width * 0.75
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: 135)
        tangram.laranja.center.x = tangram.cian.center.x - tangram.laranja.frame.width * 0.49
        tangram.laranja.center.y = tangram.cian.center.y + tangram.laranja.frame.height * 0.07
        
        //azulclaro
        tangram.azulClaro.prepare(scale, rotate: 180)
        tangram.azulClaro.frame.origin.x = tangram.laranja.frame.origin.x + tangram.azulClaro.frame.width * 0.4
        tangram.azulClaro.frame.origin.y = tangram.laranja.center.y
        
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: 45)
        tangram.amarelo.center.x = tangram.cian.center.x + tangram.amarelo.frame.width * 0.5
        tangram.amarelo.center.y = tangram.cian.center.y + tangram.amarelo.frame.height * 0.171
        
        //azulescuro
        tangram.azulEscuro.prepare(scale, rotate: 45)
        tangram.azulEscuro.center.x = tangram.verde.center.x
        tangram.azulEscuro.center.y = tangram.azulClaro.center.y + tangram.azulEscuro.frame.width * 0.15
    }

   
}
