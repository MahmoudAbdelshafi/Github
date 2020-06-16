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
    
    var repo:[Repository]? {
        didSet{
            print(repo![0].name)
        }
    }
    //MARK:- IBOutlets
    
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testNetWorkLayer()
        setupTableView()
    }
    
    func testNetWorkLayer(){
        let api: RepositoriesAPIProtocol = RepositoriesAPI()
        api.getRepositories { (result) in
            switch result {
            case .success(let response):
                var users = response
                for user in users!{
                    //print("\(user)")
                }
            case .failure(let error):
                print(error)
                
            }
        }
    }
    
}

