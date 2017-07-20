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
            altitude = altitude + 1/5 * maxAltitude
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            self.decelerate()
            if speed < 0 {
                speed = 0
            }
        }
    }
    
    override func dive() {
        if inFlight {
            altitude = altitude - 1/5 * maxAltitude
            if altitude < 0 {
                altitude = 0
            }
            self.accelerate()
            if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    
    func afterburner() {
        if(speed == maxSpeed) {
            speed = 2 * maxSpeed
        }
        
    }
}
