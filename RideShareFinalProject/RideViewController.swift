//
//  RideViewController.swift
//  RideShareFinalProject
//
//  Created by sahand sadri on 12/12/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit
import CloudKit

class RideViewController: UIViewController {

    @IBOutlet weak var tripsTableView: UITableView!
    let publicDatabase = CKContainer.default().publicCloudDatabase
    
    var trips = [CKRecord]()
    
    func queryTrips(){
        
        let query = CKQuery(recordType: "Trip", predicate: NSPredicate(value: true))
        
        publicDatabase.perform(query, inZoneWith: nil) { (trips, error) in DispatchQueue.main.async {
            if let error = error {
                print(error)
            } else {
                self.trips = trips ?? []
            }
            }}
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
