//
//  DashBoardTableViewCell.swift
//  RideShareFinalProject
//
//  Created by Benjarit Hotrabhavananda on 12/5/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit
import CloudKit

class DashBoardTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var departureTime: UILabel!
    @IBOutlet weak var start: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var desination: UILabel!
    
    // public API
    var infoToBeShown: CKRecord?{
        didSet{
            updateUI()
        }
    }
    private func updateUI(){
        start.text = (infoToBeShown?["startLocation"] as! String)
        desination.text = (infoToBeShown?["destinationLocation"] as! String)
        let myTime = (infoToBeShown?["departureTime"] as! Date)
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateStyle = .short
        date.text = formatter.string(from: myTime)
        departureTime.text = formatter.string(from: myTime)
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
