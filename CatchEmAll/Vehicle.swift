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
        self.heading = 0.0
    }
    
    func goFast() {
        
        speed = maxSpeed
    }
    
    func halt() {
        
        speed = 0.0
    }
    
    func accelerate() {
        
        let increaseRate = (maxSpeed) * 1/10
        
        if speed + increaseRate <= maxSpeed {
            
            speed += increaseRate
            
        } else {
            
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        
        let decreaseRate = (maxSpeed) * 1/10
        
        if speed - decreaseRate >= 0 {
            
            speed -= decreaseRate
            
        } else {
            
            speed = 0.0
        }
    }
    
    func turnRight() {
        
        let speedDecreaseRate = speed / 2
        
        if speed != 0 {
            
            heading += 90
            speed -= speedDecreaseRate
            
            if heading >= 360 {
                
                heading -= 360
            }
        }
    }
    
    func turnLeft() {
        
        let speedDecreaseRate = speed / 2
        
        if speed != 0 {
            
            heading -= 90
            speed -= speedDecreaseRate
            
            if heading < 0 {
                
                heading += 360
            }
        }
    }
    
    
}

enum Transmission {
    
    case Automatic
    case Manual
}
