//
//  RepositoriesVC+PresenterDelegate.swift
//  Github
//
//  Created by Mahmoud on 6/16/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

extension RepositoriesVC: RepositoriesView {
    
    
    func fetchingDataSuccess() {
        tableView.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
    
    
}
