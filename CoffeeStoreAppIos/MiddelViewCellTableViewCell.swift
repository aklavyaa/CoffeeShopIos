//
//  MiddelViewCellTableViewCell.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-20.
//  Copyright © 2022 admin user. All rights reserved.
// GURWINDER

import UIKit

class MiddelViewCellTableViewCell: UITableViewCell,UICollectionViewDataSource,
UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    
    var parent =  UIViewController()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoreRes.catList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = horizontalCollectionList.dequeueReusableCell(withReuseIdentifier: "CatMiddleViewCell", for: indexPath) as! CatMiddleViewCell
               
        
        cell.catName.text = StoreRes.catList[indexPath.row].catName
        
        
        cell.totalMenuItems.text = "Total items \(StoreRes.catList[indexPath.row].totalProductItems)"
        
        
        
        cell.cellIconImage.image = UIImage(named: StoreRes.catList[indexPath.row].catLogo)
        
               return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 71)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
   
        
        
     //   let invController = InventoryViewController().storyboard?.instantiateViewController(withIdentifier : "InventoryViewController") as? InventoryViewController

     //   invController?.navigationController?.pushViewController(ProductListViewController(nibName: "ProductListViewController", bundle: nil), animated: true)
        
         let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductListViewController") as? ProductListViewController
        
        vc!.catId = StoreRes.catList[indexPath.row].catId
       parent.navigationController?.pushViewController(vc!, animated: true)
        print("Hello")
        
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
