//
//  API.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation

public struct API {
    static let BaseUrl: String = "https://yh-finance.p.rapidapi.com/"
}

public enum APIName {
    
    case getSummary
    case stockDetails

    var name: String {
        
        switch self {
            
        case .getSummary:
            return "\(API.BaseUrl)market/v2/get-summary?region=US"
            
        case .stockDetails:
            return "\(API.BaseUrl)stock/v2/get-summary?region=US"
        }
    }
}
