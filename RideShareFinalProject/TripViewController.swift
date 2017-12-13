//
//  TripViewController.swift
//  RideShareFinalProject
//
//  Created by sahand sadri on 12/13/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit
import CloudKit

class TripViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zip: UITextField!
    @IBOutlet weak var address2: UITextField!
    @IBOutlet weak var city2: UITextField!
    @IBOutlet weak var state2: UITextField!
    @IBOutlet weak var zip2: UITextField!
    @IBOutlet weak var departure: UITextField!
    @IBOutlet weak var carMake: UITextField!
    @IBOutlet weak var carModel: UITextField!
    @IBOutlet weak var license: UITextField!
    
    
    
    

    
    let publicDatabase = CKContainer.default().publicCloudDatabase
    
    var trip: CKRecord?
    
    weak var tripDelegate: TripDelegate?
    
    @IBAction func joinTrip(_ sender: Any) {
    
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        //firstName.delegate = self
        
        firstName.text = trip?.object(forKey: "firstName") as? String
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

}

extension TripViewController: UITextFieldDelegate {
    func labelShouldReturn(_ label: UILabel) -> Bool {
        label.resignFirstResponder()
        return true
    }
}
