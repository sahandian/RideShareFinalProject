//
//  ProfileViewController.swift
//  RideShareFinalProject
//
//  Created by Kevin Hunkins on 12/12/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit
import CloudKit

class ProfileViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        profileFirstName.delegate = self
        profileLastName.delegate = self
        profileEmail.delegate = self
        profileSchool.delegate = self
        profileMajor.delegate = self
        profileClass.delegate = self
        profileBirthday.delegate = self
        
        self.profileImage.image = UIImage(named: "Profile_Selected")
        
        createDatePicker()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var profileFirstName: UITextField!
    @IBOutlet weak var profileLastName: UITextField!
    @IBOutlet weak var profileEmail: UITextField!
    @IBOutlet weak var profileSchool: UITextField!
    @IBOutlet weak var profileMajor: UITextField!
    @IBOutlet weak var profileClass: UITextField!
    @IBOutlet weak var profileBirthday: UITextField!
    @IBOutlet weak var profileImage: UIImageView!
    

    @IBAction func profileGender(_ sender: UISegmentedControl) {
    }
    
    let datePicker = UIDatePicker()
    
    func createDatePicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(datePressed))
        
        toolbar.setItems([done], animated: false)
        profileBirthday.inputAccessoryView = toolbar
        profileBirthday.inputView = datePicker
        
        datePicker.datePickerMode = .date
    }
    
    @objc func datePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        profileBirthday.resignFirstResponder()
        
        let dateString = formatter.string(from: datePicker.date)
        
        profileBirthday.text = "\(dateString)"
        self.viewDidLoad()
        
    }
    
    
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        print("Save button clicked")
        let profile = CKRecord(recordType: "Profile")
        profile.setValue(profileFirstName.text!, forKey: "profileFirstName")
        profile.setValue(profileLastName.text!, forKey: "profileLastName")
        profile.setValue(profileEmail.text!, forKey: "profileEmail")
        profile.setValue(profileBirthday.text!, forKey: "profileBirthday")
        profile.setValue(profileSchool.text!, forKey: "profileSchool")
        profile.setValue(profileMajor.text!, forKey: "profileMajor")
        profile.setValue(profileClass.text!, forKey: "profileClass")
        
        let publicDatabase = CKContainer.default().publicCloudDatabase
        publicDatabase.save(profile) {(record, error) in
            if error == nil{
                print("Record Saved")
                print(record!["profileFirstName"] as! String)
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
 


}
