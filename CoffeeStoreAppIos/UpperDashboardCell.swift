//
//  UpperDashboardCell.swift
//  CoffeeStoreAppIos
//
//  Created by Gurwinder on 2022-04-16.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class UpperDashboardCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       return CGSize(width: 150, height: 220)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = horizontalCollection.dequeueReusableCell(withReuseIdentifier: "OffersUpperPartCell", for: indexPath) as! OffersUpperPartCell
        
        
        
        return cell
    }
    
    
    
    
    @IBOutlet weak var horizontalCollection: UICollectionView!
    
    
    
   
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var hello: UILabel! 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      
        horizontalCollection.delegate = self
        horizontalCollection.dataSource = self
        
        horizontalCollection.register(UINib.init(nibName: "OffersUpperPartCell", bundle: nil), forCellWithReuseIdentifier: "OffersUpperPartCell")
      
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
