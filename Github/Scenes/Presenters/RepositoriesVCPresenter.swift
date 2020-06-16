//
//  RepositoriesVCPresenter.swift
//  Github
//
//  Created by Mahmoud on 6/16/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

protocol RepositoriesView: class {
    //    func showIndicator()
    //    func hideIndinctor()
    func fetchingDataSuccess()
    func showError(error:String)
}

protocol RepositoryCellView {
    func displayRepoName(name:String)
    func displayRepoDescription(description:String)
    func displayRepoLanguage(language:String)
}

class RepositoriesVCPresenter {
    
    //MARK:- Properties
    
    private weak var view: RepositoriesView?
    private let interactor: RepositoriesAPIProtocol = RepositoriesInteractor()
    private var repositories = [Repository]()
    
    /// View Initializer
    
    init(view: RepositoriesView) {
        self.view = view
    }
    
    func viewDidLoad(){
        getUsers()
    }
    
    /// Handling Repositories Request...
    
    func getUsers(){
        interactor.getRepositories {[weak self] (response) in
            guard self != nil else { return }
            switch response{
            case .success(let repositories):
                guard let repositories = repositories else{ return }
                self?.repositories = repositories
                self?.view?.fetchingDataSuccess()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    ///Getting repos count to pass it to the Tableview
    
    func getReposCount() -> Int{
        return repositories.count
    }
    
    /// configuring the cell
    
    func configure(cell: RepositoryCellView, for index: Int) {
        let repo = repositories[index]
        cell.displayRepoName(name: repo.name ?? "")
        cell.displayRepoDescription(description: repo.description ?? "")
        cell.displayRepoLanguage(language: repo.language ?? "")
    }
}
