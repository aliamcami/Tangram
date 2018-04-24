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
        desenho = UIBezierPath()
        
        //ponto inicial
        let pontoInicial = CGPointMake(rect.size.width/2, 0)
        desenho.moveToPoint(CGPoint(x: pontoInicial.x, y: pontoInicial.y))
        
        //proximos pontos
        desenho.addLineToPoint(CGPoint(x: rect.size.width, y: rect.size.height/2))
        desenho.addLineToPoint(CGPoint(x: rect.size.width/2 ,y: rect.size.height))
        desenho.addLineToPoint(CGPoint(x: 0, y: rect.size.height/2))
        
        //ponto final
        desenho.addLineToPoint(CGPoint(x: pontoInicial.x, y: pontoInicial.y))
        desenho.closePath()
        
        //preenche com cor
        color.setFill()
        desenho.fill()
        
        //stroke
        UIColor.clearColor().setStroke()
        desenho.stroke()
        
        
      }

}
