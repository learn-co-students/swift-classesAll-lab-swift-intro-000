//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        self.speed = maxSpeed
    }
    
    func halt() {
        self.speed = 0
    }
    
    func accelerate() {
        if ((self.speed+(1/10)*maxSpeed) <= maxSpeed) {
            self.speed += ((1/10)*maxSpeed)
        } else {
            self.speed = maxSpeed
        }
    }
    
    func decelerate() {
        if ((self.speed-(1/10)*maxSpeed) >= 0) {
            self.speed -= ((1/10)*maxSpeed)
        } else {
            self.speed = 0
        }
    }
    
    func turnRight() {
        
        if self.speed != 0.0 {
            self.speed *= 0.5
            self.heading += 90.0
        }
        
        if self.heading > 360 {
            self.heading -= 360
        }
    }
    
    func turnLeft() {
        
        if self.speed != 0.0 {
            self.speed *= 0.5
            self.heading -= 90.0
        }
        
        if self.heading < 0 {
            self.heading += 360
        }
    }
}

enum Transmission {
    case Automatic
    case Manual
}
