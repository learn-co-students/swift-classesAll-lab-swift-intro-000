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
        if self.inFlight {
            if self.altitude != self.maxAltitude && self.speed != 0 {
                self.altitude += self.maxAltitude/5.0
                self.decelerate()
                if self.altitude >= self.maxAltitude {
                    self.altitude = self.maxAltitude
                }
                if self.speed <= 0 {
                    self.speed = 0
                }
            }
        }
    } // climb
    
    override func dive() {
        if self.inFlight {
            if self.altitude != self.maxAltitude && self.speed != 0 {
                self.altitude -= self.maxAltitude/5.0
                self.accelerate()
                if self.altitude <= 0 {
                    self.altitude = 0
                }
                if self.speed >= self.maxSpeed {
                    self.speed = self.maxSpeed
                }
            }
        }
    } // dive
    
    func afterburner() {
        if self.inFlight && self.speed == self.maxSpeed {
            self.speed *= 2
        }
    }
    
}
