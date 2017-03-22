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
    var speed: Double = 0
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
        
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        if speed < maxSpeed/10 {
        speed += maxSpeed/10
        } else {
            speed = maxSpeed
        }
    }
    
    func decelerate() {
        let incriment = maxSpeed/10
        if speed < incriment {
            speed = 0
        } else {
            speed -= incriment
        }
    }
    
    func turnRight() {
       heading += 90
       speed = speed/10
        if heading > 360 {
            heading -= 360
        }
    }
    
    func turnLeft() {
        heading -= 90
        speed = speed/10
        if heading < 0 {
            heading += 360
        }
    }
    
}

enum Transmission {
    case Automatic, Manuel
}
/*
 A constant String named name
 A constant Double named weight
 A constant Double named maxSpeed
 A variable Double named speed
 A variable Double named heading. (Note that this property should only accept values in the range 0 to 360.)
 Vehicle should also have an initializer that takes name,weight, andmaxSpeedas parameters, and sets the appropriate properties. It should also setspeedandheading` to 0.0.
 You should also add these methods to Vehicle. These methods take no parameters and return no values.
 goFast(), which sets the vehicle's speed to its maxSpeed.
 halt(), which sets the vehicle's speed to 0.
 accelerate(), which increases the vehicle's speed by ⅒ its maxSpeed. It cannot increase the vehicle's speed beyond its maxSpeed.
 decelerate(), which decreases the vehicle's speed by ⅒ its maxSpeed. It cannot decrease the vehicle's speed below 0.
 turnRight(), which increases the vehicle's heading by 90 and cuts its speed in half. If the vehicle's heading increases beyond 360, it wraps around again (that is, if the heading would be increased to 375, it wraps around to 15 again). The vehicle cannot turn if it is stationary (has a speed of 0).
 turnLeft() which decreases the vehicle's heading by 90 and cuts its speed in half. If the vehicle's heading decreases below 0, it wraps around again (that is, if it would decrease to -15, it would instead wrap around to 345). The vehicle cannot turn if it is stationery (has a speed of 0).

 */
