//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    
    let maxAltitude : Double
    var altitude : Double
    var inFlight : Bool{
        if altitude > 0.0 && speed > 0.0{
            return true
        } else {
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude : Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0.0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff(){
        if !self.inFlight{
            self.speed = self.maxSpeed * 0.1
            self.altitude = self.maxAltitude * 0.1
        }
    }
    
    func land(){
        self.speed = 0.0
        self.altitude = 0.0
    }
    
    func climb(){
        var new_altitude = self.altitude + self.maxAltitude * 0.1
        
        if new_altitude > self.maxAltitude {
            new_altitude = maxAltitude
        }
        
        if self.inFlight{
            self.altitude = new_altitude
            self.decelerate()
        }
    }
    
    func dive(){
        var new_altitude = self.altitude - self.maxAltitude * 0.1
        
        if new_altitude < 0.0 {
            new_altitude = 0.0
        }
        
        if self.inFlight{
            self.altitude = new_altitude
            self.accelerate()
        }
    }
    
    func bankRight(){
        var new_heading = self.heading + 45.0
        var new_speed = self.speed - self.speed * 0.1
        
        if new_speed > self.maxAltitude {
            new_speed = self.maxSpeed
        }
        
        if new_heading > 360 {
            new_heading = new_heading - 360
        }
        
        if self.inFlight {
            self.speed = new_speed
            self.heading = new_heading
        }
    }
    
    func bankLeft(){
        var new_heading = self.heading - 45.0
        var new_speed = self.speed - self.speed * 0.1
        
        if new_speed > self.maxAltitude {
            new_speed = self.maxSpeed
        }
        
        if new_heading < 0 {
            new_heading = new_heading + 360
        }
        
        if self.inFlight {
            self.speed = new_speed
            self.heading = new_heading
        }
    }

}
