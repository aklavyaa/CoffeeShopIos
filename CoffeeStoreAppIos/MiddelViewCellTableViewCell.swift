//
//  MiddelViewCellTableViewCell.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-20.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class MiddelViewCellTableViewCell: UITableViewCell,UICollectionViewDataSource,
UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = horizontalCollectionList.dequeueReusableCell(withReuseIdentifier: "CatMiddleViewCell", for: indexPath) as! CatMiddleViewCell
               
        
               return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 71)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   
        
        
        
        let invController = InventoryViewController().storyboard?.instantiateViewController(withIdentifier : "InventoryViewController") as? InventoryViewController

        invController?.navigationController?.pushViewController(ProductListViewController(nibName: "ProductListViewController", bundle: nil), animated: true)
        
        
    }
    
    @IBOutlet weak var horizontalCollectionList: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        horizontalCollectionList.delegate = self
        horizontalCollectionList.dataSource = self
        
          horizontalCollectionList.register(UINib.init(nibName: "CatMiddleViewCell", bundle: nil), forCellWithReuseIdentifier: "CatMiddleViewCell")
            
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
