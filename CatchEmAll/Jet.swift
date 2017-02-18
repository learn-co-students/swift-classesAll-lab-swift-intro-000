//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Jet:Plane{

    
   override func climb(){
    
        if self.inFlight {
            
            
            let alt = self.altitude + self.maxAltitude * 0.2
            
            if alt <= self.maxAltitude {
                self.altitude = alt
            }else {
                self.altitude = self.maxAltitude
            }
            
            self.decelerate()
            
            
        }
        
    }
    
    
   override func dive(){
        
        if self.inFlight {
            
            
            let alt = self.altitude - (self.maxAltitude * 0.2)
           print("\(self.altitude) ++ \(self.maxAltitude) ++ \(alt)")
            if alt >= 0.0 {
                self.altitude = alt
            }else {
                self.altitude = 0.0
                
            }
            
            self.accelerate()
            
            
        }
        
    }
    
    
    func afterburner(){
    
        if self.speed == self.maxSpeed {
            self.speed = self.maxSpeed * 2
        }
    
    }
    

}
