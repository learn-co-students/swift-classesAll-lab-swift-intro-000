//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class RaceCar:Car{

    let driver:String
    var sponsors:[String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver:String, sponsors:[String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    
    
    override func accelerate() {
        let iSpeed = self.maxSpeed*0.2 + self.speed
        
        if iSpeed <= self.maxSpeed {
            self.speed = iSpeed
        }else {
            self.speed = self.maxSpeed
        }
        
    }
    
   override func decelerate() {
        let iSpeed = self.speed - self.maxSpeed*0.2
        
        if iSpeed >= 0 {
            self.speed = iSpeed
        }else {
            self.speed = 0
        }
        
    }
    
    
    func driftRight(){
        
    
        if  self.speed > 0 {
            
            var ang = self.heading + 90.0
            
            if ang > 360 {
                ang = ang - 360
            }
            
            self.heading = ang
            self.speed = self.speed - (self.speed / 4)
        }

    
    
    }
    
    func driftLeft(){
        
        
        if  self.speed > 0 {
            
            var ang = self.heading - 90.0
            
            if ang < 0 {
                ang = 360 + ang
            }
            
            self.heading = ang
            self.speed = self.speed - (self.speed / 4)
        }
        
        
        
    }

}
