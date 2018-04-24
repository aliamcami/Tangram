//
//  Colors.swift
//  113_Animation
//
//  Created by camila oliveira on 8/21/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class Colors: NSObject {
    static var cian = Colors.RGB(130, green: 197, blue: 181)
    static var verde = Colors.RGB(18, green: 136, blue: 39)
    static var laranja = Colors.RGB(247, green: 166, blue: 40)
    static var amarelo = Colors.RGB(248, green: 231, blue: 10)
    static var azulClaro = Colors.RGB(45, green: 165, blue: 224)
    static var azulEscuro = Colors.RGB(9, green: 72, blue: 133)
    static var vermelho = Colors.RGB(223, green: 48, blue: 33)
    
    class func RGB (red : CGFloat, green : CGFloat, blue : CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
