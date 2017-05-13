//
//  ViewModel.swift
//  MockServerResearch
//
//  Created by HungNguyen on 5/13/17.
//  Copyright © 2017 Hung. All rights reserved.
//

import Foundation
import Alamofire

class ViewModel {
    
    static let API_URL = "http://127.0.0.1:5000"
    static let HELLO_ROUTE = "/hello"
    
    func requestHello() {
        Alamofire.request("\(ViewModel.API_URL)\(ViewModel.HELLO_ROUTE)")
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseJSON { response in
//            print("Request: \(String(describing: response.request))")  // original URL request
//            print("Response: \(String(describing: response.response))") // HTTP URL response
//            print("Raw Data: \(String(describing: response.data))")     // server data
//            print(response.result)   // result of response serialization
                
                switch response.result {
                    case .success:
                        self.parseHelloJson(response: response)
                    case .failure(let error):
                        print(error)
                }
                
                
        }
    }
    
    private func parseHelloJson(response: DataResponse<Any>) {
        if let result = response.result.value {
            let json = result as! NSDictionary
            let message = (json["message"] as? String) ?? "EMPTY"
            print("JSON: \(message)")
        }
    }
}
