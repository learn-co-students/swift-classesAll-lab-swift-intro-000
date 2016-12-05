//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle{
    let name : String
    let weight : Double
    let maxSpeed : Double
    var speed : Double
    var heading : Double
    
    init(name : String, weight : Double, maxSpeed : Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.speed = 0.0
        self.heading = 0.0
    }
    
    func goFast(){
        self.speed = self.maxSpeed
    }
    
    func halt(){
        self.speed = 0.0
    }
    
    func accelerate(){
        var new_speed = self.speed + maxSpeed*0.1
        
        if new_speed > maxSpeed {
            new_speed = maxSpeed
        }
        
        self.speed = new_speed
    }

    func decelerate(){
        var new_speed = self.speed - maxSpeed*0.1
        
        if new_speed < 0 {
            new_speed = 0
        }
        
        self.speed = new_speed
    }
    
    func turnRight(){
        var new_heading = self.heading + 90.0
        var new_speed = self.speed * 0.5
        
        if new_speed <= 0 {
            new_speed = 0.0
            new_heading = self.heading
        } else {
            if new_heading > 360.0{
                new_heading = new_heading - 360.0
            }
            
            self.heading = new_heading
            self.speed = new_speed
        }
    }
    
    func turnLeft(){
        var new_heading = self.heading - 90.0
        var new_speed = self.speed * 0.5
        
        if new_speed <= 0 {
            new_speed = 0.0
            new_heading = self.heading
        } else {
            if new_heading < 0.0{
                new_heading = new_heading + 360.0
            }
            
            self.heading = new_heading
            self.speed = new_speed
        }
    }
    

}

enum Transmission {
    case Automatic, Manual
}
