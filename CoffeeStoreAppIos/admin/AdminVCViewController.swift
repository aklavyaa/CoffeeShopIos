//
//  AdminVCViewController.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-26.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class AdminVCViewController: UIViewController {

    @IBOutlet weak var totalIncome: UIButton!
    @IBOutlet weak var totalOrders: UIButton!
    
    
    
    
    @IBAction func edtProductClick(_ sender: UIButton) {
         let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductListViewController") as? ProductListViewController

        vc?.isEditPRod = true
               
               self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
    @IBAction func addProductClick(_ sender: UIButton) {
        
           let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductUpdate") as? ProductUpdate

        vc?.isAdd = true
                    
                    self.navigationController?.pushViewController(vc!, animated: true)
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        totalOrders.setTitle("Total Orders \(StoreRes.orderList.count)", for: .normal)
        
        var total : Float = 0
        
        for item in StoreRes.orderList {
            total += Float(item.totalPrice)!
        }
        
        
        totalIncome.setTitle("Total Income \(total)", for: .normal)
       
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
