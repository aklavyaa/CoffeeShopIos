//
//  ProductListViewController.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-21.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = productListTableView.dequeueReusableCell(withIdentifier: "ProductListCell", for: indexPath) as! ProductListCell
        
        return cell
    
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProductDescriptionVC") as! ProductDescriptionVC

        
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }


    
    
    @IBOutlet weak var productListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        productListTableView.delegate = self
        productListTableView.dataSource = self
        
        productListTableView.register(UINib.init(nibName: "ProductListCell", bundle: nil), forCellReuseIdentifier: "ProductListCell")
        // Do any additional setup after loading the view.
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
