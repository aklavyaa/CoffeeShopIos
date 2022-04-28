//
//  InventoryViewController.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-15.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell
        if indexPath.row  == 0 {
          cell   = tableView.dequeueReusableCell(withIdentifier: "UpperDashboardCell",for: indexPath) as! UpperDashboardCell
                    
        
        } else if indexPath.row == 1 {
              cell   = tableView.dequeueReusableCell(withIdentifier: "MiddelViewCellTableViewCell",for: indexPath) as! MiddelViewCellTableViewCell
            
            
                              
                  
        }else  {
             let cells   = tableView.dequeueReusableCell(withIdentifier: "EndViewTableViewCell",for: indexPath) as! EndViewTableViewCell
            
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
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductListViewController") as? ProductListViewController

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
