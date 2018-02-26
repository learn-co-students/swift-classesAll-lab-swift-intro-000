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
        if altitude + maxAltitude / 5 < maxAltitude {
            altitude += maxAltitude / 5
        } else {
            altitude = maxAltitude
        }
    }
    
    override func dive() {
        if altitude - maxAltitude / 5 > 0 {
            altitude -= maxAltitude / 5
        } else {
            altitude = 0
        }
    }
    
    func afterburner() {
        if speed == maxSpeed {
            speed *= 2
        }
    }
}
