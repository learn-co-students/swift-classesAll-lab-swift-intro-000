//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane{
    override var altitudeInterval: Double{
        return maxAltitude * 0.2
    }
    override func climb() {
        altitude += altitudeInterval
    }
    override func dive() {
        altitude -= altitudeInterval
    }
}
