//
//  CreateAccountVC.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-14.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet var password: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        
        if password.text!.isEmpty || email.text!.isEmpty || username.text!.isEmpty {
            
            
            
        } else {
            
            StoreRes.userName = username.text!
            
            StoreRes.password = password.text!
            
            StoreRes.email = email.text!
            
            
              let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
                               
                                   self.navigationController?.pushViewController(vc!, animated: true)
            
            
            
            
        }
        
        
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
