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
            if (altitude + (0.2 * maxAltitude)) <= maxAltitude {
                altitude += 0.2 * maxAltitude
                decelerate()
            }
            else {
                altitude = maxAltitude
                decelerate()
            }
        }
    }
    
    override func dive() {
        if inFlight {
            if (altitude - (0.2 * maxAltitude)) >= 0 {
                altitude -= 0.2 * maxAltitude
                accelerate()
            }
            else if (altitude - (0.2 * maxAltitude)) < 0.0 {
                altitude = 0.0
                accelerate()
            }
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
