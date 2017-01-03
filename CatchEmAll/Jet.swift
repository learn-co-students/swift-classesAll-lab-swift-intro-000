//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    override func climb() {
        altitude += altitude/5
        speed -= speed/10
    }
    
    override func dive() {
        altitude -= altitude/5
        speed += speed/10
    }
    
    func afterburner() {
        guard speed == maxSpeed else {return}
        speed = maxSpeed*2
    }
}
