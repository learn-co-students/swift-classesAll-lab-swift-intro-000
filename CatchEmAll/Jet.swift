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
        var testAltitude = altitude + 0.2 * maxAltitude
        if inFlight == true {
            if testAltitude <= maxAltitude {
                altitude += 0.2 * maxAltitude
                decelerate()
            } else {
                altitude = maxAltitude
                decelerate()
            }
        }
    }
    
    override func dive() {
        var testAltitude = altitude - 0.2 * maxAltitude
        if inFlight == true {
            if testAltitude > 0 {
                altitude -= 0.2 * maxAltitude
                accelerate()
            } else {
                altitude = 0
                accelerate()
            }
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = 2.0 * maxSpeed
        }
    }
    
    
}
