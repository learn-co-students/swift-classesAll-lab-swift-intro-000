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
        if (self.altitude > 0 && self.speed > 0) {
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if inFlight == false {
            self.speed += ((1/10) * self.maxSpeed)
            self.altitude += ((1/10) * self.maxAltitude)
        }
    }
    
    func land() {
        self.speed = 0
        self.altitude = 0
    }
    
    func climb() {
        if inFlight == true {
            if ((self.altitude + ((1/10) * self.maxAltitude)) <= maxAltitude) {
                self.altitude += ((1/10) * self.maxAltitude)
                } else {
                self.altitude = maxAltitude
            }
            
        self.decelerate()
        }
        
    }
    
    func dive() {
        if inFlight == true {
            if ((self.altitude - ((1/10) * self.maxAltitude)) >= 0.0) {
                self.altitude -= ((1/10) * self.maxAltitude)
            } else {
                self.altitude = 0
            }
            
            self.accelerate()
        }
        
    }
    
    func bankRight() {
        if inFlight == true {
            self.heading += 45
            self.speed -= ((1/10)*self.speed)
        }
        
        if self.heading > 360 {
            self.heading -= 360
        }
    }
    
    func bankLeft() {
        if inFlight == true {
            self.heading -= 45
            self.speed -= ((1/10)*self.speed)
        }
        
        if self.heading < 0 {
            self.heading += 360
        }
    }
}
