//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var distanceTraveled : Int
    var running = false
    var author : String
    var fuelLevel : Double
    var maxFuel : Double
    var milesPerGallon : Double
    var fuelCost : Double
    
    init(auth: String) {
        author = auth // have to write this again because you don't know what the author is gonna be
        distanceTraveled = 0
        fuelLevel = 5000
        maxFuel = 5000
        milesPerGallon = 0.4
        fuelCost = 0
    }
    //when we start the plane we know its running and when we are not on the plane we know its not running and it's not wasting fuel
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double {
        var difference = maxFuel - fuelLevel
        fuelLevel += (maxFuel - fuelLevel)
        fuelCost += data.fuelPrices[location]! * difference
        return (difference)
    }
    
    func flyTo(destination : String) {
        distanceTraveled += data.knownDistances[destination]![location]!
        fuelLevel -= Double (distanceTraveled) * milesPerGallon
        location = destination
    
    }
    
    var data = AviatrixData()
    var location = "St. Louis"
    func distanceTo(target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    
}

