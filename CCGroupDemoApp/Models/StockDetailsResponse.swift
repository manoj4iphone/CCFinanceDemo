//
//  StockDetailsResponse.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 29/12/21.
//

import Foundation

// MARK: - StockDetailsRequest
struct StockDetailsRequest: Encodable {
    var symbol: String
}


// MARK: - StockDetailsResponse
struct StockDetailsResponse: Decodable {
    
    let quoteType: QuoteType?
    let symbol: String?
    let price: Price?
    let summaryDetail: SummaryDetail?
    let futuresChain: FuturesChain?
    
    enum CodingKeys: String, CodingKey {
        case quoteType = "quoteType"
        case symbol = "symbol"
        case price = "price"
        case summaryDetail = "summaryDetail"
        case futuresChain = "futuresChain"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        quoteType = try values.decodeIfPresent(QuoteType.self, forKey: .quoteType)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        price = try values.decodeIfPresent(Price.self, forKey: .price)
        summaryDetail = try values.decodeIfPresent(SummaryDetail.self, forKey: .summaryDetail)
        futuresChain = try values.decodeIfPresent(FuturesChain.self, forKey: .futuresChain)
    }
}


// MARK: - SummaryDetail
struct SummaryDetail: Decodable {
    
    let averageDailyVolume10Day: AverageDailyVolume10Day?
    let averageVolume10Days: AverageDailyVolume10Day?
    let priceHint: AverageDailyVolume10Day?
    let regularMarketVolume: AverageDailyVolume10Day?
    let openInterest: AverageDailyVolume10Day?
    let averageVolume: AverageDailyVolume10Day?
    let askSize, volume: AverageDailyVolume10Day?
    let bidSize: AverageDailyVolume10Day?
    let open: ExpireDate?

    
    let previousClose, regularMarketOpen, twoHundredDayAverage: ExpireDate?
    
    let regularMarketDayHigh: ExpireDate?
    let regularMarketPreviousClose, fiftyDayAverage: ExpireDate?
    
    let summaryDetailOpen: ExpireDate?
    let toCurrency: String??
    let expireDate: ExpireDate?
    let algorithm: String?
    
    
    let regularMarketDayLow: ExpireDate?
    let currency: String?
    let lastMarket: String?
    let dayLow, ask: ExpireDate?
    
    let fiftyTwoWeekHigh: ExpireDate?
    let maxAge: Int?
    let fromCurrency: String?
    
    
    let fiftyTwoWeekLow, bid: ExpireDate?
    let tradeable: Bool?
    let dayHigh: ExpireDate?

    enum CodingKeys: String, CodingKey {
        
        case averageDailyVolume10Day = "averageDailyVolume10Day"
        case averageVolume10Days = "averageVolume10days"
        case priceHint = "priceHint"
        case regularMarketVolume = "regularMarketVolume"
        case openInterest = "openInterest"
        case averageVolume = "averageVolume"
        case askSize = "askSize"
        case volume = "volume"
        case bidSize = "bidSize"
        case open = "open"
        
        
        case previousClose = "previousClose"
        case regularMarketOpen = "regularMarketOpen"
        case twoHundredDayAverage = "twoHundredDayAverage"
        
        case regularMarketDayHigh = "regularMarketDayHigh"
        case regularMarketPreviousClose = "regularMarketPreviousClose"
        case fiftyDayAverage = "fiftyDayAverage"
        
        
        case summaryDetailOpen = "summaryDetailOpen"
        case toCurrency = "toCurrency"
        case expireDate = "expireDate"
        case algorithm = "algorithm"
        
        
        case regularMarketDayLow = "regularMarketDayLow"
        case currency = "currency"
        case lastMarket = "lastMarket"
        case dayLow = "dayLow"
        case ask = "ask"
        
        
        case fiftyTwoWeekHigh = "fiftyTwoWeekHigh"
        case maxAge = "maxAge"
        case fromCurrency = "fromCurrency"
        
        case fiftyTwoWeekLow = "fiftyTwoWeekLow"
        case bid = "bid"
        case tradeable = "tradeable"
        case dayHigh = "dayHigh"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        averageDailyVolume10Day = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .averageDailyVolume10Day)
        averageVolume10Days = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .averageVolume10Days)
        priceHint = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .priceHint)
        regularMarketVolume = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .regularMarketVolume)
        openInterest = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .openInterest)
        averageVolume = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .averageVolume)
        askSize = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .askSize)
        volume = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .volume)
        bidSize = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .bidSize)

        open = try values.decodeIfPresent(ExpireDate.self, forKey: .open)
        
        previousClose = try values.decodeIfPresent(ExpireDate.self, forKey: .previousClose)
        regularMarketOpen = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketOpen)
        twoHundredDayAverage = try values.decodeIfPresent(ExpireDate.self, forKey: .twoHundredDayAverage)
        
        regularMarketDayHigh = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketDayHigh)
        regularMarketPreviousClose = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketPreviousClose)
        fiftyDayAverage = try values.decodeIfPresent(ExpireDate.self, forKey: .fiftyDayAverage)
        
        
        summaryDetailOpen = try values.decodeIfPresent(ExpireDate.self, forKey: .summaryDetailOpen)
        toCurrency = try values.decodeIfPresent(String.self, forKey: .toCurrency)
        expireDate = try values.decodeIfPresent(ExpireDate.self, forKey: .expireDate)
        algorithm = try values.decodeIfPresent(String.self, forKey: .algorithm)
        
        
        regularMarketDayLow = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketDayLow)
        currency = try values.decodeIfPresent(String.self, forKey: .currency)
        lastMarket = try values.decodeIfPresent(String.self, forKey: .lastMarket)
        dayLow = try values.decodeIfPresent(ExpireDate.self, forKey: .dayLow)
        ask = try values.decodeIfPresent(ExpireDate.self, forKey: .ask)
        
        
        fiftyTwoWeekHigh = try values.decodeIfPresent(ExpireDate.self, forKey: .fiftyTwoWeekHigh)
        maxAge = try values.decodeIfPresent(Int.self, forKey: .maxAge)
        fromCurrency = try values.decodeIfPresent(String.self, forKey: .fromCurrency)
        
        
        fiftyTwoWeekLow = try values.decodeIfPresent(ExpireDate.self, forKey: .fiftyTwoWeekLow)
        bid = try values.decodeIfPresent(ExpireDate.self, forKey: .bid)
        tradeable = try values.decodeIfPresent(Bool.self, forKey: .tradeable)
        dayHigh = try values.decodeIfPresent(ExpireDate.self, forKey: .dayHigh)
    }
}

// MARK: - FuturesChain
struct FuturesChain: Decodable {
    
    let futures: [String]?
    let futuresChainDetails: [String: FuturesChainDetail]?
    let maxAge: Int?
    
    enum CodingKeys: String, CodingKey {
        case futures = "quoteType"
        case futuresChainDetails = "symbol"
        case maxAge = "price"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        futures = try values.decodeIfPresent([String].self, forKey: .futures)
        futuresChainDetails = try values.decodeIfPresent([String: FuturesChainDetail].self, forKey: .futuresChainDetails)
        maxAge = try values.decodeIfPresent(Int.self, forKey: .futuresChainDetails)
    }
    
}

// MARK: - FuturesChainDetail
struct FuturesChainDetail: Decodable {
    
    let sourceInterval: Int?
    let esgPopulated: Bool?
    let exchange: String?
    let regularMarketTime: Int?
    let shortName, exchangeTimezoneName: String?
    let regularMarketChange, regularMarketPreviousClose: Int?
    let contractSymbol: Bool?
    let exchangeTimezoneShortName: String?
    let exchangeDataDelayedBy, expireDate, regularMarketPrice: Int?
    let triggerable: Bool?
    let gmtOffSetMilliseconds, firstTradeDateMilliseconds: Int?
    let region: String?
    let expireISODate: Date?
    let marketState, quoteType, symbol, language: String?
    let headSymbolAsString, market: String?
    let regularMarketChangePercent: Double?
    let fullExchangeName: String?
    let tradeable: Bool?

    enum CodingKeys: String, CodingKey {
        case sourceInterval, esgPopulated, exchange, regularMarketTime, shortName, exchangeTimezoneName, regularMarketChange, regularMarketPreviousClose, contractSymbol, exchangeTimezoneShortName, exchangeDataDelayedBy, expireDate, regularMarketPrice, triggerable, gmtOffSetMilliseconds, firstTradeDateMilliseconds, region
        case expireISODate = "expireIsoDate"
        case marketState, quoteType, symbol, language, headSymbolAsString, market, regularMarketChangePercent, fullExchangeName, tradeable
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        sourceInterval = try values.decodeIfPresent(Int.self, forKey: .sourceInterval)
        esgPopulated = try values.decodeIfPresent(Bool.self, forKey: .esgPopulated)
        exchange = try values.decodeIfPresent(String.self, forKey: .exchange)
        regularMarketTime = try values.decodeIfPresent(Int.self, forKey: .regularMarketTime)
        shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
        exchangeTimezoneName = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneName)
        regularMarketChange = try values.decodeIfPresent(Int.self, forKey: .regularMarketChange)
        regularMarketPreviousClose = try values.decodeIfPresent(Int.self, forKey: .regularMarketPreviousClose)
        contractSymbol = try values.decodeIfPresent(Bool.self, forKey: .contractSymbol)
        exchangeTimezoneShortName = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneShortName)
        exchangeDataDelayedBy = try values.decodeIfPresent(Int.self, forKey: .exchangeDataDelayedBy)
        expireDate = try values.decodeIfPresent(Int.self, forKey: .expireDate)
        regularMarketPrice = try values.decodeIfPresent(Int.self, forKey: .regularMarketPrice)
        triggerable = try values.decodeIfPresent(Bool.self, forKey: .triggerable)
        gmtOffSetMilliseconds = try values.decodeIfPresent(Int.self, forKey: .gmtOffSetMilliseconds)
        firstTradeDateMilliseconds = try values.decodeIfPresent(Int.self, forKey: .firstTradeDateMilliseconds)
        region = try values.decodeIfPresent(String.self, forKey: .region)
        expireISODate = try values.decodeIfPresent(Date.self, forKey: .expireISODate)
        marketState = try values.decodeIfPresent(String.self, forKey: .marketState)
        quoteType = try values.decodeIfPresent(String.self, forKey: .quoteType)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        language = try values.decodeIfPresent(String.self, forKey: .language)
        headSymbolAsString = try values.decodeIfPresent(String.self, forKey: .headSymbolAsString)
        market = try values.decodeIfPresent(String.self, forKey: .market)
        regularMarketChangePercent = try values.decodeIfPresent(Double.self, forKey: .regularMarketChangePercent)
        fullExchangeName = try values.decodeIfPresent(String.self, forKey: .fullExchangeName)
        tradeable = try values.decodeIfPresent(Bool.self, forKey: .tradeable)
    }
    
}

// MARK: - Price
struct Price: Decodable {
    let regularMarketOpen: ExpireDate?
    let averageDailyVolume3Month: AverageDailyVolume10Day?
    let exchange: String?
    let regularMarketTime: Int?
    let regularMarketDayHigh: ExpireDate?
    let shortName: String?
    let averageDailyVolume10Day: AverageDailyVolume10Day?
    let longName: String?
    let regularMarketChange: ExpireDate?
    let currencySymbol: String?
    let regularMarketPreviousClose: ExpireDate?
    let exchangeDataDelayedBy: Int?
    let toCurrency: String?
    let expireDate: ExpireDate?
    let exchangeName: String?
    let regularMarketDayLow: ExpireDate?
    let priceHint: AverageDailyVolume10Day?
    let currency: String?
    let regularMarketPrice: ExpireDate?
    let regularMarketVolume: AverageDailyVolume10Day?
    let lastMarket: String?
    let regularMarketSource: String?
    let openInterest: AverageDailyVolume10Day?
    let marketState, underlyingSymbol: String?
    let quoteType: String?
    let symbol: String?
    let maxAge: Int?
    let fromCurrency: String?
    let regularMarketChangePercent: ExpireDate?
    
    enum CodingKeys: String, CodingKey {
        
        case regularMarketOpen = "regularMarketOpen"
        case averageDailyVolume3Month = "averageDailyVolume3Month"
        case exchange = "exchange"
        case regularMarketTime = "regularMarketTime"
        case volume24Hr = "volume24Hr"
        case regularMarketDayHigh = "regularMarketDayHigh"
        case shortName = "shortName"
        case averageDailyVolume10Day = "averageDailyVolume10Day"
        case longName = "longName"
        case regularMarketChange = "regularMarketChange"
        case currencySymbol = "currencySymbol"
        case regularMarketPreviousClose = "regularMarketPreviousClose"
        case preMarketPrice = "preMarketPrice"
        case exchangeDataDelayedBy = "exchangeDataDelayedBy"
        case toCurrency = "toCurrency"
        case postMarketChange = "postMarketChange"
        case expireDate = "expireDate"
        case postMarketPrice = "postMarketPrice"
        case exchangeName = "exchangeName"
        case preMarketChange = "preMarketChange"
        case circulatingSupply = "circulatingSupply"
        case regularMarketDayLow = "regularMarketDayLow"
        case priceHint = "priceHint"
        case currency = "currency"
        case regularMarketPrice = "regularMarketPrice"
        case regularMarketVolume = "regularMarketVolume"
        case lastMarket = "lastMarket"
        case regularMarketSource = "regularMarketSource"
        case openInterest = "openInterest"
        case marketState = "marketState"
        case underlyingSymbol = "underlyingSymbol"
        case marketCap = "marketCap"
        case quoteType = "quoteType"
        case volumeAllCurrencies = "volumeAllCurrencies"
        case strikePrice = "strikePrice"
        case symbol = "symbol"
        case maxAge = "maxAge"
        case fromCurrency = "fromCurrency"
        case regularMarketChangePercent = "regularMarketChangePercent"
    }
    
    init(from decoder: Decoder) throws {
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        regularMarketOpen = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketOpen)
        averageDailyVolume3Month = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .averageDailyVolume3Month)
        exchange = try values.decodeIfPresent(String.self, forKey: .exchange)
        regularMarketTime = try values.decodeIfPresent(Int.self, forKey: .regularMarketTime)
        regularMarketDayHigh = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketDayHigh)
        shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
        averageDailyVolume10Day = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .averageDailyVolume10Day)
        longName = try values.decodeIfPresent(String.self, forKey: .longName)
        regularMarketChange = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketChange)
        currencySymbol = try values.decodeIfPresent(String.self, forKey: .currencySymbol)
        regularMarketPreviousClose = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketPreviousClose)
        exchangeDataDelayedBy = try values.decodeIfPresent(Int.self, forKey: .exchangeDataDelayedBy)
        toCurrency = try values.decodeIfPresent(String.self, forKey: .toCurrency)
        expireDate = try values.decodeIfPresent(ExpireDate.self, forKey: .expireDate)
        exchangeName = try values.decodeIfPresent(String.self, forKey: .exchangeName)
        regularMarketDayLow = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketDayLow)
        priceHint = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .priceHint)
        currency = try values.decodeIfPresent(String.self, forKey: .currency)
        regularMarketPrice = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketPrice)
        regularMarketVolume = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .regularMarketVolume)
        lastMarket = try values.decodeIfPresent(String.self, forKey: .lastMarket)
        regularMarketSource = try values.decodeIfPresent(String.self, forKey: .regularMarketSource)
        openInterest = try values.decodeIfPresent(AverageDailyVolume10Day.self, forKey: .openInterest)
        marketState = try values.decodeIfPresent(String.self, forKey: .marketState)
        underlyingSymbol = try values.decodeIfPresent(String.self, forKey: .underlyingSymbol)
        quoteType = try values.decodeIfPresent(String.self, forKey: .quoteType)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        maxAge = try values.decodeIfPresent(Int.self, forKey: .maxAge)
        fromCurrency = try values.decodeIfPresent(String.self, forKey: .fromCurrency)
        regularMarketChangePercent = try values.decodeIfPresent(ExpireDate.self, forKey: .regularMarketChangePercent)
    }
}

// MARK: - AverageDailyVolume10Day
struct AverageDailyVolume10Day: Decodable {
    
    let raw: Double?
    let fmt: String?
    let longFmt: String?
    
    enum CodingKeys: String, CodingKey {
        case raw = "raw"
        case fmt = "fmt"
        case longFmt = "longFmt"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        raw = try values.decodeIfPresent(Double.self, forKey: .raw)
        fmt = try values.decodeIfPresent(String.self, forKey: .fmt)
        longFmt = try values.decodeIfPresent(String.self, forKey: .longFmt)
    }
}

// MARK: - ExpireDate
struct ExpireDate: Decodable {
    
    let raw: Double?
    let fmt: String?

    enum CodingKeys: String, CodingKey {
        case raw = "raw"
        case fmt = "fmt"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        raw = try values.decodeIfPresent(Double.self, forKey: .raw)
        fmt = try values.decodeIfPresent(String.self, forKey: .fmt)
    }
}

// MARK: - QuoteType
struct QuoteType: Decodable {
    
    let exchange, shortName, exchangeTimezoneName, exchangeTimezoneShortName: String?
    let isEsgPopulated: Bool?
    let gmtOffSetMilliseconds, underlyingSymbol, quoteType, symbol: String?
    let underlyingExchangeSymbol, headSymbol, market: String?
    
    enum CodingKeys: String, CodingKey {
        case exchange = "exchange"
        case shortName = "shortName"
        case exchangeTimezoneName = "exchangeTimezoneName"
        case exchangeTimezoneShortName = "exchangeTimezoneShortName"
        case isEsgPopulated = "isEsgPopulated"
        case gmtOffSetMilliseconds = "gmtOffSetMilliseconds"
        case underlyingSymbol = "underlyingSymbol"
        case quoteType = "quoteType"
        case symbol = "symbol"
        case underlyingExchangeSymbol = "underlyingExchangeSymbol"
        case headSymbol = "headSymbol"
        case market = "market"
    }
    
    
    init(from decoder: Decoder) throws {
     
        let values = try decoder.container(keyedBy: CodingKeys.self)
        exchange = try values.decodeIfPresent(String.self, forKey: .exchange)
        shortName = try values.decodeIfPresent(String.self, forKey: .shortName)
        exchangeTimezoneName = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneName)
        exchangeTimezoneShortName = try values.decodeIfPresent(String.self, forKey: .exchangeTimezoneShortName)
        isEsgPopulated = try values.decodeIfPresent(Bool.self, forKey: .isEsgPopulated)
        gmtOffSetMilliseconds = try values.decodeIfPresent(String.self, forKey: .gmtOffSetMilliseconds)
        underlyingSymbol = try values.decodeIfPresent(String.self, forKey: .underlyingSymbol)
        quoteType = try values.decodeIfPresent(String.self, forKey: .quoteType)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        underlyingExchangeSymbol = try values.decodeIfPresent(String.self, forKey: .underlyingExchangeSymbol)
        headSymbol = try values.decodeIfPresent(String.self, forKey: .headSymbol)
        market = try values.decodeIfPresent(String.self, forKey: .market)
    }
}


