//
//  SummaryResource.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation

struct SummaryResource {
    
    func getMarketSummary(completion: @escaping(Result<SummaryModel?, APIError>)-> Void) {
        
        let endPointUrl = APIName.getSummary.name.encodedUrl
        
        guard endPointUrl != nil else {
            return
        }
        
        let request = APIRequest(withUrl: endPointUrl!, forHttpMethod: .get, withRequestBody: nil)
        
        APIUtility.shared.request(apiRequest: request, resultType: SummaryModel.self) { (response) in
            _ = completion(response)
        }
    }
}
