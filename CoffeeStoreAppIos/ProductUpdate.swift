//
//  ProductUpdate.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-05-11.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class ProductUpdate: UIViewController {

    
    var isAdd: Bool = false
    
    
    @IBOutlet weak var priceEdt: UITextField!
    
    @IBOutlet weak var descriptionEdt: UITextField!
    @IBOutlet weak var nameEdt: UITextField!
    var prodId: String = ""
    
    var prodPosition: Int = 0
    
    var prodDetail = [Product]()

    
    @IBAction func updateClick(_ sender: UIButton) {
        
        
        if isAdd {
            StoreRes.productList.append(Product(productId: String(Int.random(in: 1000..<2000)), productName: nameEdt.text ?? "", productDescription: descriptionEdt.text ?? "", productPrice: priceEdt.text ?? "", catId: "1", isFeatured: "1",productImage: "coffee_splash"))
        }else {
        StoreRes.productList[prodPosition].productName = nameEdt.text ?? ""
        
        
         StoreRes.productList[prodPosition].productDescription = descriptionEdt.text ?? ""
               
        
         StoreRes.productList[prodPosition].productPrice = priceEdt.text ?? ""
            
        }
               
           let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController

             
             self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if !isAdd {
         prodDetail = StoreRes.productList.filter {
                   $0.productId.contains(prodId)
               }
                  
        nameEdt.text = prodDetail[0].productName
        
        descriptionEdt.text =     prodDetail[0].productDescription
        priceEdt.text =         prodDetail[0].productPrice
                   
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
