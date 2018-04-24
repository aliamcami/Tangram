//
//  ViewController.swift
//  113_Animation
//
//  Created by camila oliveira on 8/21/15.
//  Copyright (c) 2015 camila oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tangram : Tangram!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        
        let lado = min(self.view.bounds.width, self.view.bounds.height)
         tangram = Tangram(frame: CGRectMake(
            self.view.bounds.width/2 - lado/2,
            self.view.bounds.height/2 - lado/2,
            lado,
            lado
            ))
        Quadrado().paint(tangram)
        self.view.addSubview(tangram)
        
        self.view.userInteractionEnabled = true
        addGestures()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        UIView.animateWithDuration(0.5, animations: {
            self.tangram.frame.origin.x = self.view.bounds.width/2 - self.tangram.frame.width/2
            self.tangram.frame.origin.y = self.view.bounds.height/2 - self.tangram.frame.height/2
        })
        
        self.tangram.reloadInputViews()
    }

    //MARK: gestures
    let selector : Selector = "animateTangram:"
    private var gestureDictionary = NSMutableDictionary()
    func addGestures(){
        //coelho UP
        var swipeUp = UISwipeGestureRecognizer(target: self, action: selector)
        swipeUp.direction  = UISwipeGestureRecognizerDirection.Up
        gestureDictionary.setObject(Coelho(), forKey: "\(swipeUp.hashValue)")
        
        //cachorro DOWN
        var swipeDown = UISwipeGestureRecognizer(target: self, action: selector)
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        gestureDictionary.setObject(Cachorro(), forKey: "\(swipeDown.hashValue)")
        
        //cavalo LEFT
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: selector)
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        gestureDictionary.setObject(Cavalo(), forKey: "\(swipeLeft.hashValue)")
        
        //cisne RIGHT
        var swipeRight = UISwipeGestureRecognizer(target: self, action: selector)
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        gestureDictionary.setObject(Cisne(), forKey: "\(swipeRight.hashValue)")
        
        //gato TAP
        var tap = UITapGestureRecognizer(target: self, action: selector)
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        gestureDictionary.setObject(Gato(), forKey: "\(tap.hashValue)")
        
        //peixe DOUBLE TAP
        var doubleTap = UITapGestureRecognizer(target: self, action: selector)
        doubleTap.numberOfTapsRequired = 2
        doubleTap.numberOfTouchesRequired = 1
        gestureDictionary.setObject(Peixe(), forKey: "\(doubleTap.hashValue)")
        
        //barco TRIPLE TAP
        var tribleTap = UITapGestureRecognizer(target: self, action: selector)
        tribleTap.numberOfTapsRequired = 3
        tribleTap.numberOfTouchesRequired = 1
        gestureDictionary.setObject(Barco(), forKey: "\(tribleTap.hashValue)")
        
        //casa TWO FINGER TAP - nao tinha entao adicionei
        var twoFingerTap = UITapGestureRecognizer(target: self, action: selector)
        twoFingerTap.numberOfTapsRequired = 1
        twoFingerTap.numberOfTouchesRequired = 2
        gestureDictionary.setObject(Casa(), forKey: "\(twoFingerTap.hashValue)")
        
        //forma inicial LONG PRESS 2 fingers
        var longPress2Fingers = UILongPressGestureRecognizer(target: self, action: selector)
        longPress2Fingers.numberOfTouchesRequired = 2
        gestureDictionary.setObject(Quadrado(), forKey: "\(longPress2Fingers.hashValue)")
        
        //RANDOM
        var twoFingerDoubleTap = UITapGestureRecognizer(target: self, action: "randomize")
        twoFingerDoubleTap.numberOfTapsRequired = 2
        twoFingerDoubleTap.numberOfTouchesRequired = 2
        
        
        //requires to fail
        twoFingerTap.requireGestureRecognizerToFail(twoFingerDoubleTap)
        tap.requireGestureRecognizerToFail(doubleTap)
        doubleTap.requireGestureRecognizerToFail(tribleTap)
        
        self.view.addGestureRecognizer(twoFingerDoubleTap)
        self.view.addGestureRecognizer(swipeDown)
        self.view.addGestureRecognizer(swipeLeft)
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeUp)
        self.view.addGestureRecognizer(tap)
        self.view.addGestureRecognizer(doubleTap)
        self.view.addGestureRecognizer(tribleTap)
        self.view.addGestureRecognizer(twoFingerTap)
        self.view.addGestureRecognizer(longPress2Fingers)
    }
    
    func randomize(){
        var rand = Int(arc4random()) % gestureDictionary.count
        var valor: AnyObject = gestureDictionary.allValues[rand]
        paintTangramWithAnimation((valor as? DesenhosTangram)!)
        
    }
    
    private func paintTangramWithAnimation(desenhoTang : DesenhosTangram){
        UIView.animateWithDuration(1,
            delay: 0,
            options: nil,
            animations: {
                desenhoTang.paint(self.tangram)
            }, completion: nil)
    }
  
    func animateTangram(sender : UIGestureRecognizer){
        var valor: AnyObject? = self.gestureDictionary.valueForKey("\(sender.hashValue)")
        paintTangramWithAnimation((valor as? DesenhosTangram)!)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

