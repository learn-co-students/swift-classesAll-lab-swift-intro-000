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
            if speed > maxSpeed {
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
            
            while heading > 360 {
                heading -= 360.0
            }
        }
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
        speed += speed + maxSpeed*(1/10)
    }
    
    func decelerate() {
        speed -= speed + maxSpeed*(1/10)
    }
    
    func turnRight() {
        if speed > 0.0 {
            heading += 90.0
            speed = speed/2
        }
    }
    
    func turnLeft() {
        if speed > 0.0 {
            heading -= 90.0
            speed = speed/2
        }
    }
}

enum Transmission {
    case Automatic
    case Manual
}
