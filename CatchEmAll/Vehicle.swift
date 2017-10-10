//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name : String;
    let weight : Double;
    let maxSpeed : Double;
    var speed : Double;
    var heading : Double;
    
    init(name : String, weight : Double, maxSpeed : Double) {
        self.name = name;
        self.weight = weight;
        self.maxSpeed = maxSpeed;
        speed = 0.0;
        heading = 0.0
    }
    
    func goFast() {
        speed = maxSpeed;
    }
    
    func halt() {
        speed = 0;
    }
    
    func accelerate() {
        if((speed + maxSpeed * 0.1) <= maxSpeed) {
            speed += maxSpeed * 0.1;
        } else {
            speed = maxSpeed;
        }
    }
    
    func decelerate() {
        if((speed - maxSpeed * 0.1) > 0.0) {
            speed -= maxSpeed * 0.1;
        } else {
            speed = 0;
        }
    }
    
    func turnRight() {
        
        if(speed > 0) {
            heading += 90.0;
            if(heading > 360) {
                heading = heading - 360;
            }
            speed = speed/2.0;
        }
    }
    
    func turnLeft() {
        
        if(speed > 0) {
            heading -= 90.0;
            if(heading < 0) {
                heading = heading + 360;
            }
            speed = speed/2.0;
        }
    }
    
    enum Transmission {
        case Automatic
        case Manual
    }
}
