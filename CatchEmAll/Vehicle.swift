//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Transmission {
    case Automatic
    case Manual
}

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
        self.speed = 0.0;
        self.heading = 0.0;
    }
    
    func goFast() {
        self.speed = self.maxSpeed
    }
    
    func halt() {
        self.speed = 0;
    }
    
    func accelerate() {
        self.speed += self.maxSpeed*0.1
        if (self.speed > self.maxSpeed) {
            self.speed = self.maxSpeed
        }
    }
    
    func decelerate() {
        self.speed -= self.maxSpeed*0.1
        if (self.speed < 0) {
            self.speed = 0;
        }
    }
    
    func turnRight() {
        if (self.speed == 0) {
            return
        }
        self.speed = self.speed / 2;
        self.heading += 90;
        if (self.heading > 360) {
            self.heading -= 360
        }
    }
    
    func turnLeft() {
        if (self.speed == 0) {
            return
        }
        self.speed = self.speed / 2;
        self.heading -= 90;
        if (self.heading < 0) {
            self.heading += 360
        }
    }
}
