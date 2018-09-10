//
//  RaceCar.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class raceCar: Car {
    let driver: String
    var sponsers: [String]
    var driftReduction: Double {
        return speed * 0.25
    }
    override var speedIncrease: Double {
        return maxSpeed * 0.2
    }
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: Transmission, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsers = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    func driftRight() {
        driftBy(degrees: 90.0)
    }
    func driftLeft() {
        driftBy(degrees: -90.0)
    }
    func driftBy(degrees: Double) {
        guard speed > 0.0 else { return }
        heading += degrees
        speed = driftReduction
    }
}
