//
//  UserVC+TableView.swift
//  Github
//
//  Created by Mahmoud on 6/14/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import UIKit

//MARK:- TableView Delegate and DataSource methods

extension RepositoriesVC: UITableViewDataSource,UITableViewDelegate{
    
    func setupTableView(){
        tableView.register(UINib(nibName: "RepositoryCell", bundle: nil), forCellReuseIdentifier: "RepositoryCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.getReposCount() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryCell", for: indexPath) as! RepositoryCell
        presenter?.configure(cell: cell, for: indexPath.row)
        return cell
    }
    
    
}
