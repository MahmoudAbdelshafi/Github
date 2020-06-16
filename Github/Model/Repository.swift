//
//  Repositories.swift
//  Github
//
//  Created by Mahmoud on 6/14/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

struct Repository:Decodable {
    
    let id: Int?
    let name: String?
    let fullName: String?
    let description: String?
    let language: String?
    let owner: Owner?
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case description
        case owner
        case language
    }
}

