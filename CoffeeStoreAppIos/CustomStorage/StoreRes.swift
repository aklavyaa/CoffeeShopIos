//
//  StoreRes.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-05-04.
//  Copyright © 2022 admin user. All rights reserved.
//

import Foundation


class StoreRes {
    static var userName = ""
    static var password = ""
    static var email = ""
    
    
    
    
    static var orderList = [Order]()
    
    static var cartList = [Cart]()
    
    
    
    
    
    static var catList = [
        Category(catId: "1", catName: "Hot Beverages", totalProductItems: "6", catLogo: "coffee"),
        Category(catId: "2", catName: "Cold Beverages", totalProductItems: "6", catLogo: "cold_coffee"),
            Category(catId: "3", catName: "Meals", totalProductItems: "6", catLogo: "meal"),
            Category(catId: "4", catName: "Baked Goods", totalProductItems: "6", catLogo: "baguette"),
            Category(catId: "5", catName: "Breakfast", totalProductItems: "6", catLogo: "breakfast"),

    ]
    
    
   static var productList = [
    Product(productId: "1", productName: "Latte", productDescription: "Hot Chocolate", productPrice: "12.5", catId: "1", isFeatured: "0", productImage: "late_c"),
    
    
        Product(productId: "2", productName: "Mocha Latte", productDescription: "Cold Coffee", productPrice: "12.5", catId: "2", isFeatured: "0", productImage: "mocha_latte"),
    
        
          Product(productId: "7", productName: "Fruit Tea", productDescription: "Cold Coffe", productPrice: "12.5", catId: "2", isFeatured: "0", productImage: "passionate_fruit_tea"),
        
            Product(productId: "8", productName: "Caramel Latte", productDescription: "Hot Chocolate", productPrice: "12.5", catId: "2", isFeatured: "0", productImage: "caramel_latte"),
                
           Product(productId: "9", productName: "Ice Tea", productDescription: "Cold Tea", productPrice: "12.5", catId: "2", isFeatured: "0", productImage: "ice_tea"),
                         
                   
                       
            Product(productId: "10", productName: "Vanilla Latte", productDescription: "Cold Tea", productPrice: "12.5", catId: "2", isFeatured: "0", productImage: "vanilla_latte"),
                          
                    
               Product(productId: "11", productName: "Roasted Hazel", productDescription: "Cold Coffee", productPrice: "12.5", catId: "2", isFeatured: "0", productImage: "roastedhazel"),
                           
            
            
            
            
        
        
        Product(productId: "3", productName: "Donut", productDescription: "Hot Chocolate", productPrice: "12.5", catId: "3",
                isFeatured: "0",productImage: "chocolate_roller_donut"),
        
        
        
        Product(productId: "4", productName: "Chocolate Croissant", productDescription: "Hot Chocolate", productPrice: "12.5", catId: "4",
        isFeatured: "1", productImage: "chocolate_croissant"),
        
        
        
        Product(productId: "5", productName: "Plain Bagel", productDescription: "Hot Chocolate", productPrice: "5.5",catId: "5",
        isFeatured: "1",productImage: "plain_bagel"),
        
   
        
        
    
    ]
    
    
}
