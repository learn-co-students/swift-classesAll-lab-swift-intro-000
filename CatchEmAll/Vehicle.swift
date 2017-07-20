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
    var speed: Double
    var heading: Double
    

    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        heading = 0.0
        speed = 0.0
    }
    
    enum Transmission {
        case Automatic
        case Manual
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        speed = speed + 0.1 * maxSpeed
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        speed = speed - 0.1 * maxSpeed
        if speed < 0 {
            speed = 0
        }
    }
    
    func turnRight() {
        
        if speed > 0 {
            heading += 90
            speed = 1/2 * speed
            if heading > 360 {
                heading = heading - 360
            }
        }
    }
    
    func turnLeft() {
        
        if speed > 0 {
            heading -= 90
            speed = 1/2 * speed
            if heading < 0 {
                heading = 360 + heading
            }
        }
    }
}
