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
        guard inFlight else { return }
        altitude += (maxAltitude / 5.0)
        super.decelerate()
    }
    
    override func dive() {
        guard inFlight else { return }
        altitude -= (maxAltitude / 5.0)
        super.accelerate()
    }
    
    func afterburner() {
        if speed == maxSpeed && inFlight{
            speed = maxSpeed * 2.0
        }
    }
}
