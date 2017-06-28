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
        if altitude != 0 {
            altitude += maxAltitude * (1/5)
            decelerate()
            if speed < 0 {
                speed = 0
            }
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
    }
    
    override func dive() {
        if altitude != 0 {
            altitude -= maxAltitude * (1/5)
            accelerate()
        }
        if altitude < 0 {
            altitude = 0
        }
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
