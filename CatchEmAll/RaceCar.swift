//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class RaceCar : Car {
    
    let driver : String;
    let sponsors : [String];
    
    init(name : String, weight : Double, maxSpeed : Double, transmission : Transmission, cylinders : Int, milesPerGallon : Double, driver : String, sponsors : [String]) {
        
        self.driver = driver;
        self.sponsors = sponsors;
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission : transmission, cylinders : cylinders, milesPerGallon : milesPerGallon);
    }
    
    override func accelerate() {
        if((speed + maxSpeed * 0.2) <= maxSpeed) {
            speed += maxSpeed * 0.2;
        } else {
            speed = maxSpeed;
        }
    }
    
    override func decelerate() {
        if((speed - maxSpeed * 0.2) > 0.0) {
            speed -= maxSpeed * 0.2;
        } else {
            speed = 0;
        }
    }
    
    func driftRight() {
        if(speed > 0) {
            heading += 90.0;
            if(heading > 360) {
                heading = heading - 360;
            }
            speed -= speed/4;
        }
    }
    
    func driftLeft() {
        
        if(speed > 0) {
            heading -= 90.0;
            if(heading < 0) {
                heading = heading + 360;
            }
            speed -= speed/4;
        }
    }
}
