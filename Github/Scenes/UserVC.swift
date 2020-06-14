//
//  ViewController.swift
//  Github
//
//  Created by Mahmoud on 6/14/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

class UserVC: UIViewController {
    
    //MARK:- IBOutlets

    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       setupTableView()
    }


}

