//
//  ProductListCell.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-22.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class ProductListCell: UITableViewCell {

 
    @IBOutlet weak var prodImage: UIImageView!
    @IBOutlet weak var prodPrice: UILabel!
    @IBOutlet weak var prodDescription: UILabel!
    @IBOutlet weak var prodName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
