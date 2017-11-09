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
    
    var passengerRating: Double
    var driverRating: Double
    
    var pass1Star: Int
    var pass2Star: Int
    var pass3Star: Int
    var pass4Star: Int
    var pass5Star: Int
    
    var drive1Star: Int
    var drive2Star: Int
    var drive3Star: Int
    var drive4Star: Int
    var drive5Star: Int
    
    
    
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
        self.passengerRating = passengerRating
        self.driverRating = driverRating
        
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    

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


