//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car{
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]){
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate( ){
        self.speed += (self.maxSpeed * 0.2)
        self.speed = min(self.speed, self.maxSpeed)
    }
    
    override func decelerate( ){
        self.speed -= (self.maxSpeed * 0.2)
        self.speed = max(0.0, self.speed)
    }
    
    func driftRight( ){
        if self.speed <= 0{
            return
        }
        self.speed -= (self.speed * 0.25)
        self.heading += 90.0
        
        self.heading = self.heading.truncatingRemainder(dividingBy: 360.0)
    }
    
    func driftLeft( ){
        if self.speed <= 0{
            return
        }
        self.speed -= (self.speed * 0.25)
        self.heading -= 90.0
        
        self.heading = self.heading.truncatingRemainder(dividingBy: 360.0)
        if self.heading < 0{
            self.heading = 360.0 - (self.heading * -1)
        }
    }
}
