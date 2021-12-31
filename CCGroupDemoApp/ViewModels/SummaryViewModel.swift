//
//  SummaryViewModel.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation

struct SummaryViewModel {
    
    func getMarketSummary(completion: @escaping (Result<SummaryModel?, APIError>) -> ()) {
    
        let summaryResource = SummaryResource()
        
        summaryResource.getMarketSummary { (response) in
            _ = completion(response)
        }
    }
}



