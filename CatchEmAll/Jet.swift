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
            if altitude >= maxAltitude/5 * 4 {
                altitude = maxAltitude
                decelerate()
            } else {
                decelerate()
                altitude += maxAltitude/5
            }
        }
    }

    
    override func dive() {
        if inFlight {
            if altitude <= maxAltitude/5 {
                altitude = 0
                accelerate()
            } else {
                altitude -= maxAltitude/5
                accelerate()
            }
        }
    }
    
    
    func afterburner() {
        if speed == maxSpeed {
            speed = 2.0*maxSpeed
        }
    }
    
    
}
