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
    if inFlight {
      altitude += (maxAltitude / 5)
      if altitude > maxAltitude {
        altitude = maxAltitude
      }
      decelerate()
    }
    
  }
  
  override func dive() {
    if inFlight {
      altitude -= (maxAltitude / 5)
      if altitude < 0 {
        altitude = 0
      }
      accelerate()
    }
  }
  
  func afterburner() {
    if speed == maxSpeed {
      speed = 2 * maxSpeed
    }
  }
}
