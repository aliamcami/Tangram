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
    var context : CGContextRef!
    
    init(frame: CGRect, color : UIColor) {
        super.init(frame: frame)
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
        super.layoutSubviews()
        self.backgroundColor = UIColor.clearColor()
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
