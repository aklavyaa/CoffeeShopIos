//
//  OffersUpperPartCell.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-16.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class OffersUpperPartCell: UICollectionViewCell {

    @IBOutlet weak var cellView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellView.layer.cornerRadius = 8
        
        
    }

    
    
}
