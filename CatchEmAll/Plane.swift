//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Plane:Vehicle {


    let maxAltitude:Double
    var altitude:Double
    var inFlight:Bool {
        return altitude != 0 && speed != 0
    }

    init(name: String, weight: Double, maxSpeed: Double, maxAltitude:Double) {
        self.maxAltitude = maxAltitude
        self.altitude = 0
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }

    
    func takeOff(){
    
        if !self.inFlight {
            self.speed = self.speed + self.maxSpeed*0.1
            self.altitude = self.altitude + self.maxAltitude * 0.1
            
        }
    
    }
    
    
    func land(){
        self.altitude = 0
        self.speed = 0
    }
    
    func climb(){
    
        if self.inFlight {
            
            
            let alt = self.altitude + self.maxAltitude * 0.1
            

            if alt <= self.maxAltitude {
                self.altitude = alt
            }else {
                self.altitude = self.maxAltitude
            }
            
            self.decelerate()
            
            
        }
    
    }
    
    
    func dive(){
        
        if self.inFlight {
            
            
            let alt = self.altitude - self.maxAltitude * 0.1
            
            if alt > 0 {
                self.altitude = alt
            }else {
                self.altitude = 0.0
            
            }
            
            self.accelerate()
            
            
        }
        
    }
    
    func bankRight(){
    
    
        if self.inFlight {
        
            var ang = self.heading + 45
            if ang > 360 {
                ang = ang - 360
            }
            
            
            self.heading = ang
            
            let spe = self.speed - self.speed * 0.1
            
            if spe > 0 {
                self.speed = spe
            }
            
        
        }
        
    
    }
    
    func bankLeft(){
        
        
        if self.inFlight {
            
            var ang = self.heading - 45
            if ang < 0 {
                ang = 360 + ang
            }
            
            
            self.heading = ang
            
            let spe = self.speed - self.speed * 0.1
            
            if spe > 0 {
                self.speed = spe
            }
            
            
        }
        
        
    }

    
    
}
