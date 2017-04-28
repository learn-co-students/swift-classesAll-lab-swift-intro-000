//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        return self.altitude > 0 && self.speed > 0
    }
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    func takeOff() {
        if !self.inFlight {
            self.speed += self.maxSpeed * 0.1
            self.altitude += self.maxAltitude * 0.1
        }
    }
    func land() {
        self.speed = 0
        self.altitude = 0
    }
    func climb() {
        if self.inFlight {
            let increase = self.maxAltitude * 0.1
            let decrease = self.maxSpeed * 0.1
            if !(self.altitude + increase > self.maxAltitude) && !(self.speed - decrease < 0) {
                self.altitude += increase
                self.decelerate()
            }
        }
    }
    func dive() {
        if self.inFlight {
            let decrease = self.maxAltitude * 0.1
            let increase = self.maxSpeed * 0.1
            if !(self.altitude - decrease < 0) && !(self.speed + increase > self.maxSpeed) {
                self.altitude -= decrease
                self.accelerate()
            }
        }
    }
    func bankRight() {
        if self.inFlight {
            self.heading += 45
            if self.heading > 360 {
                self.heading -= 360
            }
            self.speed *= 0.9
        }
    }
    func bankLeft() {
        if self.inFlight {
            self.heading -= 45
            if self.heading < 0 {
                self.heading += 360
            }
            self.speed *= 0.9
        }
    }
}
