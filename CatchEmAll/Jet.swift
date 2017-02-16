//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    override var megaSpeed: Double {
        return maxSpeed * 2.0
    }
    
    
    override func climb() {
        guard inFlight else {return}
        altitude += maxAltitude/5
        speed -= maxSpeed/10
    }
    
    override func dive() {
        guard inFlight else {return}
        altitude -= maxAltitude/5
        speed += maxSpeed/10
    }
    
    func afterburner() {
        guard speed == maxSpeed else {return}
        speed = maxSpeed*2
    }
}
