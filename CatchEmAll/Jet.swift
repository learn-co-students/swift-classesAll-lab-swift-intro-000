//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        
        guard inFlight else { return }
        
        let altitudeIncreaseRate = maxAltitude * 1/5
        
        if altitude + altitudeIncreaseRate <= maxAltitude {
            
            altitude += altitudeIncreaseRate
            decelerate()
            
        } else {
            
            altitude = maxAltitude
            decelerate()
        }
    }
    
    override func dive() {
        
        guard inFlight else { return }
        
        let altitudeDecreaseRate = maxAltitude * 1/5
        
        if altitude - altitudeDecreaseRate >= 0 {
            
            altitude -= altitudeDecreaseRate
            accelerate()
            
        } else {
            
            altitude = 0
            accelerate()
        }
    }
    
    func afterburner() {
        
        if speed == maxSpeed {
            
            speed = maxSpeed * 2
        }
    }
}
