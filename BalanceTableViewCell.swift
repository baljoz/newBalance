//
//  BalanceTableViewCell.swift
//  BalanS
//
//  Created by Stefan Djordjevic on 4/7/17.
//  Copyright © 2017 Stefan Djordjevic. All rights reserved.
//

import UIKit

class BalanceTableViewCell: UITableViewCell {

    @IBOutlet weak var valutValue: UILabel!
    @IBOutlet weak var valutName: UILabel!
  
    @IBOutlet weak var valuta: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
