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
        if inFlight != false {
            altitude += 0.2 * maxAltitude
            decelerate()
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            if speed < 0 {
                speed = 0
            }
        }
    }
    
    override func dive() {
        if inFlight != false {
            altitude -= 0.2 * maxAltitude
            accelerate()
            if altitude < 0 {
                altitude = 0
            }
            if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = 2 * maxSpeed
        }
    }
}
