//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    let maxAltitude: Double
    var altitude: Double
    var inFlight: Bool {
        if altitude > 0 && speed > 0 {
            return true
        }
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        if self.inFlight == false {
            speed = maxSpeed * 0.10
            self.altitude = self.maxAltitude * 0.10
        }
    }
    
    func land() {
        speed = 0
        self.altitude = 0
    }
    
    func climb() {
        if self.inFlight == true {
            self.altitude += self.maxAltitude * 0.10
            if self.altitude > self.maxAltitude {
                self.altitude = self.maxAltitude
            }
            
            decelerate()
        }
    }
    
    func dive() {
        if self.inFlight == true {
            self.altitude -= self.maxAltitude * 0.10
            if self.altitude < 0 {
                self.altitude = 0
            }
            
            accelerate()
        }
    }
    
    func bankRight() {
        if self.inFlight == true {
            heading += 45
            if heading > 360 {
                heading -= 360
            }
            
            speed -= speed * 0.10
        }
    }
    
    func bankLeft() {
        if self.inFlight == true {
            heading -= 45
            if heading < 0 {
                heading = 360 - abs(heading)
            }
            
            speed -= speed * 0.10
        }
    }
}

















