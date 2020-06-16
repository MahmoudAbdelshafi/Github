//
//  BaseAPi.swift
//  Github
//
//  Created by Mahmoud on 6/15/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation
import Alamofire

class BaseAPI<T: TargetType>{
    
    func fetchData<M: Decodable>(target:T , responseClass: M.Type, completion: @escaping (Result<M? ,NSError>) -> Void){
        let method = Alamofire.HTTPMethod(rawValue: target.methods.rawValue)
        let headers = Alamofire.HTTPHeaders(target.headers ?? [:])
        let params = buildParams(task: target.task)
        AF.request(target.baseURL + target.path, method: method, parameters: params.0, encoding: params.1,headers: headers).responseJSON { (response) in
            guard let statusCode = response.response?.statusCode else {
                completion(.failure(NSError()))
                return 
            }
            ///Check for response.....
            if statusCode == 200 {
                ///Successful Request
                guard let jsonResponse = try? response.result.get() else {
                    ///Can't get JSON data!
                    completion(.failure(NSError()))
                    return
                }
                guard let theJSONData = try? JSONSerialization.data(withJSONObject: jsonResponse, options: []) else {
                    ///Can't decode data!
                    completion(.failure(NSError()))
                    return
                }
                
                guard let responseObj = try? JSONDecoder().decode(M.self, from: theJSONData) else {
                    // ADD Custom Error
                    completion(.failure(NSError()))
                    return
                }
                completion(.success(responseObj))
            }else{
                ///Status code 404!
                completion(.failure(NSError()))
            }
        }
    }
    
    private func buildParams(task: Task) -> (Parameters, ParameterEncoding){
        switch task{
        case .requestPlain:
            return ([:], URLEncoding.default)
        case .requestParameters(parameters: let parameters, encoding: let encoding):
            return (parameters, encoding)
        }
    }
}
