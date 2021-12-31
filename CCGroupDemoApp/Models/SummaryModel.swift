//
//  SummaryModel.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation

// MARK: - SummaryModel
struct SummaryModel: Decodable {
    
    var marketSummaryAndSparkResponse: MarketSummaryAndSparkResponse?
    
    enum CodingKeys: String, CodingKey {
        case marketSummaryAndSparkResponse = "marketSummaryAndSparkResponse"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try values.decodeIfPresent(MarketSummaryAndSparkResponse.self, forKey: .marketSummaryAndSparkResponse) {
            self.marketSummaryAndSparkResponse = value
        }
    }
}

// MARK: - MarketSummaryAndSparkResponse
struct MarketSummaryAndSparkResponse: Decodable {
    
    var result: [Results]?
    var error: String?
    
    enum CodingKeys: String, CodingKey {
        case result = "result"
        case error = "error"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try values.decodeIfPresent([Results].self, forKey: .result) {
            self.result = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .error) {
            self.error = value
        }
    }
}

// MARK: - Results
struct Results: Decodable {
    
    var exchangeTimezoneName, fullExchangeName, symbol: String?
    var gmtOffSetMilliseconds, exchangeDataDelayedBy, firstTradeDateMilliseconds: Int?
    var language: String?
    var regularMarketTime: RegularMarket?
    var exchangeTimezoneShortName, quoteType: String?
    var marketState: String?
    var market: String?
    var spark: Spark?
    var priceHint: Int?
    var tradeable: Bool?
    var sourceInterval: Int?
    var exchange: String?
    var shortName: String?
    var region: String?
    var triggerable: Bool?
    var regularMarketPreviousClose: RegularMarket?
    
    
    enum CodingKeys: String, CodingKey {
        
        case exchangeTimezoneName = "exchangeTimezoneName"
        case fullExchangeName  = "fullExchangeName"
        case symbol  = "symbol"
        
        case gmtOffSetMilliseconds  = "gmtOffSetMilliseconds"
        case exchangeDataDelayedBy  = "exchangeDataDelayedBy"
        case firstTradeDateMilliseconds  = "firstTradeDateMilliseconds"
        
        case language  = "language"
        case regularMarketTime = "regularMarketTime"
        
        case exchangeTimezoneShortName = "exchangeTimezoneShortName"
        case quoteType = "quoteType"
        
        case marketState = "marketState"
        case market = "market"
        case spark = "spark"
        case priceHint = "priceHint"
        case tradeable = "tradeable"
        case sourceInterval = "sourceInterval"
        case exchange = "exchange"
        case shortName = "shortName"
        case region = "region"
        case triggerable = "triggerable"
        case regularMarketPreviousClose = "regularMarketPreviousClose"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneName) {
            self.exchangeTimezoneName = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .fullExchangeName) {
            self.fullExchangeName = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .symbol) {
            self.symbol = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .gmtOffSetMilliseconds) {
            self.gmtOffSetMilliseconds = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .exchangeDataDelayedBy) {
            self.exchangeDataDelayedBy = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .firstTradeDateMilliseconds) {
            self.firstTradeDateMilliseconds = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .language) {
            self.language = value
        }
        
        if let value = try values.decodeIfPresent(RegularMarket.self, forKey: .regularMarketTime) {
            self.regularMarketTime = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneShortName) {
            self.exchangeTimezoneShortName = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .quoteType) {
            self.quoteType = value
        }
     
        if let value = try values.decodeIfPresent(String.self, forKey: .marketState) {
            self.marketState = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .market) {
            self.market = value
        }
        
        if let value = try values.decodeIfPresent(Spark.self, forKey: .spark) {
            self.spark = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .priceHint) {
            self.priceHint = value
        }
        
        if let value = try values.decodeIfPresent(Bool.self, forKey: .tradeable) {
            self.tradeable = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .sourceInterval) {
            self.sourceInterval = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .exchange) {
            self.exchange = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .shortName) {
            self.shortName = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .region) {
            self.region = value
        }
        
        if let value = try values.decodeIfPresent(Bool.self, forKey: .triggerable) {
            self.triggerable = value
        }
        
        if let value = try values.decodeIfPresent(RegularMarket.self, forKey: .regularMarketPreviousClose) {
            self.regularMarketPreviousClose = value
        }
    }
}

// MARK: - RegularMarket
struct RegularMarket: Decodable {
    
    var raw: Double?
    var fmt: String?
    
    enum CodingKeys: String, CodingKey {
        case raw = "raw"
        case fmt  = "fmt"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try values.decodeIfPresent(Double.self, forKey: .raw) {
            self.raw = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .fmt) {
            self.fmt = value
        }
    }
}

// MARK: - Spark
struct Spark: Decodable {
    
    var timestamp: [Int]?
    var symbol: String?
    var dataGranularity: Int?
    var end, start: Int?
//    var close: [Double]?
    var previousClose, chartPreviousClose: Double?
 
    enum CodingKeys: String, CodingKey {
        case timestamp = "timestamp"
        case symbol  = "symbol"
        case dataGranularity  = "dataGranularity"
        case end  = "end"
        case start  = "start"
//        case close  = "close"
        case previousClose =  "previousClose"
        case chartPreviousClose =  "chartPreviousClose"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try values.decodeIfPresent([Int].self, forKey: .timestamp) {
            self.timestamp = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .symbol) {
            self.symbol = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .dataGranularity) {
            self.dataGranularity = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .end) {
            self.end = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .start) {
            self.start = value
        }
        
//        if let value = try values.decodeIfPresent([Double].self, forKey: .close) {
//            self.close = value
//        }
        
        if let value = try values.decodeIfPresent(Double.self, forKey: .previousClose) {
            self.previousClose = value
        }

        if let value = try values.decodeIfPresent(Double.self, forKey: .chartPreviousClose) {
            self.chartPreviousClose = value
        }
    }
}
