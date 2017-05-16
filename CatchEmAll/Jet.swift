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
            let tempAlt = maxAltitude / 5
            if altitude <= maxAltitude - tempAlt {
                altitude += tempAlt
            } else {
                altitude = maxAltitude
            }
            
            decelerate()
        }

    }
    
    override func dive() {
        if inFlight {
            let tempAlt = maxAltitude / 5
            if altitude >= tempAlt {
                altitude -= tempAlt
            } else {
                altitude = 0
            }
            
            accelerate()
        }

    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
