//
//  Repos.swift
//  Github
//
//  Created by Mahmoud on 6/16/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

enum RepositoriesNetworking{
    case getRepos
}

extension RepositoriesNetworking: TargetType{
    var baseURL: String {
        switch self {
        default:
            return "https://api.github.com"
        }
    }
    
    var path: String {
        switch self {
        case .getRepos:
            return "/users/MahmoudAbdelshafi/repos"
        }
    }
    
    var methods: HTTPMethod {
        switch self {
        case .getRepos:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getRepos:
            return .requestPlain
        }
    }
    
    var headers: Headers? {
        switch self {
        default:
            return [:]
        }
    }
    
    
}
