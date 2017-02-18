//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, maxAltitude: maxAltitude)
    }
    
    override func climb(){
        var new_altitude = self.altitude + self.maxAltitude * 0.2
        
        if new_altitude > self.maxAltitude {
            new_altitude = maxAltitude
        }
        
        if self.inFlight{
            self.altitude = new_altitude
            self.decelerate()
        }
    }
    
    override func dive(){
        var new_altitude = self.altitude - self.maxAltitude * 0.2
        
        if new_altitude < 0.0 {
            new_altitude = 0.0
        }
        
        if self.inFlight{
            self.altitude = new_altitude
            self.accelerate()
        }
    }
    
    func afterburner(){
        if self.speed == self.maxSpeed {
            self.speed = 2 * self.maxSpeed
        }
    }

}
