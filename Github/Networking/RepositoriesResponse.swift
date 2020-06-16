//
//  RepositoriesResponse.swift
//  Github
//
//  Created by Mahmoud on 6/16/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

class RepositoriesResponse: Decodable{
    var data: Repository?
    
    enum CodingKeys: String,CodingKey {
         case data = "data"
    }
}
