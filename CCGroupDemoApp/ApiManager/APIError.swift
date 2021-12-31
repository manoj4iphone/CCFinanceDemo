//
//  APIError.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 14/12/21.
//

import Foundation

public struct APIError: Error {
    
    let reason: String?
    let httpsStatusCode: Int?
    let reqeustUrl:  URL?
    let reqeustBody: String?
    let serverResponse: String?

    init(withServerResponse response: Data? = nil, forRequestUrl url: URL, withHttpBody body: Data? = nil, errorMessage message: String, forStatusCode statusCode: Int) {
        
        self.serverResponse = response != nil ? String(data: response!, encoding: .utf8) : nil
        self.reqeustUrl = url
        self.reqeustBody = body != nil ? String(data: body!, encoding: .utf8) : nil
        self.reason = message
        self.httpsStatusCode = statusCode
    }
}


