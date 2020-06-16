//
//  ViewController.swift
//  Github
//
//  Created by Mahmoud on 6/14/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit
import Alamofire

class RepositoriesVC: UIViewController {
    
    //MARK:- Properties
    
    var presenter: RepositoriesVCPresenter?
    
    //MARK:- IBOutlets
    
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = RepositoriesVCPresenter(view: self)
        presenter?.viewDidLoad()
        setupTableView()
    }
    

    
}

