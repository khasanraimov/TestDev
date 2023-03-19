//
//  UserTableViewCell.swift
//  FanFicApp
//
//  Created by khasan on 19.03.2023.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var textOfTopPicksForYou: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
