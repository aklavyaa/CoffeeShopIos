//
//  InventoryViewController.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-15.
//  Copyright © 2022 admin user. All rights reserved.
//
// Prabhjeet 
import UIKit

class InventoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return featuredList.count + 2
    }
    
    var featuredList: [Product] = []
    
    func getFeaturedList()  {
       var filteredList = StoreRes.productList.filter {
            $0.isFeatured.contains("1")
        }
        featuredList = filteredList
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell
        if indexPath.row  == 0 {
          cell   = tableView.dequeueReusableCell(withIdentifier: "UpperDashboardCell",for: indexPath) as! UpperDashboardCell
                    
        
        } else if indexPath.row == 1 {
             let cells   = tableView.dequeueReusableCell(withIdentifier: "MiddelViewCellTableViewCell",for: indexPath) as! MiddelViewCellTableViewCell
            
            cells.parent = self
            
            cell = cells
                              
                  
        }else  {
             let cells   = tableView.dequeueReusableCell(withIdentifier: "EndViewTableViewCell",for: indexPath) as! EndViewTableViewCell
            
            
            cells.productName.text = " \(featuredList[indexPath.row - 2].productName)"
            
             cells.productPrice.text = "$\(featuredList[indexPath.row - 2].productPrice)"
                      
            cells.productImage.image = UIImage(named: featuredList[indexPath.row - 2].productImage)
            
             cells.productShortDescription.text = "\(featuredList[indexPath.row - 2].productDescription)"
                      
            
            if indexPath.row > 2{
                cells.featuredText.isHidden = true
            } else {
                            cells.featuredText.isHidden = false
            
            
            
            }
            
            cell = cells as EndViewTableViewCell
            
            
           
            return cell
                              
        }
          
        return cell
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductDescriptionVC") as? ProductDescriptionVC

        vc!.prodID = featuredList[indexPath.row - 2].productId
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            return 350
        }  else if indexPath.row == 1 {
            return 150
        } else {
           return 180
        }
        
    }
    
    

    @IBOutlet weak var mainList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        getFeaturedList()
        
        mainList.dataSource = self
        mainList.delegate = self
        
        mainList.register(UINib.init(nibName: "UpperDashboardCell", bundle: nil), forCellReuseIdentifier: "UpperDashboardCell")
        
           mainList.register(UINib.init(nibName: "MiddelViewCellTableViewCell", bundle: nil), forCellReuseIdentifier: "MiddelViewCellTableViewCell")
        
        mainList.register(UINib.init(nibName: "EndViewTableViewCell", bundle: nil), forCellReuseIdentifier: "EndViewTableViewCell")
                // Do any additional setup after loading the view.OffersTableCell    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
