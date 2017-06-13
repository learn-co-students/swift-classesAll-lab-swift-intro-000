//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case Automatic
    case Manual
}
class Vehicle {
    

    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double
    var heading: Double
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        speed = 0.0
        heading = 0.0
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        speed += 0.1 * maxSpeed
        if speed >= maxSpeed {
            goFast()
        }
    }
    
    func decelerate() {
        speed -= 0.1 * maxSpeed
        if speed <= 0.0 {
            halt()
        }
    }
    
    func turnRight() {
        if speed > 0 {
            heading += 90
            speed /= 2
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading -= 90
            speed /= 2
            if heading < 0.0 {
                heading += 360
            }
        }
    }
    

    
    
    
    
}
