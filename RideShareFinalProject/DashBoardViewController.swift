//
//  DashBoardViewController.swift
//  RideShareFinalProject
//
//  Created by Benjarit Hotrabhavananda on 12/6/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let deque: UITableViewCell
        if indexPath.section == 0{
            deque = tableView.dequeueReusableCell(withIdentifier: "myFirstCell", for: indexPath)
            if let cell = deque as? DashBoardTableViewCell{
                cell.infoToBeShown = "Data setted"
            }
        }else{
            deque = tableView.dequeueReusableCell(withIdentifier: "notificationCell", for: indexPath)
            if let cell = deque as? DashBoardNotificationTableViewCell{
                cell.infoTobeShown = "Data setted"
            }
        }
        return deque
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 1{
            return "Notifications"
        }else{
            return ""
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    @IBAction func viewPastActionsToggle(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            
        }else if sender.selectedSegmentIndex == 1{
            
        }else{
            
        }
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
