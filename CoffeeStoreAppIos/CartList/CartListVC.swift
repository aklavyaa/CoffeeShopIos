//
//  CartListVC.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-25.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class CartListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  
    var totalCost: String = ""
    
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StoreRes.cartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell   = tableView.dequeueReusableCell(withIdentifier: "CartListCell",for: indexPath) as! CartListCell
       
        cell.prodName.text = StoreRes.cartList[indexPath.row].productName
        cell.prodDescription.text = StoreRes.cartList[indexPath.row].productDescription
        
        cell.prodQty.text = StoreRes.cartList[indexPath.row].quantity
        
        cell.prodPrice.text = "$\(StoreRes.cartList[indexPath.row].productPrice)"
        
        
        return cell
    }
    
    
    func totalPrice()  {
        
        
        var sum : Float = 0
        
        for element in StoreRes.cartList {
            sum += Float(element.totalPrice)!
        }
        
        totalCost = String(sum)
        priceCartTotal.text = "$\(String(sum))"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    @IBAction func onCheckOut(_ sender: UIButton) {
        
        
        
          let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PickUpOrDelivered") as? PickUpOrDelivered

             
        
        vc?.totalCost = totalCost
        
              
              self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBOutlet weak var priceCartTotal: UILabel!
    @IBOutlet weak var cartListTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        cartListTV.delegate = self
        cartListTV.dataSource = self
        
        
        
        
         cartListTV.register(UINib.init(nibName: "CartListCell", bundle: nil), forCellReuseIdentifier: "CartListCell")
     
        
        
        
        totalPrice()
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
