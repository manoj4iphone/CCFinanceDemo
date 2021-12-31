//
//  APIRequest.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 14/12/21.
//

import Foundation

protocol Request {
    var url: URL { get set }
    var method: HttpMethods { get set }
}
 
public struct APIRequest: Request {
    
    var url: URL
    var method: HttpMethods
    var requestBody: Data? = nil
    
    init(withUrl url: URL, forHttpMethod method: HttpMethods, withRequestBody body: Data? = nil) {
        self.url = url
        self.method = method
        self.requestBody = body != nil ? body : nil
    }
}
