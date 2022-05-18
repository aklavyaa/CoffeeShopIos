//
//  PickUpOrDelivered.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-22.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class PickUpOrDelivered: UIViewController {
    
    @IBOutlet weak var deliveredImage: UIImageView!
    @IBOutlet weak var pickUpImage: UIImageView!
    
    @IBOutlet weak var pickUpView: UIView!
    
    
    @IBOutlet weak var deliveredView: UIView!
    
    
    
    var orderId = ""
    var totalCost = ""
    var adddress = ""
    
    
    var pickUp: Bool =  true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let pickUpViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.pickUpViewTap(sender:)))
        

              let deliveredViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.deliveredViewTap(sender:)))
        
        
        
        self.pickUpView.addGestureRecognizer(pickUpViewGesture)
        
        self.deliveredView.addGestureRecognizer(deliveredViewGesture)
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func pickUpDelivered(_ sender: UIButton) {
        
        
        
        let randomInt = Int.random(in: 0..<6)

        
        orderId = String(randomInt)
        
        
        
        
        
        if pickUp {
      
            
            StoreRes.orderList.append(Order(orderID: orderId, totalPrice: totalCost, address: ""))
            
            print(StoreRes.orderList)
                  
                    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ThankYou") as? ThankYou

            
            
            
                        
                        self.navigationController?.pushViewController(vc!, animated: true)
            
            
            
        }else {
                  
                    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ShippingAddressVC") as? ShippingAddressVC

            vc?.orderId = orderId
            vc?.totalCost = totalCost
            
            
            
            
                        self.navigationController?.pushViewController(vc!, animated: true)
            
        }
        
        
    }
    
    
    @objc func pickUpViewTap(sender : UITapGestureRecognizer) {
        // Do what you want

        pickUpImage.image = UIImage(named: "filled_button")
        deliveredImage.image = UIImage(named: "empty_button")
        
      pickUp = true
        
    }
    
    
     @objc func deliveredViewTap(sender : UITapGestureRecognizer) {
           // Do what you want
        pickUpImage.image = UIImage(named: "empty_button")
        deliveredImage.image = UIImage(named: "filled_button")
        
        pickUp = false
     
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
