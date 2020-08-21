//
//  TableViewCell.swift
//  MVVM
//
//  Created by user on 20/08/2020.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var userimage: UIImageView!
    @IBOutlet weak var teamname: UILabel!
    @IBOutlet weak var submenu: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
