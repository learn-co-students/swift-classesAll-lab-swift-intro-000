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
        if inFlight == true {
            if ((self.altitude + ((1/5) * self.maxAltitude)) <= maxAltitude) {
                self.altitude += ((1/5) * self.maxAltitude)
            } else {
                self.altitude = maxAltitude
            }
            
            self.decelerate()
        }
    }
    
    override func dive() {
        if inFlight == true {
            if ((self.altitude - ((1/5) * self.maxAltitude)) >= 0.0) {
                self.altitude -= ((1/5) * self.maxAltitude)
            } else {
                self.altitude = 0
            }
            
            self.accelerate()
        }
    }
    
        func afterburner() {
            if(self.speed == self.maxSpeed) {
                self.speed = 2*self.maxSpeed
            }
        }
        
}
