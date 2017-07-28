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
        if altitude > 0{
            altitude += maxAltitude*(1/5)
            decelerate()}
        
        if altitude > maxAltitude{
            altitude = maxAltitude
        }
        if speed < 0{
            speed = 0
        }
    }
    override func dive()  {
        if altitude > 0{
            altitude -= maxAltitude*(1/5)
            accelerate()
            if speed > maxSpeed{
                speed = maxSpeed
            }
            if altitude < 0{
                altitude = 0
            }
        }
    }
    
    
    func afterburner() {
        if speed == maxSpeed{
            speed = speed*2
        }
    }
}
