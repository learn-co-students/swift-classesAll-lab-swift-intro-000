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
            if altitude + (1/5) * maxAltitude < maxAltitude {
                altitude = altitude + (1/5) * maxAltitude
            } else {
                altitude = maxAltitude
            }
            decelerate()
        }
    }
    
    override func dive() {
        if inFlight {
            if altitude - (1/5) * maxAltitude > 0 {
                altitude = altitude - (1/5) * maxAltitude
            } else {
                altitude = 0
            }
            accelerate()
        }
    }
    
    func afterburner() {
        if (speed == maxSpeed) {
            speed = maxSpeed*2
        }
    }
}
