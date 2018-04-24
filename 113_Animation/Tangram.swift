//
//  Trangram.swift
//  113_Animation
//
//  Created by camila oliveira on 8/21/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Tangram: UIView {

    
    var cian : Forma!
    var verde : Forma!
    var laranja : Forma!
    var azulClaro : Forma!
    var amarelo : Forma!
    var vermelho : Forma!
    var azulEscuro : Forma!
    var lado : CGFloat!
  
    override init(frame: CGRect) {
        println("dafdfasdfasdfas")
        super.init(frame: frame)
        
            lado = frame.size.width
            
            amarelo = Triangulo(frame: CGRectMake(
                0,
                0,
                lado * 0.355,
                lado * 0.705),
                color: Colors.amarelo)
            
            azulClaro = Triangulo(frame: CGRectMake(
                0,
                0,
                lado * 0.252,
                lado * 0.505),
                color: Colors.azulClaro)
            
            cian = Triangulo(frame: CGRectMake(
                0,
                0,
                lado * 0.5,
                lado * 1),
                color: Colors.cian)
            
            laranja = Triangulo(frame: CGRectMake(
                0,
                0,
                lado * 0.5,
                lado * 1),
                color: Colors.laranja)
            
            verde = Triangulo(frame: CGRectMake(
                0,
                0,
                lado * 0.252,
                lado * 0.505),
                color: Colors.verde)
            
            vermelho = Losangulo(frame: CGRectMake(
                0,
                0,
                lado * 0.505,
                lado * 0.505),
                color: Colors.vermelho)
            
            azulEscuro = Quadrilatero(frame: CGRectMake(
                0,
                0,
                lado * 0.751,
                lado * 0.251),
                color: Colors.azulEscuro)
            
            addSubviews()
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    private func addSubviews(){
        self.addSubview(laranja)
        self.addSubview(verde)
        self.addSubview(azulClaro)
        self.addSubview(azulEscuro)
        self.addSubview(vermelho)
        self.addSubview(amarelo)
        self.addSubview(cian)
    }


    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.backgroundColor = UIColor.clearColor()
//        self.backgroundColor = UIColor.purpleColor()
    }
    
    
    
    
    
        
   
    
        

    
}
