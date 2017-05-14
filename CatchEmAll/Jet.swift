//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

//Finally, you should implement a class called Jet in Jet.swift. It should inherit from Plane.
//The Jet class should override two of methods from Plane:
//Override climb() to increase the jet's altitude by ⅕ of its maxAltitude. Otherwise, the same rules for Plane's climb() should apply.
//Override dive() to dcrease the jet's altitude by ⅕ of its maxAltitude. Otherwise, the same rules for Plane's dive() should apply.
//The Jet class should also add one new method, which takes no parameters and returns no value:
//afterburner(), which sets the jet's speed to twice its maxSpeed, but only if the jet is already flying at its maxSpeed.

class Jet: Plane {
    override func climb() {
        if inFlight {
            altitude += maxAltitude/5
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            super.decelerate()
        }
    }
    override func dive() {
        if inFlight {
            altitude -= maxAltitude/5
            if altitude < 0 {
                altitude = 0
            }
            super.accelerate()
        }
    }
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed*2
        }
    }
}
