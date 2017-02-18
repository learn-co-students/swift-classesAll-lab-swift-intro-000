//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    let maxAltitude : Double;
    var altitude : Double;
    
    var inFlight : Bool {
        get {
            return altitude > 0 && speed > 0;
        }
    }
    
    init(name : String, weight : Double, maxSpeed : Double, maxAltitude : Double) {
        self.maxAltitude = maxAltitude;
        self.altitude = 0;
        super.init(name : name, weight : weight, maxSpeed : maxSpeed)
    }
    
    func takeOff() {
        if (inFlight == false) {
            self.speed = self.maxSpeed * 0.1
            self.altitude = self.maxAltitude * 0.1
        }
    }
    
    func land() {
        self.speed = 0;
        self.altitude = 0;
    }
    
    func climb() {
        if (inFlight) {
            self.altitude += 0.1*self.maxAltitude
            if (self.altitude > self.maxAltitude) {
                self.altitude = self.maxAltitude
            }
            
            decelerate()
        }
    }
    
    func dive() {
        if (inFlight) {
            self.altitude -= 0.1*self.maxAltitude
            if (self.altitude < 0) {
                self.altitude = 0
            }
            
          accelerate()
        }
    }
    
    func bankRight() {
        if (inFlight) {
            self.heading += 45;
            if (self.heading > 360) {
                self.heading -= 360
            }
            
            self.speed -= 0.1*self.speed
        }
    }
    
    func bankLeft() {
        if (inFlight) {
            self.heading -= 45;
            if (self.heading < 0) {
                self.heading += 360
            }
            
            self.speed -= 0.1*self.speed
        }
    }
}
