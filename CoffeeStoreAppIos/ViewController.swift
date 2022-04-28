//
//  ViewController.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-14.
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


               } else {
                        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "InventoryViewController") as? InventoryViewController
                     
                         self.navigationController?.pushViewController(vc!, animated: true)
               }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
}

