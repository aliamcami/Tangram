//
//  Formas.swift
//  113_Animation
//
//  Created by camila oliveira on 8/21/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Forma: UIView {
    var color : UIColor = UIColor.blackColor()
    var originalTransform : CGAffineTransform!
    var desenho : UIBezierPath!
    var rect : CGRect!
    var shapeLayer: CAShapeLayer!
    
    func changeToColor(col : UIColor){

        println("-------------------BLABLABLALBA")

        
        
        
        println("-------------------BLABLABLALBA")
        
        
    }
    
    
    func backToOriginalColor(){
        changeToColor(self.color)
    }
    
    
    init(frame: CGRect, color : UIColor) {
        super.init(frame: frame)
        println("INIT")
        self.rect = frame
        shapeLayer = CAShapeLayer()
        self.originalTransform = self.transform
        self.color = color
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func rotate(graus : CGFloat){
        self.transform = CGAffineTransformRotate(self.transform, graus * 0.0174532925)
    }
    
    override func layoutSubviews() {
        println("laytout subviews")
        super.layoutSubviews()
        self.backgroundColor = UIColor.clearColor()
//        self.backgroundColor = UIColor.purpleColor()
    }
    
    func scale (scale :  CGFloat){
        self.transform = CGAffineTransformScale(self.transform, scale, scale)
    }
    
    func backToOriginal(){
        self.transform = self.originalTransform
    }
    
    func prepare(scale : CGFloat, rotate : CGFloat){
        self.backToOriginal()
        self.scale(scale)
        self.rotate(rotate)
    }
}
