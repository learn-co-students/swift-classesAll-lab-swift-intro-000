//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    var name: String
    var weight, maxSpeed, speed, heading: Double
    /*
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
            
            while heading > 360.0 {
                heading -= 360.0
            }
        }
    }
    */
    
    init(name:String, weight: Double, maxSpeed: Double) {
        speed = 0.0
        heading = 0.0
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        if speed < maxSpeed {
            speed += maxSpeed / 10
        } else {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        if speed > 0.0 {
            speed -= maxSpeed / 10
        } else {
            speed = 0.0
        }
    }
    
    func turnRight() {
        if speed > 0 {
            speed /= 2
            heading += 90
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed /= 2
            heading -= 90
            if heading < 0 {
                heading += 360
            }
        }
    }
}

enum Transmission {
    case Automatic, Manual
}























