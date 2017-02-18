//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
    
    let driver : String
    var sponsors : [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver : String, sponsors : [String]) {
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func drive(){
        self.speed += self.speed * 0.20
    }
    
    override func brake(){
        self.speed -= self.speed * 0.20
    }
    
    override func accelerate() {
        var new_speed = self.speed + maxSpeed*0.2
        
        if new_speed > maxSpeed {
            new_speed = maxSpeed
        }
        
        self.speed = new_speed
    }

    
    override func decelerate(){
        var new_speed = self.speed - maxSpeed*0.2
        
        if new_speed < 0 {
            new_speed = 0
        }
        
        self.speed = new_speed
    }

    
    func driftRight(){
        var new_heading = self.heading + 90.0
        var new_speed = self.speed - self.speed * 0.25
        
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


    func driftLeft(){
        var new_heading = self.heading - 90.0
        var new_speed = self.speed - self.speed * 0.25
        
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
