//
//  EndViewTableViewCell.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-20.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class EndViewTableViewCell: UITableViewCell {
// Gurwinder
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productShortDescription: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var featuredText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
