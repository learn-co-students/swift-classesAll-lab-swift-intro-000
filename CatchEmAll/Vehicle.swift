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
    
    
    init (name: String, weight: Double, maxSpeed: Double) {
        
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
        
        if (speed+(maxSpeed/10.0)) < maxSpeed {
            
            speed = speed + (maxSpeed/10.0)
        } else if speed >= maxSpeed*9.0/10.0 {
                speed = maxSpeed
        }
            
    
        
    }

    func decelerate() {
        
        if (speed-(maxSpeed/10.0)) > 0.0 {
            speed -= (maxSpeed/10.0)
        } else if speed <= maxSpeed/10.0 {
            
           speed = 0.0
        }
    }
    
    func turnRight() {
        
        if speed > 0.0 {
            speed = speed/2.0
            if heading <= 270.0 {
                heading = heading+90.0
            } else {
                heading = (heading + 90.0) - 360.0
            }
            
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            speed = speed/2.0
            if heading >= 90.0 {
                heading = heading-90.0
            } else {
                heading = 360+(heading - 90.0)
            }
            
        }

    }
}
enum Transmission: String {
    case Automatic
    case Manual
}


