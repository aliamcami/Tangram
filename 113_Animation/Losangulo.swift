//
//  Losangulo.swift
//  113_Animation
//
//  Created by camila oliveira on 8/21/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Losangulo: Forma {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        //cria contexto
        context = UIGraphicsGetCurrentContext()
        
        //ponto inicial
        let pontoInicial = CGPointMake(rect.size.width/2, 0)
        CGContextMoveToPoint(context, pontoInicial.x, pontoInicial.y)
        
        //proximos pontos
        CGContextAddLineToPoint(context, rect.size.width, rect.size.height/2)
        CGContextAddLineToPoint(context,rect.size.width/2 , rect.size.height)
        CGContextAddLineToPoint(context, 0, rect.size.height/2)
        
        //ponto final
        CGContextAddLineToPoint(context, pontoInicial.x, pontoInicial.y)
        
        //preenche com cor
        CGContextSetFillColorWithColor(context,color.CGColor)
        CGContextFillPath(context)
        
        super.drawRect(rect)
    }

}
