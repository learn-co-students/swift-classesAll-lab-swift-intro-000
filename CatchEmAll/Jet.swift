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
            let increase = self.maxAltitude * 0.2
            let decrease = self.maxSpeed * 0.1
            if !(self.altitude + increase > self.maxAltitude) && !(self.speed - decrease < 0) {
                self.altitude += increase
                self.decelerate()
            }
        }
    }
    override func dive() {
        if self.inFlight {
            let decrease = self.maxAltitude * 0.2
            let increase = self.maxSpeed * 0.1
            if !(self.altitude - decrease < 0) && !(self.speed + increase > self.maxSpeed) {
                self.altitude -= decrease
                self.accelerate()
            }
        }
    }
    func afterburner() {
        if self.speed == maxSpeed {
            self.speed *= 2
        }
    }
}
