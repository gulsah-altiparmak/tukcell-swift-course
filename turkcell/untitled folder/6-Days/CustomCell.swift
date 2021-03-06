//
//  CustomCell.swift
//  6-Days
//
//  Created by Gulsah Altiparmak on 14.01.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
