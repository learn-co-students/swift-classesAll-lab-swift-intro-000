//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    override func climb() {
        if (inFlight) {
            self.altitude += 0.2*self.maxAltitude
            if (self.altitude > self.maxAltitude) {
                self.altitude = self.maxAltitude
            }
            
            decelerate()
        }
    }
    
    override func dive() {
        if (inFlight) {
            self.altitude -= 0.2*self.maxAltitude
            if (self.altitude < 0) {
                self.altitude = 0
            }
            
            accelerate()
        }
    }
    
    func afterburner() {
        if (self.speed == self.maxSpeed) {
            self.speed = self.maxSpeed * 2
        }
    }
}
