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
        if !inFlight { return }
        altitude += maxAltitude / 5
        decelerate()
        if altitude > maxAltitude { altitude = maxAltitude }

    }
    
    override func dive() {
        if !inFlight { return }
        altitude -= maxAltitude / 5
        accelerate()
        if altitude < 0 { altitude = 0 }
    }
    
    func afterburner() {
        if speed != maxSpeed { return }
        speed = maxSpeed * 2
    }
}
