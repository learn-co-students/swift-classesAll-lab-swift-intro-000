//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case Automatic, Manual
}

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double
    var heading: Double
    var speedIncrease: Double {
        return maxSpeed * 0.1
    }
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = 0.0
        self.heading = 0.0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        guard speed != maxSpeed else { return }
        speed += speedIncrease
    }
    
    func decelerate() {
        guard speed != 0 else { return }
        speed -= speedIncrease
    }
    
    func turnRight() {
        guard speed > 0.0 else { return }
        heading += 90.0
        speed /= 2.0
    }
    
    func turnLeft() {
        guard speed > 0.0 else { return }
        heading -= 90.0
        speed /= 2.0
    }
}
