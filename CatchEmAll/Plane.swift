//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation



class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double
    var inFlight: Bool {
        return altitude > 0 && speed > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0.0
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff(){
        
        if !inFlight {
        speed = maxSpeed*(1/10)
        altitude = maxAltitude*(1/10)
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
       
        if inFlight {
            altitude = altitude + maxAltitude*(1/10)
            if altitude > maxAltitude{
                altitude = maxAltitude
            }
            speed = speed - ((1/10) * maxSpeed)
            
            if speed < 0 {
                speed = 0
            }
        }
        
    }
    
    func dive() {
        
        if inFlight {
            altitude = altitude - maxAltitude*(1/10)
            if altitude < 0{
                altitude = 0
            }
            
            speed = speed + ((1/10) * maxSpeed)
            
            if speed > maxAltitude {
                speed = maxSpeed
            }
            
        }
    }
    
    func bankRight() {
        
        if inFlight{
            heading = heading + 45
            if heading > 360{
                heading = heading - 360
            }
            speed = speed - (speed*(1/10))
            if speed < 0 {
                speed = 0
            }
        }
    }
    
    func bankLeft() {
        
        if inFlight{
            heading = heading - 45
            if heading < 0 {
                heading = heading + 360
            }
            speed = speed - (speed*(1/10))
            if speed < 0 {
                speed = 0
            }
        }
    }
    
}

