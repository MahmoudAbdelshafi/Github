//
//  NetworkService.swift
//  Github
//
//  Created by Mahmoud on 6/15/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation
import Alamofire

public typealias Parameters = [String : Any]
typealias Headers = [String : String]

public enum HTTPMethod: String{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

enum Task{
    
    /// A request with no additional data.
    case requestPlain
    
    /// A requests body set with encoded parameters.
    case requestParameters(parameters:Parameters, encoding: ParameterEncoding)
}

protocol TargetType{
    var baseURL: String {get}
    var path: String {get}
    var methods: HTTPMethod {get}
    var task: Task {get}
    var headers: Headers? {get}
}

