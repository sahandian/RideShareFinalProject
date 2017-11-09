//
//  Trip.swift
//  RideShareFinalProject
//
//  Created by sahand sadri on 11/9/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import Foundation


enum Location{
    case SaintLouis
    case Chicago
    case KansasCity
    case Columbia
}

struct riderTrip{
    //    Trip created by the rider needing a driver, others can request to join as passengers
    var locationFrom: Location
    var destination: Location
    var startDate: Date
    var departureTime: Date
    var returnDate: Date
    var returnTime: Date
    var passengerNames: [User]
    var numberOfPassengers: Int
    var comments: String
    
    
}

struct driverTrip{
    
}
