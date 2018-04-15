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
        altitude += 1/5 * maxAltitude
        super.decelerate()
    }
    
    override func dive() {
        guard inFlight else { return }
        altitude -= 1/5 * maxAltitude
        super.accelerate()
    }
    
    override var megaSpeed: Double {
        return maxSpeed * 2.0
    }
    
    func afterburner() {
        guard speed == maxSpeed else { return }
        speed = 2 * maxSpeed
    }
}
