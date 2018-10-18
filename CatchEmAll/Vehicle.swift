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
    var speed: Double {
        didSet {
            if speed > extraSpeed {
                speed = maxSpeed
            }
            
            if speed < 0.0 {
                speed = 0.0
            }
        }
    }
    
    var heading: Double {
        didSet {
            while heading < 0.0 {
                heading += 360.0
            }
            
            while heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    
    var extraSpeed: Double {
        return maxSpeed
    }
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = 0.0
        self.heading = 0.0
    }
    
    func goFast() {
        self.speed = maxSpeed
    }
    
    func halt() {
        self.speed = 0.0
    }
    
    func accelerate() {
        if self.speed < maxSpeed {
            self.speed += 1/10 * maxSpeed
        }
    }
    
    func decelerate() {
        if self.speed > 0 {
            self.speed -= 1/10 * maxSpeed
        }
    }
    
    func turnRight() {
        guard speed > 0.0 else { return }
        self.heading += 90
        self.speed /= 2
    }
    
    func turnLeft() {
        guard speed > 0.0 else { return }
        self.heading -= 90
        self.speed /= 2
    }
    
    enum Transmission {
        case Automatic, Manual
    }
}
