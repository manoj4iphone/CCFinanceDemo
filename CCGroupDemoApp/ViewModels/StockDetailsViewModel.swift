//
//  StockDetailsViewModel.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation

struct StockDetailsViewModel {
    
    func getStockDetails(stockDetailsRequest: StockDetailsRequest, completion: @escaping(Result<StockDetailsResponse?, APIError>) -> Void) {

        let stockDetailsResource = StockDetailsResource()
        stockDetailsResource.getStockDetails(stockDetailsRequest: stockDetailsRequest) { (response) in
            _ = completion(response)
        }
    }
    
}
