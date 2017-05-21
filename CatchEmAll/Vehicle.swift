//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String;
    let weight: Double;
    let maxSpeed: Double;
    var speed: Double;
    var heading: Double;
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name;
        self.weight = weight;
        self.maxSpeed = maxSpeed;
        self.speed = 0.0;
        self.heading = 0.0;
    }
    
    func goFast() {
        speed = maxSpeed;
    }
    
    func halt() {
        speed = 0;
    }
    
    func accelerate() {
        speed += ((1/10) * maxSpeed);
        
        if (speed > maxSpeed) {
            speed = maxSpeed;
        }
    }
    
    func decelerate() {
        speed -= ((1/10) * maxSpeed);
        
        if (speed < 0) {
            speed = 0;
        }
    }
    
    func turnRight() {
        guard (speed > 0) else { return; }
        
        heading += 90;
        
        if (heading > 360) {
            heading -= 360;
        }
        
        speed /= 2;
    }
    
    func turnLeft() {
        guard (speed > 0) else { return; }
        
        heading -= 90;
        
        if (heading < 0) {
            heading += 360;
        }
        
        speed /= 2;
    }
}

enum Transmission {
    case Automatic;
    case Manual;
}

