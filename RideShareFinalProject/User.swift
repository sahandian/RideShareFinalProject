//
//  User.swift
//  RideShareFinalProject
//
//  Created by sahand sadri on 11/9/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import Foundation
import UIKit

class User{
    
    //    This is the account information for both the rider and driver
    
    var firstName: String
    var middleName: String
    var lastName: String
    
    var dob: Date
    var gender: Gender
    var email: String
    var major: String
    var classRank: String
    var photo: UIImage
    var studentDescription: String
    var userVehicle: Vehicle
    
    var pass1star: Int = 0
    var pass2star: Int = 0
    var pass3star: Int = 0
    var pass4star: Int = 0
    var pass5star: Int = 0
    var totalPassRating: Double = 0
    
    var driver1star: Int = 0
    var driver2star: Int = 0
    var driver3star: Int = 0
    var driver4star: Int = 0
    var driver5star: Int = 0
    var totalDriverRating: Double = 0
    
    
    
    init(firstName: String, middleName: String, lastName: String, dob: Date, gender: Gender, email: String,
         major: String, classRank: String, photo: UIImage, studentDescription: String, userVehicle: Vehicle, passengerRating: Double, driverRating: Double){
        
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.dob = dob
        self.gender = gender
        self.email = email
        self.major = major
        self.classRank = classRank
        self.photo = photo
        self.studentDescription = studentDescription
        self.userVehicle = userVehicle
        //self.totalPassRating = totalPassRating
        //self.totalDriverRating = totalDriverRating
        
    }
    
    func calculateDriverRating(driver1star: Int, driver2star: Int, driver3star: Int, driver4star: Int, driver5star: Int){
        
        totalDriverRating = (5*driver5star + 4*driver4star + 3*driver3star + 2*driver2star + 1*driver1star) / (driver5star+driver4star+driver3star+driver2star+driver1star)
    }
    
    func driverRating(driverRating: Int) -> Double {
        if driverRating == 1 {
            calculateDriverRating(driver1star: driver1star + 1, driver2star: driver2star, driver3star: driver3star, driver4star: driver4star, driver5star: driver5star)
        } else if driverRating == 2 {
            calculateDriverRating(driver1star: driver1star, driver2star: driver2star + 1, driver3star: driver3star, driver4star: driver4star, driver5star: driver5star)
        } else if driverRating == 3 {
            calculateDriverRating(driver1star: driver1star, driver2star: driver2star, driver3star: driver3star + 1, driver4star: driver4star, driver5star: driver5star)
        } else if driverRating == 4 {
            calculateDriverRating(driver1star: driver1star, driver2star: driver2star, driver3star: driver3star, driver4star: driver4star + 1, driver5star: driver5star)
        } else {
            calculateDriverRating(driver1star: driver1star, driver2star: driver2star, driver3star: driver3star, driver4star: driver4star, driver5star: driver5star + 1)
        }
        return totalDriverRating;
    }
    
    func calculatePassengerRating(pass1star: Int, pass2star: Int, pass3star: Int, pass4star: Int, pass5star: Int){
        
        totalPassRating = (5*pass5star + 4*pass4star + 3*pass3star + 2*pass2star + 1*pass1star) / (pass5star+pass4star+pass3star+pass2star+pass1star)
    }
    
    func passengerRating(passRating: Int) -> Double {
        if passRating == 1 {
            calculatePassengerRating(pass1star: pass1star + 1, pass2star: pass2star, pass3star: pass3star, pass4star: pass4star, pass5star: pass5star)
        } else if passRating == 2 {
            calculatePassengerRating(pass1star: pass1star, pass2star: pass2star + 1, pass3star: pass3star, pass4star: pass4star, pass5star: pass5star)
        } else if passRating == 3 {
            calculatePassengerRating(pass1star: pass1star, pass2star: pass2star, pass3star: pass3star + 1, pass4star: pass4star, pass5star: pass5star)
        } else if passRating == 4 {
            calculatePassengerRating(pass1star: pass1star, pass2star: pass2star, pass3star: pass3star, pass4star: pass4star + 1, pass5star: pass5star)
        } else {
            calculatePassengerRating(pass1star: pass1star, pass2star: pass2star, pass3star: pass3star, pass4star: pass4star, pass5star: pass5star + 1)
        }
        return totalPassRating;
    }
    
    
    

    

enum Gender{
    case MALE
    case FEMALE
    case OTHER
}

struct Vehicle{
    //    Information about the user's vehicle that can be added to a user's account
    var make: String
    var model: String
    var year: Int
    var seating: Int
    var cargoSpace: Cargo
}

enum Cargo{
    case SMALL
    case MEDIUM
    case LARGE
}


