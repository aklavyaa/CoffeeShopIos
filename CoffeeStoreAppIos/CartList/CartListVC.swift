//
//  CartListVC.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-25.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class CartListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell   = tableView.dequeueReusableCell(withIdentifier: "CartListCell",for: indexPath) as! CartListCell
       
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    
    @IBOutlet weak var cartListTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        cartListTV.delegate = self
        cartListTV.dataSource = self
        
         cartListTV.register(UINib.init(nibName: "CartListCell", bundle: nil), forCellReuseIdentifier: "CartListCell")
               
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
