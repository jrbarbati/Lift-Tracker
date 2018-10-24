//
//  WorkoutTableViewCell.swift
//  Lift-Tracker
//
//  Created by Joseph Barbati on 10/23/18.
//  Copyright © 2018 Joseph Barbati. All rights reserved.
//

import UIKit

class WorkoutTableViewCell: UITableViewCell
{
    @IBOutlet weak var workoutNameLabel: UILabel!
    @IBOutlet weak var changeWeightButton: UIButton!
    @IBOutlet weak var tempLabel: UILabel!
    
    var timesPressed: Int = 0
    
    @IBAction func changeWeight(_ sender: UIButton)
    {
        print("YOU PRESSED THE BUTTON \(timesPressed)")
        timesPressed += 1
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
