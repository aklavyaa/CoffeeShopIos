//
//  ViewController.swift
//  CoffeeStoreAppIos
//
//  Created by Gurwinder 
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var userName: UITextField!
    
   
    @IBOutlet weak var password: UITextField!
    
   
    @IBAction func signUpClick(_ sender: UIButton) {
        
        
        
        
        
        
        
         let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CreateAccountVC") as? CreateAccountVC
                            
                                self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    @IBAction func loginCalled(_ sender: UIButton) {
         if userName.text == "admin" && password.text == "123"{
         let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AdminVCViewController") as? AdminVCViewController
            
            
        
            self.navigationController?.pushViewController(vc!, animated: true)


               }
            
        // else if userName.text == StoreRes.userName && password.text == StoreRes.password {
            
            
          //                  let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "InventoryViewController") as? InventoryViewController
                         
            //                 self.navigationController?.pushViewController(vc!, animated: true)
            
            
         //}
         
         
         
         
         
         
         
         
         else {
               
        
                       
                              let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "InventoryViewController") as? InventoryViewController
                           
                               self.navigationController?.pushViewController(vc!, animated: true)
            
            
        }
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
}

