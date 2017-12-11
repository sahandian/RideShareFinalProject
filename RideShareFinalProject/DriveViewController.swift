//
//  DriveViewController.swift
//  RideShareFinalProject
//
//  Created by sahand sadri on 12/10/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit

class DriveViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var departure: UITextField!
    @IBOutlet weak var time: UITextField!
    
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zip: UITextField!
    
    @IBOutlet weak var address2: UITextField!
    @IBOutlet weak var city2: UITextField!
    @IBOutlet weak var state2: UITextField!
    @IBOutlet weak var zip2: UITextField!

    @IBOutlet weak var seatsAvailable: UITextField!
    
    @IBOutlet weak var carMake: UITextField!
    @IBOutlet weak var carModel: UITextField!
    @IBOutlet weak var carYear: UITextField!
    @IBOutlet weak var license: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName.delegate = self
        lastName.delegate = self
        
        email.delegate = self
        departure.delegate = self
        time.delegate = self
        
        address.delegate = self
        city.delegate = self
        state.delegate = self
        zip.delegate = self
        
        address2.delegate = self
        city2.delegate = self
        state2.delegate = self
        zip2.delegate = self
        
        seatsAvailable.delegate = self
        
        carMake.delegate = self
        carModel.delegate = self
        carYear.delegate = self
        license.delegate = self
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
