//
//  ContactTableViewCell.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 3/16/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var adr: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var prezime: UILabel!
    @IBOutlet weak var ime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
