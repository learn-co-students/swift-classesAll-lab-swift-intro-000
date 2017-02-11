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
        if inFlight {
            altitude += maxAltitude * 0.2
            speed -= maxSpeed * 0.1
        guard maxAltitude > altitude else {return altitude = maxAltitude}
        guard speed >= 0 else {return speed = 0}
        }
    }
    
    override func dive() {
        if inFlight {
            altitude -= maxAltitude * 0.2
            speed += maxSpeed * 0.1
        guard altitude > 0 else {return altitude = 0}
        guard maxSpeed >= speed else {return speed = maxSpeed}
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
//Finally, you should implement a class called Jet in Jet.swift. It should inherit from Plane.
//The Jet class should override two of methods from Plane:
//Override climb() to increase the jet's altitude by ⅕ of its maxAltitude. Otherwise, the same rules for Plane's climb() should apply.
//Override dive() to dcrease the jet's altitude by ⅕ of its maxAltitude. Otherwise, the same rules for Plane's dive() should apply.
//The Jet class should also add one new method, which takes no parameters and returns no value:
//afterburner(), which sets the jet's speed to twice its maxSpeed, but only if the jet is already flying at its maxSpeed.
