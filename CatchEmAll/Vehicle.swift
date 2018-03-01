//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case Automatic,Manual
}


class Vehicle {
    
    let name:String
    let weight:Double
    let maxSpeed:Double
    var speed:Double = 0.0
    var heading:Double = 0.0
    
    init(name:String,weight:Double,maxSpeed:Double) {
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
            speed = speed + ((1/10)*maxSpeed)
            if speed > maxSpeed {
                speed = maxSpeed
            }
        }
    }
    func decelerate() {
        if speed > 0.0 {
            speed = speed - ((1/10)*maxSpeed)
            if speed < 0.0 {
                speed = 0.0
            }
        }
    }
    func turnRight() {
        if heading >= 0.0 && heading <= 270.0 && speed != 0.0 {
            heading+=90.0
            speed = speed/2
        } else if heading > 270.0 && speed != 0.0 {
            heading = heading + 90.0 - 360.0
            speed = speed/2
        }
    }
    func turnLeft() {
        if heading >= 90.0 && heading <= 360.0 && speed != 0.0 {
            heading-=90.0
            speed = speed/2
        } else if heading < 90.0 && speed != 0.0 {
            heading = 360 - (90.0 - heading)
            speed = speed/2
        }
    }
    
    
}
















