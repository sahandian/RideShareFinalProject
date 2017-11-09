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


struct driverTrip{
    //    Trip created by drivers, riders can request to join as passengers
    
    var locationFrom: Location
    var destination: Location
    var startDate: Date
    var returnDate: Date
    var DepartureTime: Date
    var returnTime: Date
    var seatsAvailable: Int
    var comments: String
    
}
