//
//  DashboardVC.swift
//  CoffeeStoreAppIos
//
//  Created by admin user on 2022-04-15.
//  Copyright © 2022 admin user. All rights reserved.
//

import UIKit

class DashboardVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var listTableCustom: UITableView!
    // Yuvraj Sharma
	
	
	
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "OffersTableCell",for: indexPath)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
