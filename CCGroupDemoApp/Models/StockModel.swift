//
//  StockDetailsModel.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 30/12/21.
//

import Foundation


struct StockSectionModel {
    let sectionName: String?
    let data: [StockDetailsModel]?
}

struct StockDetailsModel {
    let label: String?
    let value: String?
}
