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
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        speed = speed + ((1/10) * maxSpeed)
        
        if speed > maxSpeed {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        speed = speed - ((1/10) * maxSpeed)
        
        if speed < 0 {
            speed = 0
        }
    }
    
    func turnRight() {
        
        if speed > 0 {
        heading = heading + 90
        speed = speed * 0.5
        
        if heading > 360 {
            heading = heading - 360
        }
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading = heading - 90
            speed = speed * 0.5
            
            if heading < 0 {
                heading = heading + 360
            }
        }
        
        
    }
    
    enum Transmission {
        case Automatic
        case Manual
    }
    
    
    
}




/*

 A variable Double named heading. (Note that this property should only accept values in the range 0 to 360.)
 */
