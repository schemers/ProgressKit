//
//  InDeterminateAnimation.swift
//  ProgressKit
//
//  Created by Kauntey Suryawanshi on 09/07/15.
//  Copyright (c) 2015 Kauntey Suryawanshi. All rights reserved.
//

import Foundation
import Cocoa

protocol InDeterminable {
    func startAnimation()
    func stopAnimation()
}

class InDeterminateAnimation: NSView, InDeterminable {
    
    var animate: Bool = false {
        didSet {
            if animate {
                self.hidden = false
                startAnimation()
            } else {
                self.hidden = true
                stopAnimation()
            }
        }
    }
    func startAnimation() {
        fatalError("This is an abstract function")
    }
    func stopAnimation() {
        fatalError("This is an abstract function")
    }
}