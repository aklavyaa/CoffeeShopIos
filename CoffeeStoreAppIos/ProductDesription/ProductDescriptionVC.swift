//
//  ProductDescriptionVC.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-22.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class ProductDescriptionVC: UIViewController {
    @IBOutlet weak var prodImage: UIImageView!
    
    @IBAction func addToCart(_ sender: UIButton) {
        prepareCart()
        
          let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CartListVC") as? CartListVC

           
              
              self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBOutlet weak var prodTitle: UILabel!
    var num : Int = 1
    
    @IBOutlet weak var prodDescription: UILabel!
    var prodID = ""
    
    
    @IBOutlet weak var number: UILabel!
    
    @IBAction func increaseClick(_ sender: Any) {
        num = num + 1
        number.text = String(num)
    }
    @IBAction func reduceClick(_ sender: Any) {
        if num == 1 {
            return
        }
        num = num - 1
        number.text = String(num)
    }
    @IBOutlet weak var largeView: UIView!
    @IBOutlet weak var mediumView: UIView!
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var largeCheck: UIImageView!
    @IBOutlet weak var mediumCheck: UIImageView!
    @IBOutlet weak var smallCheck: UIImageView!
    
    
    var prodDetail = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
       prodDetail = StoreRes.productList.filter {
            $0.productId.contains(prodID)
        }
           
        
        
        
        
        let smallViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.smallViewTap(sender:)))
        

              let mediumViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.mediumViewTap(sender:)))
        
        
              let largeViewGesture = UITapGestureRecognizer(target: self, action:  #selector(self.largeViewTap(sender:)))
          
        
        
        self.smallView.addGestureRecognizer(smallViewGesture)
        
        self.mediumView.addGestureRecognizer(mediumViewGesture)
        
        self.largeView.addGestureRecognizer(largeViewGesture)
        
        // Do any additional setup after loading the view.
    
    
        prodTitle.text = prodDetail[0].productName
    
        
        prodImage.image = UIImage(named: prodDetail[0].productImage)
        
        prodDescription.text = prodDetail[0].productDescription
        
        
        prodPrice.text = "$\(prodDetail[0].productPrice)"
        
    }
    
    
    func prepareCart() {
        StoreRes.cartList.append(Cart(productId: prodDetail[0].productId, productName: prodDetail[0].productName, productDescription: prodDetail[0].productDescription, productPrice: prodDetail[0].productPrice, catId: prodDetail[0].catId, isFeatured: prodDetail[0].isFeatured, quantity: String(num), totalPrice: String(Float(prodDetail[0].productPrice)! * Float(num))))
    
    
    
        print(StoreRes.cartList)
        
    }
    
    
    
    @IBOutlet weak var prodPrice: UILabel!
    @objc func smallViewTap(sender : UITapGestureRecognizer) {
        // Do what you want

        smallCheck.image = UIImage(named: "filled_button")
        mediumCheck.image = UIImage(named: "empty_button")
        
        largeCheck.image = UIImage(named: "empty_button")
    }
    
    
     @objc func mediumViewTap(sender : UITapGestureRecognizer) {
           // Do what you want
        
        smallCheck.image = UIImage(named: "empty_button")
        mediumCheck.image = UIImage(named: "filled_button")
        
        largeCheck.image = UIImage(named: "empty_button")
       }
    
    
    
    @objc func largeViewTap(sender : UITapGestureRecognizer) {
           // Do what you want
        
        smallCheck.image = UIImage(named: "empty_button")
        mediumCheck.image = UIImage(named: "empty_button")
        
        largeCheck.image = UIImage(named: "filled_button")
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
