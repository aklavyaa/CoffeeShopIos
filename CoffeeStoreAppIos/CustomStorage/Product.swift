//
//  Product.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-05-04.
//  Copyright © 2022 admin user. All rights reserved.
//

import Foundation

struct Product {
    
    var productId: String = ""
    var productName: String = ""
    var productDescription: String = ""
    var productPrice: String = ""
    var catId: String = ""
    var isFeatured: String = ""
    var productImage: String = ""
    
    
    
    init(productId: String, productName: String,productDescription: String,
         productPrice: String, catId: String,
         isFeatured: String, productImage: String) {
        self.productId = productId
        self.productName = productName
        self.productDescription = productDescription
        self.productPrice = productPrice
        self.catId = catId
        self.isFeatured = isFeatured
        self.productImage = productImage

    }
}
