//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane{
    override func climb( ){
        if !self.inFlight{
            return
        }
        self.altitude += self.maxAltitude * 0.2
        self.altitude = min(self.altitude, self.maxAltitude)
        
        self.decelerate()
    }
    
    override func dive( ){
        if !self.inFlight{
            return
        }
        self.altitude -= self.maxAltitude * 0.2
        self.altitude = max(0.0, self.altitude)
        self.accelerate()
    }
    
    func afterburner( ){
        if(self.speed == self.maxSpeed){
            self.speed = self.maxSpeed * 2
        }
    }
}
