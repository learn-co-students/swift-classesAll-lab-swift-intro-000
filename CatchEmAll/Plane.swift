//
//  Plane.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double;
    var altitude: Double;
    var inFlight: Bool {
        return (altitude > 0 && speed > 0);
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.altitude = 0;
        self.maxAltitude = maxAltitude;
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed);
    }
    
    func takeOff() {
        guard (!inFlight) else { return; }
        
        speed = maxSpeed / 10;
        altitude = maxAltitude / 10;
    }
    
    func land() {
        speed = 0;
        altitude = 0;
    }
    
    func climb() {
        guard (inFlight) else { return; }
        
        altitude += (maxAltitude / 10);
        
        if (altitude > maxAltitude) {
            altitude = maxAltitude;
        }
        
        decelerate();
    }
    
    func dive() {
        guard (inFlight) else { return; }
        
        altitude -= (maxAltitude / 10);
        
        if (altitude < 0) {
            altitude = 0;
        }
        
        accelerate();
    }
    
    func bankRight() {
        guard (inFlight) else { return; }
        
        heading += 45;
        
        if (heading > 360) {
            heading -= 360;
        }
        
        speed -= speed / 10;
    }
    
    func bankLeft() {
        guard (inFlight) else { return; }
        
        heading -= 45;
        
        if (heading < 0) {
            heading += 360;
        }
        
        speed -= speed / 10;
    }
}
