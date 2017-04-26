//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle{
    let maxAltitude: Double
    var altitude: Double = 0.0
    var inFlight: Bool{
        return self.altitude > 0 && self.speed > 0
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double){
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff( ){
        if inFlight{ return }
        self.speed = self.maxSpeed * 0.1
        self.altitude = self.maxAltitude * 0.1
    }
    
    func land( ){
        self.speed = 0.0
        self.altitude = 0.0
    }
    
    func climb( ){
        if !self.inFlight{ return }
        self.altitude += self.maxAltitude * 0.1
        self.altitude = min(self.altitude, self.maxAltitude)
        
        self.decelerate()
    }
    
    func dive( ){
        if !self.inFlight{ return }
        self.altitude -= self.maxAltitude * 0.1
        self.altitude = max(0.0, self.altitude)
        
        self.accelerate()
    }
    
    func bankRight( ){
        if !self.inFlight{ return }
        self.heading += 45.0
        self.speed *= 0.9
        
        self.heading = self.heading.truncatingRemainder(dividingBy: 360.0)
    }
    
    func bankLeft( ){
        if !self.inFlight{ return }
        self.heading -= 45.0
        self.speed *= 0.9
        
        self.heading = self.heading.truncatingRemainder(dividingBy: 360.0)
        if self.heading < 0{
            self.heading = 360.0 - (self.heading * -1)
        }
    }
}
