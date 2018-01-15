//
//  PersonsDirectoryTableViewCell.swift
//  FrumToronto
//
//  Created by Alan Rabinowitz on 2018-01-11.
//  Copyright © 2018 Alan Rabinowitz. All rights reserved.
//

import UIKit

class PersonsDirectoryTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
