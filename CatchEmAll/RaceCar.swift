//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        
        let increaseRate = maxSpeed * 1/5
        
        if speed + increaseRate <= maxSpeed {
            
            speed += increaseRate
            
        } else {
            
            speed = maxSpeed
        }
        
    }
    
    override func decelerate() {
        
        let decreaseRate = maxSpeed * 1/5
        
        if speed - decreaseRate >= 0 {
            
            speed -= decreaseRate
            
        } else {
            
            speed = 0.0
        }
    }
    
    func driftRight() {
        
        let speedDecreaseRate = speed * 1/4
        
        if speed != 0 {
            
            heading += 90
            speed -= speedDecreaseRate
            
            if heading >= 360 {
                
                heading -= 360
            }
        }
    }
    
    func driftLeft() {
        
        let speedDecreaseRate = speed * 1/4
        
        if speed != 0 {
            
            heading -= 90
            speed -= speedDecreaseRate
            
            if heading < 0 {
                
                heading += 360
            }
        }
    }
}
