//
//  API.swift
//  Github
//
//  Created by Mahmoud on 6/16/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

protocol RepositoriesAPIProtocol{
    func getRepositories(completion: @escaping (Result<[Repository]?, NSError>) -> Void)
}

class RepositoriesAPI: BaseAPI<RepositoriesNetworking>, RepositoriesAPIProtocol{
    
    //MARK:- Requests
    
    func getRepositories(completion: @escaping (Result<[Repository]?, NSError>) -> Void){
        self.fetchData(target: .getRepos, responseClass: [Repository].self) { (result) in
            completion(result)
        }
    }
}
