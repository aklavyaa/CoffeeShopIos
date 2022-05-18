//
//  ShippingAddressVC.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-22.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class ShippingAddressVC: UIViewController {

    @IBOutlet weak var nameEdt: UITextField!
    
    @IBOutlet weak var countryEdt: UITextField!
    @IBOutlet weak var addressEdt: UITextField!
    
    @IBAction func nextClick(_ sender: UIButton) {
        
        var address: String =  addressEdt.text?.description ?? ""
        var province: String =  provinceEdt.text?.description ?? ""
        
        var pin: String = pinEdt.text?.description ?? ""
        

        
        var country: String = pinEdt.text?.description ?? ""
        
        
        
        var order = Order(orderID: orderId, totalPrice: totalCost, address: "\(address), \(province), \(pin), \(country) ")
        
        
        StoreRes.orderList.append(order)
        
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ThankYou") as? ThankYou

      
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
        print(StoreRes.orderList)
    }
    @IBOutlet weak var pinEdt: UITextField!
    @IBOutlet weak var provinceEdt: UITextField!
    var orderId: String = ""

    var totalCost: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
