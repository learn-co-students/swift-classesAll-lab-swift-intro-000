//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Vehicle {

    let name:String
    let weight:Double
    let maxSpeed:Double
    var speed:Double
    var heading:Double
    
    
    init(name:String,weight:Double,maxSpeed:Double) {
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
    
    func accelerate() {
      let iSpeed = self.maxSpeed*0.1 + self.speed
        
        if iSpeed <= self.maxSpeed {
            self.speed = iSpeed
        }
        
    }
    
    func decelerate() {
        let iSpeed = self.speed - self.maxSpeed*0.1
        
        if iSpeed >= 0 {
            self.speed = iSpeed
        }
        
    }
    
    
    func turnRight(){
    
    
        if  self.speed > 0 {
            
            var ang = self.heading + 90.0
            
            if ang > 360 {
                ang = ang - 360
            }
            
            self.heading = ang
            self.speed = self.speed / 2
        }
        
        
    }
    
    
    
    func turnLeft(){
        
        
        if  self.speed > 0 {
            
            var ang = self.heading - 90.0
            
            if ang < 0 {
                ang = 360 + ang
            }
            
            self.heading = ang
            self.speed = self.speed / 2
        }
        
        
    }

}


enum Transmission {
case Automatic
case Manual
}
