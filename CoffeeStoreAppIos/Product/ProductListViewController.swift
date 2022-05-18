//
//  ProductListViewController.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-21.
//  Copyright © 2022 admin user. All rights reserved.
//
// prabhjeet

import UIKit

class ProductListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var catId : String = ""
    
    
    
    
    
    var isEditPRod = false
    
        var filteredList: [Product] = []

    
        func getFeaturedList()  {
            
            if isEditPRod {
                
                self.filteredList = StoreRes.productList
                
            }else {
                var filteredList = StoreRes.productList.filter {
                             $0.catId.contains(catId)
                         }
                         
                         self.filteredList = filteredList
            }
        
        
    }
    

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return filteredList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productListTableView.dequeueReusableCell(withIdentifier: "ProductListCell", for: indexPath) as! ProductListCell
        
        
        cell.prodName.text = filteredList[indexPath.row].productName
        
        cell.prodDescription.text = filteredList[indexPath.row].productDescription
        
        
        cell.prodImage.image = UIImage(named: filteredList[indexPath.row].productImage)
        
        
        cell.prodPrice.text = "$\(filteredList[indexPath.row].productPrice)"
        
        return cell
    
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if isEditPRod {
            
             let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductUpdate") as! ProductUpdate


            vc.prodId = filteredList[indexPath.row].productId
            
            
            vc.prodPosition = indexPath.row
            
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        } else {
             
                    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductDescriptionVC") as! ProductDescriptionVC

                   vc.prodID = filteredList[indexPath.row].productId
                   self.navigationController?.pushViewController(vc, animated: true)
            
        }
       
    
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }


    
    
    @IBOutlet weak var productListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
             getFeaturedList()
            
        
       
        
        productListTableView.delegate = self
        productListTableView.dataSource = self
        
        productListTableView.register(UINib.init(nibName: "ProductListCell", bundle: nil), forCellReuseIdentifier: "ProductListCell")
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
