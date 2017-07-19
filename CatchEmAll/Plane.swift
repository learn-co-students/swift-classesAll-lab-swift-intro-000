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
    var altitude: Double = 0.0
    
    var inFlight: Bool {
        if altitude > 0.0 && speed > 0.0 {
            return true
        } else {
            return false
        }
    } // in flight
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    } // init
    
    func takeOff() {
        if !self.inFlight {
            self.speed = self.maxSpeed/10.0
            self.altitude = self.maxAltitude/10.0
        }
    } // take off
    
    func land() {
        self.speed = 0.0
        self.altitude = 0.0
    } // land
    
    func climb() {
        if self.inFlight {
            if self.altitude != self.maxAltitude && self.speed != 0 {
                self.altitude += self.maxAltitude/10.0
                self.decelerate()
                if self.altitude >= self.maxAltitude {
                    self.altitude = self.maxAltitude
                }
                if self.speed <= 0 {
                    self.speed = 0
                }
            }
        }
    } // climb
    
    func dive() {
        if self.inFlight {
            if self.altitude != self.maxAltitude && self.speed != 0 {
                self.altitude -= self.maxAltitude/10.0
                self.accelerate()
                if self.altitude <= 0 {
                    self.altitude = 0
                }
                if self.speed >= self.maxSpeed {
                    self.speed = self.maxSpeed
                }
            }
        }
    } // dive
    
    func bankRight() {
        if self.inFlight {
            if self.speed > 0 && self.heading <= 360 {
                self.heading += 45
                self.speed -= self.speed * 0.10
                if self.heading >= 360 {
                    self.heading = self.heading-360
                }
            }
        }
    } // bank right
    
    func bankLeft() {
        if self.inFlight {
            if self.speed > 0 && self.heading >= 0 {
                self.heading -= 45
                self.speed -= self.speed * 0.10
                if self.heading <= 0 {
                    self.heading = 360 + self.heading
                }
            }
        }
    } // bank left
    
    
    
}
