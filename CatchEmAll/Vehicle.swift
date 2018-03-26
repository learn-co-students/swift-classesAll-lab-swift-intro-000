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
        self.speed = 0.0
        self.heading = 0
    }
    
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        if speed + (0.1 * maxSpeed) <= maxSpeed {
            speed += 0.1 * maxSpeed 
        }
        else {
            goFast()
        }
    }
    
    func decelerate() {
        if speed - (0.1 * maxSpeed) >= 0.0 {
            speed -= 0.1 * maxSpeed
        }
        else {
            halt()
        }
    }
    
    func turnRight() {
        if speed != 0.0 {
            heading = (heading + 90.0).headingMod360
            speed -= speed * 0.5
        }
    }
    
    func turnLeft() {
        if speed != 0.0 {
            heading = (heading - 90.0).headingMod360
            speed -= speed * 0.5
        }
    }
}


enum Transmission {
    
    case Automatic
    case Manual
}


extension Double {
    
    var headingMod360: Double {
        return (self + 360).truncatingRemainder(dividingBy: 360)
    }
}







