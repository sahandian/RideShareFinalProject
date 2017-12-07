//
//  DashBoardNotificationTableViewCell.swift
//  RideShareFinalProject
//
//  Created by Benjarit Hotrabhavananda on 12/6/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit

class DashBoardNotificationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var information: UILabel!
    @IBOutlet weak var dateOfNotication: UILabel!    
    var infoTobeShown: String = ""{
        didSet{
            updateUI()
        }
    }
    private func updateUI(){
        profileImage.image = UIImage(named: "exampleImage1.png")
        
        // Set circular image view
        profileImage.layer.cornerRadius = self.profileImage.frame.width / 2
        profileImage.clipsToBounds = true
        
        // Set request description and date
        information.text = "Laulen Wrigley requested to join your 11/5 trip to Chicago."
        dateOfNotication.text = "Yesterday"
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
