//
//  Vehicle.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
enum Transmission {
    case Automatic
    case Manual
}
class Vehicle{
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double
    var heading: Double



    init(name: String, weight: Double,maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.heading = 0.0
        self.speed = 0.0
    }
    func goFast(){
        speed = maxSpeed
    }
    func halt(){
        speed = 0
    }
    func accelerate(){
        if ((speed + (1/10) * maxSpeed) < maxSpeed){
            speed = speed + (1/10) * maxSpeed
        }else{
            speed = maxSpeed
        }
    }
    func decelerate(){
        if(speed - (1/10) * maxSpeed > 0){
            speed = speed - (1/10) * maxSpeed
        }else{
            speed = 0
        }
    }
    fileprivate func speedAtHalf() {
        speed = speed/2
    }
    func turnRight(){
        speedAtHalf()
        if speed != 0 {
            heading = (heading + 90).truncatingRemainder(dividingBy: 360)
        }
    }


    func turnLeft() {
        speedAtHalf()
        if speed != 0{
            if(heading - 90).truncatingRemainder(dividingBy: 360) < 0{
                heading = 360 - (heading - 90).truncatingRemainder(dividingBy: 360)
            }else{
                heading = (heading - 90).truncatingRemainder(dividingBy: 360)
            }
        }
    }
}
