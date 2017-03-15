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
    
    init(name: String, weight: Double, maxSpeed: Double){
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast(){
        speed = maxSpeed
    }
    
    func halt(){
        speed = 0
    }
    
    func accelerate(){
        if speed + (maxSpeed/10) > maxSpeed{
                speed = maxSpeed
        } else {
            speed += (maxSpeed/10)
        }
    }
    
    func decelerate(){
        if speed - (maxSpeed/10) < 0 {
            speed = 0
        } else {
            speed -= (maxSpeed/10)
        }
    }
    
    func turnRight(){
        if speed > 0 {
            if heading + 90 >= 360 {
                heading -= 270
            } else {
                heading += 90
            }
            speed = speed/2
            
        }
    }
    
    func turnLeft(){
        if speed > 0 {
            if heading - 90 < 0 {
                heading += 270
            } else {
                heading -= 90
            }
            speed = speed/2
        }
    }
    
}

enum Transmission: Int {
    case Automatic
    case Manual
}

































