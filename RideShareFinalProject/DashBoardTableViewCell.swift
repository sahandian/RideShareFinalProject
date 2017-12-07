//
//  DashBoardTableViewCell.swift
//  RideShareFinalProject
//
//  Created by Benjarit Hotrabhavananda on 12/5/17.
//  Copyright © 2017 Sahand Sadri. All rights reserved.
//

import UIKit

class DashBoardTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var departureTime: UILabel!
    @IBOutlet weak var start: UILabel!
    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var desination: UILabel!
    
    // public API
    var infoToBeShown: String = ""{
        didSet{
            updateUI()
        }
    }
    private func updateUI(){
        start.text = "New York City"
        desination.text = "Los Angeles"
        date.text = "11/12"
        departureTime.text = "10 a.m."
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
