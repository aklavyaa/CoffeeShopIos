//
//  Category.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-05-04.
//  Copyright © 2022 admin user. All rights reserved.
//

import Foundation

struct Category {
    
    var catId: String = ""
    var catName: String = ""
    var totalProductItems: String = ""
    var catLogo: String = ""
    
    init(catId: String, catName: String, totalProductItems: String, catLogo: String) {
        self.catId = catId
        self.catName = catName
        self.totalProductItems = totalProductItems
        self.catLogo = catLogo
    }
    
}
