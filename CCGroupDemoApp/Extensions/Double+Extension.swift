//
//  Double+Extension.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 30/12/21.
//

import Foundation


extension Double {
    
    var currencyFormattedString: String? {
        let convertPrice = NSNumber(value: Double(self))
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        return formatter.string(from: convertPrice)
    }
}
