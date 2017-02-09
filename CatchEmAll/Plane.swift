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
        
        get {
            
            if altitude > 0 && speed > 0 {
                
                return true
                
            }
            
            return false
        }
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        self.altitude = 0
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        
        guard !inFlight else { return }
        
        speed = maxSpeed * 1/10
        altitude = maxAltitude * 1/10
    }
    
    func land() {
        
        speed = 0.0
        altitude = 0.0
    }
    
    func climb() {
        
        guard inFlight else { return }
        
        let altitudeIncreaseRate = maxAltitude * 1/10
        
        if altitude + altitudeIncreaseRate <= maxAltitude {
            
            altitude += altitudeIncreaseRate
            decelerate()
            
        } else {
            
            altitude = maxAltitude
            decelerate()
        }
    }
    
    func dive() {
        
        guard inFlight else { return }
        
        let altitudeDecreaseRate = maxAltitude * 1/10
        
        if altitude - altitudeDecreaseRate >= 0 {
            
            altitude -= altitudeDecreaseRate
            accelerate()
            
        } else {
            
            altitude = 0
            accelerate()
        }
        
    }
    
    func bankRight() {
        
        guard inFlight else { return }
        
        let headingIncreaseRate = 45.0
        let speedDecreaseRate = speed * 1/10
        
        if heading + headingIncreaseRate > 360 {
            
            heading = (heading + headingIncreaseRate) - 360
            speed -= speedDecreaseRate
            
        } else {
            
            heading += 45
            speed -= speedDecreaseRate
        }
    }
    
    func bankLeft() {
        
        guard inFlight else { return }
        
        let headingDecreaseRate = 45.0
        let speedDecreaseRate = speed * 1/10
        
        if heading - headingDecreaseRate < 0 {
            
            heading = (heading - headingDecreaseRate) + 360
            speed -= speedDecreaseRate
            
        } else {
            
            heading -= 45
            speed -= speedDecreaseRate
        }
        
    }
    
    
    
}
