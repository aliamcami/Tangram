//
//  Cavalo.swift
//  113_Animation
//
//  Created by camila oliveira on 8/22/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Cavalo: DesenhosTangram {
      func paint (tangram: Tangram){
        var scale : CGFloat = 0.52
        //tangram.amarelo
        tangram.amarelo.prepare(scale, rotate: -90)
        tangram.amarelo.frame.origin.x = tangram.amarelo.frame.width * 0.45
        tangram.amarelo.frame.origin.y = 0
        
        //tangram.vermelho
        tangram.vermelho.prepare(scale, rotate: 45)
        tangram.vermelho.center.x = tangram.amarelo.center.x + tangram.vermelho.frame.width * 0.25
        tangram.vermelho.center.y = tangram.amarelo.center.y + tangram.vermelho.frame.height * 0.495
        
        //tangram.laranja
        tangram.laranja.prepare(scale, rotate: -45)
        tangram.laranja.center.x = tangram.amarelo.center.x + tangram.laranja.frame.width * 0.17
        tangram.laranja.center.y = tangram.vermelho.center.y + tangram.laranja.frame.height * 0.333
        
        //tangram.verde
        tangram.verde.prepare(scale, rotate: -90)
        tangram.verde.center.x = tangram.amarelo.frame.origin.x
        tangram.verde.center.y = tangram.vermelho.center.y + tangram.verde.frame.height * 1.2
        
        //tangram.cian
        tangram.cian.prepare(scale, rotate: 0)
        tangram.cian.frame.origin.y = tangram.laranja.frame.origin.y + tangram.cian.frame.height * 0.345
        tangram.cian.center.x = tangram.laranja.center.x + tangram.cian.frame.width * 0.85
        
        //azul claro
        tangram.azulClaro.prepare(scale, rotate: 45)
        tangram.azulClaro.center.x = tangram.vermelho.center.x + tangram.azulClaro.frame.width * 0.17
        tangram.azulClaro.center.y = tangram.cian.center.y + tangram.azulClaro.frame.height * 1.1
        
        //azulescuro - ta o contrario, mas to com preguica de refazer tudo.. droga
        tangram.azulEscuro.prepare(scale, rotate: 90)
        tangram.azulEscuro.frame.origin.y = tangram.cian.center.y
        tangram.azulEscuro.frame.origin.x = tangram.cian.frame.origin.x + tangram.cian.frame.size.width
        
    }

}
