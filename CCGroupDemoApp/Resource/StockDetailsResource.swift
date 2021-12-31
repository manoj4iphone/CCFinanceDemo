//
//  StockDetailsResource.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation

struct StockDetailsResource {
    
    func getStockDetails(stockDetailsRequest: StockDetailsRequest, completion: @escaping(Result<StockDetailsResponse?, APIError>)-> Void) {
        
        let endPointUrl = "\(APIName.stockDetails.name)&symbol=\(stockDetailsRequest.symbol)".encodedUrl
        
        guard endPointUrl != nil else {
            return
        }
        
        let request = APIRequest(withUrl: endPointUrl!, forHttpMethod: .get, withRequestBody: nil)

        APIUtility.shared.request(apiRequest: request, resultType: StockDetailsResponse.self) { (response) in
            _ = completion(response)
        }
    }
}
