//
//  APIService.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 4/11/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class APIService: NSObject {
    
    class func login(Number:String,password:String,completion: @escaping (_ error: Error?, _ success: Bool)->Void){
        let url =  "http://live-artists.com/admin/api/user/login/1"
        let parameters = [
            
            "Number": Number,
            "password": password
        ]
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            . responseJSON { (response) in
                switch response.result
                {
                case.failure(let error):
                    completion(error, false)
                    print(error)
                    
                case.success(let Value):
                    let json = JSON(Value)
                    let api_token = json["user"]["api_token"].string
                    print("api_token: \(api_token)")
                    helper.saveApitoken(token: api_token!)
                    completion(nil, true)
                    
                    
                    
                    
                }
                
        }
    }
    

    class func register(firstname:String,lastname:String,email:String,password:String,Number:String,completion: @escaping (_ error: Error?, _ success: Bool)->Void){
    let url = "http://live-artists.com/admin/api/add/user/1"
        
    let parameters = [
        
        "firstname":firstname,
        "lastname":lastname,
        "email":email,
        "password":password,
        "Number":Number
        
        
    ]
    Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
        .validate(statusCode: 200..<300)
        . responseJSON { (response) in
            switch response.result
            {
            case.failure(let error):
                completion(error, false)
                print(error)
                
            case.success(let Value):
                let json = JSON(Value)
                let api_token = json["user"]["api_token"].string
                  print("api_token: \(api_token)")
                helper.saveApitoken(token: api_token!)
                completion(nil, true)
                
                
                
                
            }
            
    }
}


}


