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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let pickUpViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.pickUpViewTap(sender:)))
        

              let deliveredViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.deliveredViewTap(sender:)))
        
        
        
        self.pickUpView.addGestureRecognizer(pickUpViewGesture)
        
        self.deliveredView.addGestureRecognizer(deliveredViewGesture)
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @objc func pickUpViewTap(sender : UITapGestureRecognizer) {
        // Do what you want

        pickUpImage.image = UIImage(named: "filled_button")
        deliveredImage.image = UIImage(named: "empty_button")
        
      
    }
    
    
     @objc func deliveredViewTap(sender : UITapGestureRecognizer) {
           // Do what you want
        pickUpImage.image = UIImage(named: "empty_button")
        deliveredImage.image = UIImage(named: "filled_button")
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
