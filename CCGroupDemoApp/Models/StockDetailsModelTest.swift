////
////  StockDetailsModel.swift
////  CCGroupDemoApp
////
////  Created by sft_mac on 23/12/21.
////
//
//import Foundation
//
//// MARK: - StockDetailsRequest
//struct StockDetailsRequest: Encodable {
//    var symbol: String
//}
//
//
//// MARK: - StockDetailsResponse
//struct StockDetailsResponseTest: Decodable {
//    var defaultKeyStatistics: DefaultKeyStatistics?
//    var details: Details?
//    var summaryProfile: SummaryProfile?
//    var recommendationTrend: RecommendationTrend?
//    var financialsTemplate: FinancialsTemplate?
//    var majorDirectHolders: Holders?
//    var earnings: WelcomeEarnings?
//    var price: Price?
//    var fundOwnership: Ownership?
//    var insiderTransactions: InsiderTransactions?
//    var insiderHolders: Holders?
//    var netSharePurchaseActivity: NetSharePurchaseActivity?
//    var majorHoldersBreakdown: MajorHoldersBreakdown?
//    var financialData: FinancialData?
//    var quoteType: QuoteType?
//    var institutionOwnership: Ownership?
//    var calendarEvents: CalendarEvents?
//    var summaryDetail: SummaryDetail?
//    var symbol: String?
//    var esgScores: Details?
//    var upgradeDowngradeHistory: UpgradeDowngradeHistory?
//    var pageViews: PageViews?
//    
//    enum CodingKeys: String, CodingKey {
//        case defaultKeyStatistics = "defaultKeyStatistics"
//        case details = "details"
//        case summaryProfile = "summaryProfile"
//        case recommendationTrend = "recommendationTrend"
//        case financialsTemplate = "financialsTemplate"
//        case majorDirectHolders = "majorDirectHolders"
//        case earnings = "earnings"
//        case price = "price"
//        case fundOwnership = "fundOwnership"
//        case insiderTransactions = "insiderTransactions"
//        case insiderHolders = "insiderHolders"
//        case netSharePurchaseActivity = "netSharePurchaseActivity"
//        case majorHoldersBreakdown = "majorHoldersBreakdown"
//        case financialData = "financialData"
//        case quoteType = "quoteType"
//        case institutionOwnership = "institutionOwnership"
//        case calendarEvents = "calendarEvents"
//        case summaryDetail = "summaryDetail"
//        case symbol = "symbol"
//        case esgScores = "esgScores"
//        case upgradeDowngradeHistory = "upgradeDowngradeHistory"
//        case pageViews = "pageViews"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(DefaultKeyStatistics.self, forKey: .defaultKeyStatistics) {
//            self.defaultKeyStatistics = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .details) {
//            self.details = value
//        }
//        
//        if let value = try values.decodeIfPresent(SummaryProfile.self, forKey: .summaryProfile) {
//            self.summaryProfile = value
//        }
//        
//        if let value = try values.decodeIfPresent(RecommendationTrend.self, forKey: .recommendationTrend) {
//            self.recommendationTrend = value
//        }
//        
//        if let value = try values.decodeIfPresent(FinancialsTemplate.self, forKey: .financialsTemplate) {
//            self.financialsTemplate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Holders.self, forKey: .majorDirectHolders) {
//            self.majorDirectHolders = value
//        }
//        
//        if let value = try values.decodeIfPresent(WelcomeEarnings.self, forKey: .earnings) {
//            self.earnings = value
//        }
//        
//        if let value = try values.decodeIfPresent(Price.self, forKey: .price) {
//            self.price = value
//        }
//        
//        if let value = try values.decodeIfPresent(Ownership.self, forKey: .fundOwnership) {
//            self.fundOwnership = value
//        }
//        
//        if let value = try values.decodeIfPresent(InsiderTransactions.self, forKey: .insiderTransactions) {
//            self.insiderTransactions = value
//        }
//        
//        if let value = try values.decodeIfPresent(Holders.self, forKey: .insiderHolders) {
//            self.insiderHolders = value
//        }
//        
//        if let value = try values.decodeIfPresent(NetSharePurchaseActivity.self, forKey: .netSharePurchaseActivity) {
//            self.netSharePurchaseActivity = value
//        }
//        
//        if let value = try values.decodeIfPresent(MajorHoldersBreakdown.self, forKey: .majorHoldersBreakdown) {
//            self.majorHoldersBreakdown = value
//        }
//        
//        if let value = try values.decodeIfPresent(FinancialData.self, forKey: .financialData) {
//            self.financialData = value
//        }
//        
//        if let value = try values.decodeIfPresent(QuoteType.self, forKey: .quoteType) {
//            self.quoteType = value
//        }
//        
//        if let value = try values.decodeIfPresent(Ownership.self, forKey: .institutionOwnership) {
//            self.institutionOwnership = value
//        }
//        
//        if let value = try values.decodeIfPresent(CalendarEvents.self, forKey: .calendarEvents) {
//            self.calendarEvents = value
//        }
//        
//        if let value = try values.decodeIfPresent(SummaryDetail.self, forKey: .summaryDetail) {
//            self.summaryDetail = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .symbol) {
//            self.symbol = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .esgScores) {
//            self.esgScores = value
//        }
//        
//        if let value = try values.decodeIfPresent(UpgradeDowngradeHistory.self, forKey: .upgradeDowngradeHistory) {
//            self.upgradeDowngradeHistory = value
//        }
//        
//        if let value = try values.decodeIfPresent(PageViews.self, forKey: .pageViews) {
//            self.pageViews = value
//        }
//    }
//}
//
//// MARK: - CalendarEvents
//struct CalendarEvents: Decodable {
//    
//    var maxAge: Int?
//    var earnings: CalendarEventsEarnings?
//    var exDividendDate, dividendDate: Details?
//    
//    enum CodingKeys: String, CodingKey {
//        case maxAge = "maxAge"
//        case earnings = "earnings"
//        case exDividendDate = "exDividendDate"
//        case dividendDate = "dividendDate"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(CalendarEventsEarnings.self, forKey: .earnings) {
//            self.earnings = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .exDividendDate) {
//            self.exDividendDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .dividendDate) {
//            self.dividendDate = value
//        }
//    }
//}
//
//// MARK: - Details
//struct Details: Codable {
//}
//
//// MARK: - CalendarEventsEarnings
//struct CalendarEventsEarnings: Decodable {
//    
//    var earningsDate: [The52_WeekChange]?
//    var earningsAverage, earningsLow, earningsHigh: The52_WeekChange?
//    var revenueAverage, revenueLow, revenueHigh: EnterpriseValue?
//    
//    enum CodingKeys: String, CodingKey {
//        case earningsDate = "earningsDate"
//        case earningsAverage = "earningsAverage"
//        case earningsLow = "earningsLow"
//        case earningsHigh = "earningsHigh"
//        case revenueAverage = "revenueAverage"
//        case revenueLow = "revenueLow"
//        case revenueHigh = "revenueHigh"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent([The52_WeekChange].self, forKey: .earningsDate) {
//            self.earningsDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .earningsAverage) {
//            self.earningsAverage = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .earningsLow) {
//            self.earningsLow = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .earningsHigh) {
//            self.earningsHigh = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .revenueAverage) {
//            self.revenueAverage = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .revenueLow) {
//            self.revenueLow = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .revenueHigh) {
//            self.revenueHigh = value
//        }
//    }
//}
//
//// MARK: - The52_WeekChange
//struct The52_WeekChange: Decodable {
//    
//    var raw: Double?
//    var fmt: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case raw = "raw"
//        case fmt = "fmt"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Double.self, forKey: .raw) {
//            self.raw = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .fmt) {
//            self.fmt = value
//        }
//    }
//}
//
//// MARK: - EnterpriseValue
//struct EnterpriseValue: Decodable {
//    
//    var raw: Int?
//    var fmt: String?
//    var longFmt: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case raw = "raw"
//        case fmt = "fmt"
//        case longFmt = "longFmt"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .raw) {
//            self.raw = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .fmt) {
//            self.fmt = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .longFmt) {
//            self.longFmt = value
//        }
//    }
//}
//
//// MARK: - DefaultKeyStatistics
//struct DefaultKeyStatistics: Decodable {
//    
//    var annualHoldingsTurnover: Details?
//    var enterpriseToRevenue: The52_WeekChange?
//    var beta3Year: Details?
//    var profitMargins, enterpriseToEbitda, the52WeekChange: The52_WeekChange?
//    var morningStarRiskRating: Details?
//    var forwardEps: The52_WeekChange?
//    var revenueQuarterlyGrowth: Details?
//    var sharesOutstanding: EnterpriseValue?
//    var fundInceptionDate, annualReportExpenseRatio, totalAssets: Details?
//    var bookValue: The52_WeekChange?
//    var sharesShort: EnterpriseValue?
//    var sharesPercentSharesOut: The52_WeekChange?
//    var lastFiscalYearEnd, heldPercentInstitutions: The52_WeekChange?
//    var netIncomeToCommon: EnterpriseValue?
//    var trailingEps: The52_WeekChange?
//    var lastDividendValue: Details?
//    var sandP52WeekChange, priceToBook, heldPercentInsiders, nextFiscalYearEnd: The52_WeekChange?
//    var yield: Details?
//    var mostRecentQuarter, shortRatio, sharesShortPreviousMonthDate: The52_WeekChange?
//    var floatShares: EnterpriseValue?
//    var beta: The52_WeekChange?
//    var enterpriseValue, priceHint: EnterpriseValue?
//    var threeYearAverageReturn: Details?
//    var lastSplitDate: The52_WeekChange?
//    var lastSplitFactor: String?
//    var lastDividendDate, morningStarOverallRating, earningsQuarterlyGrowth, priceToSalesTrailing12Months: Details?
//    var dateShortInterest, pegRatio: The52_WeekChange?
//    var ytdReturn: Details?
//    var forwardPE: The52_WeekChange?
//    var maxAge: Int?
//    var lastCapGain, shortPercentOfFloat: Details?
//    var sharesShortPriorMonth: EnterpriseValue?
//    var impliedSharesOutstanding: Details?
//    var fiveYearAverageReturn: Details?
//    
//
//    enum CodingKeys: String, CodingKey {
//        case annualHoldingsTurnover, enterpriseToRevenue, beta3Year, profitMargins, enterpriseToEbitda
//        case the52WeekChange = "52WeekChange"
//        case morningStarRiskRating, forwardEps, revenueQuarterlyGrowth, sharesOutstanding, fundInceptionDate, annualReportExpenseRatio, totalAssets, bookValue, sharesShort, sharesPercentSharesOut, fundFamily, lastFiscalYearEnd, heldPercentInstitutions, netIncomeToCommon, trailingEps, lastDividendValue
//        case sandP52WeekChange = "SandP52WeekChange"
//        case priceToBook, heldPercentInsiders, nextFiscalYearEnd, yield, mostRecentQuarter, shortRatio, sharesShortPreviousMonthDate, floatShares, beta, enterpriseValue, priceHint, threeYearAverageReturn, lastSplitDate, lastSplitFactor, legalType, lastDividendDate, morningStarOverallRating, earningsQuarterlyGrowth, priceToSalesTrailing12Months, dateShortInterest, pegRatio, ytdReturn, forwardPE, maxAge, lastCapGain, shortPercentOfFloat, sharesShortPriorMonth, impliedSharesOutstanding, category, fiveYearAverageReturn
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .annualHoldingsTurnover) {
//            self.annualHoldingsTurnover = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .enterpriseToRevenue) {
//            self.enterpriseToRevenue = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .beta3Year) {
//            self.beta3Year = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .profitMargins) {
//            self.profitMargins = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .enterpriseToEbitda) {
//            self.enterpriseToEbitda = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .morningStarRiskRating) {
//            self.morningStarRiskRating = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .forwardEps) {
//            self.forwardEps = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .revenueQuarterlyGrowth) {
//            self.revenueQuarterlyGrowth = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .sharesOutstanding) {
//            self.sharesOutstanding = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .fundInceptionDate) {
//            self.fundInceptionDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .annualReportExpenseRatio) {
//            self.annualReportExpenseRatio = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .totalAssets) {
//            self.totalAssets = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .bookValue) {
//            self.bookValue = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .sharesShort) {
//            self.sharesShort = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .sharesPercentSharesOut) {
//            self.sharesPercentSharesOut = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .lastFiscalYearEnd) {
//            self.lastFiscalYearEnd = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .heldPercentInstitutions) {
//            self.heldPercentInstitutions = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .netIncomeToCommon) {
//            self.netIncomeToCommon = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .trailingEps) {
//            self.trailingEps = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .lastDividendValue) {
//            self.lastDividendValue = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .sandP52WeekChange) {
//            self.sandP52WeekChange = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .priceToBook) {
//            self.priceToBook = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .heldPercentInsiders) {
//            self.heldPercentInsiders = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .nextFiscalYearEnd) {
//            self.nextFiscalYearEnd = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .yield) {
//            self.yield = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .mostRecentQuarter) {
//            self.mostRecentQuarter = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .shortRatio) {
//            self.shortRatio = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .sharesShortPreviousMonthDate) {
//            self.sharesShortPreviousMonthDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .floatShares) {
//            self.floatShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .beta) {
//            self.beta = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .enterpriseValue) {
//            self.enterpriseValue = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .priceHint) {
//            self.priceHint = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .threeYearAverageReturn) {
//            self.threeYearAverageReturn = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .lastSplitDate) {
//            self.lastSplitDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .lastSplitFactor) {
//            self.lastSplitFactor = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .lastDividendDate) {
//            self.lastDividendDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .morningStarOverallRating) {
//            self.morningStarOverallRating = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .earningsQuarterlyGrowth) {
//            self.earningsQuarterlyGrowth = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .priceToSalesTrailing12Months) {
//            self.priceToSalesTrailing12Months = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .dateShortInterest) {
//            self.dateShortInterest = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .ytdReturn) {
//            self.ytdReturn = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .forwardPE) {
//            self.forwardPE = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .lastCapGain) {
//            self.lastCapGain = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .shortPercentOfFloat) {
//            self.shortPercentOfFloat = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .sharesShortPriorMonth) {
//            self.sharesShortPriorMonth = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .impliedSharesOutstanding) {
//            self.impliedSharesOutstanding = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .fiveYearAverageReturn) {
//            self.fiveYearAverageReturn = value
//        }
//    }
//}
//
//// MARK: - WelcomeEarnings
//struct WelcomeEarnings: Decodable {
//    
//    var maxAge: Int?
//    var earningsChart: EarningsChart?
//    var financialsChart: FinancialsChart?
//    var financialCurrency: String?
//    
//    enum CodingKeys: String, CodingKey {
//    
//        case maxAge = "maxAge"
//        case earningsChart = "earningsChart"
//        case financialsChart = "financialsChart"
//        case financialCurrency = "financialCurrency"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(EarningsChart.self, forKey: .earningsChart) {
//            self.earningsChart = value
//        }
//        
//        if let value = try values.decodeIfPresent(FinancialsChart.self, forKey: .financialsChart) {
//            self.financialsChart = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .financialCurrency) {
//            self.financialCurrency = value
//        }
//    }
//}
//
//// MARK: - EarningsChart
//struct EarningsChart: Decodable {
//    
//    var quarterly: [EarningsChartQuarterly]?
//    var currentQuarterEstimate: The52_WeekChange?
//    var currentQuarterEstimateDate: String?
//    var currentQuarterEstimateYear: Int?
//    var earningsDate: [The52_WeekChange]?
//    
//    enum CodingKeys: String, CodingKey {
//        case quarterly = "quarterly"
//        case currentQuarterEstimate = "currentQuarterEstimate"
//        case currentQuarterEstimateDate =  "currentQuarterEstimateDate"
//        case currentQuarterEstimateYear =  "currentQuarterEstimateYear"
//        case earningsDate =  "earningsDate"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent([EarningsChartQuarterly].self, forKey: .quarterly) {
//            self.quarterly = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .currentQuarterEstimate) {
//            self.currentQuarterEstimate = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .currentQuarterEstimateDate) {
//            self.currentQuarterEstimateDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .currentQuarterEstimateYear) {
//            currentQuarterEstimateYear = value
//        }
//        
//        if let value = try values.decodeIfPresent([The52_WeekChange].self, forKey: .earningsDate) {
//            self.earningsDate = value
//        }
//    }
//}
//
//// MARK: - EarningsChartQuarterly
//struct EarningsChartQuarterly: Decodable {
//    
//    var date: String?
//    var actual, estimate: The52_WeekChange?
//    
//    enum CodingKeys: String, CodingKey {
//        case date = "date"
//        case actual = "actual"
//        case estimate = "estimate"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .date) {
//            self.date = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .actual) {
//            self.actual = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .estimate) {
//            self.estimate = value
//        }
//    }
//}
//
//// MARK: - FinancialsChart
//struct FinancialsChart: Decodable {
//    
//    var yearly: [Yearly]?
//    var quarterly: [FinancialsChartQuarterly]?
//    
//    enum CodingKeys: String, CodingKey {
//        case yearly = "yearly"
//        case quarterly = "quarterly"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent([Yearly].self, forKey: .yearly) {
//            self.yearly = value
//        }
//        
//        if let value = try values.decodeIfPresent([FinancialsChartQuarterly].self, forKey: .quarterly) {
//            self.quarterly = value
//        }
//    }
//}
//
//// MARK: - FinancialsChartQuarterly
//struct FinancialsChartQuarterly: Decodable {
//    
//    var date: String?
//    var revenue, earnings: EnterpriseValue?
//    
//    enum CodingKeys: String, CodingKey {
//        case date = "date"
//        case revenue = "revenue"
//        case earnings = "earnings"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .date) {
//            self.date = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .revenue) {
//            self.revenue = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .earnings) {
//            self.earnings = value
//        }
//    }
//}
//
//// MARK: - Yearly
//struct Yearly: Decodable {
//    
//    var date: Int?
//    var revenue, earnings: EnterpriseValue?
//    
//    enum CodingKeys: String, CodingKey {
//        case date = "date"
//        case revenue = "revenue"
//        case earnings = "earnings"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .date) {
//            self.date = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .revenue) {
//            self.revenue = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .earnings) {
//            self.earnings = value
//        }
//    }
//}
//
//// MARK: - FinancialData
//struct FinancialData: Decodable {
//    
//    var ebitdaMargins, profitMargins, grossMargins: The52_WeekChange?
//    var operatingCashflow: EnterpriseValue?
//    var revenueGrowth, operatingMargins: The52_WeekChange?
//    var ebitda: EnterpriseValue?
//    var targetLowPrice: The52_WeekChange?
//    var recommendationKey: String?
//    var grossProfits, freeCashflow: EnterpriseValue?
//    var targetMedianPrice, currentPrice: The52_WeekChange?
//    var earningsGrowth: Details?
//    var currentRatio, returnOnAssets: The52_WeekChange?
//    var numberOfAnalystOpinions: EnterpriseValue?
//    var targetMeanPrice, debtToEquity, returnOnEquity, targetHighPrice: The52_WeekChange?
//    var totalCash, totalDebt, totalRevenue: EnterpriseValue?
//    var totalCashPerShare: The52_WeekChange?
//    var financialCurrency: String?
//    var maxAge: Int?
//    var revenuePerShare, quickRatio, recommendationMean: The52_WeekChange?
//    
//    enum CodingKeys: String, CodingKey {
//        case ebitdaMargins = "ebitdaMargins"
//        case profitMargins = "profitMargins"
//        case grossMargins = "grossMargins"
//        case operatingCashflow = "operatingCashflow"
//        case revenueGrowth = "revenueGrowth"
//        case operatingMargins = "operatingMargins"
//        case ebitda = "ebitda"
//        case targetLowPrice = "targetLowPrice"
//        case recommendationKey = "recommendationKey"
//        case grossProfits = "grossProfits"
//        case freeCashflow = "freeCashflow"
//        case targetMedianPrice = "targetMedianPrice"
//        case earningsGrowth = "earningsGrowth"
//        case currentRatio = "currentRatio"
//        case returnOnAssets = "returnOnAssets"
//        case numberOfAnalystOpinions = "numberOfAnalystOpinions"
//        case targetMeanPrice = "targetMeanPrice"
//        case debtToEquity = "debtToEquity"
//        case returnOnEquity = "returnOnEquity"
//        case targetHighPrice = "targetHighPrice"
//        case totalCash = "totalCash"
//        case totalDebt = "totalDebt"
//        case totalRevenue = "totalRevenue"
//        case totalCashPerShare = "totalCashPerShare"
//        case financialCurrency = "financialCurrency"
//        case maxAge = "maxAge"
//        case revenuePerShare = "revenuePerShare"
//        case quickRatio = "quickRatio"
//        case recommendationMean = "recommendationMean"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .ebitdaMargins) {
//            self.ebitdaMargins = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .profitMargins) {
//            self.profitMargins = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .grossMargins) {
//            self.grossMargins = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .operatingCashflow) {
//            self.operatingCashflow = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .revenueGrowth) {
//            self.revenueGrowth = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .operatingMargins) {
//            self.operatingMargins = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .ebitda) {
//            self.ebitda = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .targetLowPrice) {
//            self.targetLowPrice = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .recommendationKey) {
//            self.recommendationKey = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .grossProfits) {
//            self.grossProfits = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .targetMedianPrice) {
//            self.targetMedianPrice = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .earningsGrowth) {
//            self.earningsGrowth = value
//        }
//
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .currentRatio) {
//            self.currentRatio = value
//        }
//
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .returnOnAssets) {
//            self.returnOnAssets = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .numberOfAnalystOpinions) {
//            self.numberOfAnalystOpinions = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .targetMeanPrice) {
//            self.targetMeanPrice = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .debtToEquity) {
//            self.debtToEquity = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .returnOnEquity) {
//            self.returnOnEquity = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .targetHighPrice) {
//            self.targetHighPrice = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .totalCash) {
//            self.totalCash = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .totalDebt) {
//            self.totalDebt = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .totalRevenue) {
//            self.totalRevenue = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .totalCashPerShare) {
//            self.totalCashPerShare = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .financialCurrency) {
//            self.financialCurrency = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .revenuePerShare) {
//            self.revenuePerShare = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .quickRatio) {
//            self.quickRatio = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .recommendationMean) {
//            self.recommendationMean = value
//        }
//    }
//}
//
//// MARK: - FinancialsTemplate
//struct FinancialsTemplate: Decodable {
//    
//    var code: String?
//    var maxAge: Int?
//    
//    enum CodingKeys: String, CodingKey {
//        case code = "code"
//        case maxAge = "maxAge"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .code) {
//            self.code = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//    }
//}
//
//// MARK: - Ownership
//struct Ownership: Decodable {
//    
//    var maxAge: Int?
//    var ownershipList: [OwnershipList]?
//    
//    enum CodingKeys: String, CodingKey {
//        case maxAge = "maxAge"
//        case ownershipList = "ownershipList"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent([OwnershipList].self, forKey: .ownershipList) {
//            self.ownershipList = value
//        }
//    }
//}
//
//// MARK: - OwnershipList
//struct OwnershipList: Decodable {
//    
//    var maxAge: Int?
//    var reportDate: The52_WeekChange?
//    var organization: String?
//    var pctHeld: The52_WeekChange?
//    var position, value: EnterpriseValue?
//    
//    enum CodingKeys: String, CodingKey {
//        case maxAge = "maxAge"
//        case reportDate = "reportDate"
//        case organization = "organization"
//        case pctHeld = "pctHeld"
//        case position = "position"
//        case value = "value"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .reportDate) {
//            self.reportDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .organization) {
//            self.organization = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .pctHeld) {
//            self.pctHeld = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .position) {
//            self.position = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .value) {
//            self.value = value
//        }
//    }
//}
//
//// MARK: - Holders
//struct Holders: Decodable {
//    
//    var holders: [Holder]?
//    var maxAge: Int?
//    
//    enum CodingKeys: String, CodingKey {
//        case holders = "holders"
//        case maxAge = "maxAge"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent([Holder].self, forKey: .holders) {
//            self.holders = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//    }
//}
//
//// MARK: - Holder
//struct Holder: Decodable {
//    
//    var maxAge: Int?
//    var name: String?
//    var relation: String?
//    var url: String?
//    var transactionDescription: String?
//    var latestTransDate: The52_WeekChange?
//    var positionDirect: EnterpriseValue?
//    var positionDirectDate: The52_WeekChange?
//    var positionIndirect: EnterpriseValue?
//    var positionIndirectDate: The52_WeekChange?
//    
//    enum CodingKeys: String, CodingKey {
//        case maxAge = "maxAge"
//        case name = "name"
//        case relation = "relation"
//        case url = "url"
//        case transactionDescription = "transactionDescription"
//        case latestTransDate = "latestTransDate"
//        case positionDirect = "positionDirect"
//        case positionDirectDate = "positionDirectDate"
//        case positionIndirect = "positionIndirect"
//        case positionIndirectDate = "positionIndirectDate"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .name) {
//            self.name = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .relation) {
//            self.relation = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .url) {
//            self.url = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .transactionDescription) {
//            self.transactionDescription = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .latestTransDate) {
//            self.latestTransDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .positionDirect) {
//            self.positionDirect = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .positionDirectDate) {
//            self.positionDirectDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .positionIndirect) {
//            self.positionIndirect = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .positionIndirectDate) {
//            self.positionIndirectDate = value
//        }
//    }
//}
//
//
//// MARK: - InsiderTransactions
//struct InsiderTransactions: Decodable {
//    
//    var transactions: [Transaction]?
//    var maxAge: Int?
//    
//    enum CodingKeys: String, CodingKey {
//        case transactions = "transactions"
//        case maxAge = "maxAge"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent([Transaction].self, forKey: .transactions) {
//            self.transactions = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//    }
//}
//
//// MARK: - Transaction
//struct Transaction: Decodable {
//    
//    var filerName: String?
//    var transactionText, moneyText: String?
//    var ownership: String?
//    var startDate: The52_WeekChange?
//    var filerRelation: String?
//    var shares: EnterpriseValue?
//    var filerURL: String?
//    var maxAge: Int?
//    var value: EnterpriseValue?
//
//    enum CodingKeys: String, CodingKey {
//        case filerName, transactionText, moneyText, ownership, startDate, filerRelation, shares
//        case filerURL = "filerUrl"
//        case maxAge, value
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .filerName) {
//            self.filerName = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .transactionText) {
//            self.transactionText = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .moneyText) {
//            self.moneyText = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .startDate) {
//            self.startDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .filerRelation) {
//            self.filerRelation = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .shares) {
//            self.shares = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .filerURL) {
//            self.filerURL = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .value) {
//            self.value = value
//        }
//    }
//}
//
//// MARK: - MajorHoldersBreakdown
//struct MajorHoldersBreakdown: Decodable {
//    
//    var maxAge: Int?
//    var insidersPercentHeld, institutionsPercentHeld, institutionsFloatPercentHeld: The52_WeekChange?
//    var institutionsCount: EnterpriseValue?
//    
//    enum CodingKeys: String, CodingKey {
//        case maxAge = "maxAge"
//        case insidersPercentHeld = "insidersPercentHeld"
//        case institutionsPercentHeld = "institutionsPercentHeld"
//        case institutionsFloatPercentHeld = "institutionsFloatPercentHeld"
//        case institutionsCount = "institutionsCount"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .insidersPercentHeld) {
//            self.insidersPercentHeld = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .institutionsPercentHeld) {
//            self.institutionsPercentHeld = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .institutionsFloatPercentHeld) {
//            self.institutionsFloatPercentHeld = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .institutionsCount) {
//            self.institutionsCount = value
//        }
//    }
//}
//
//// MARK: - NetSharePurchaseActivity
//struct NetSharePurchaseActivity: Decodable {
//    
//    var period: String?
//    var netPercentInsiderShares: The52_WeekChange?
//    var netInfoCount, totalInsiderShares, buyInfoShares: EnterpriseValue?
//    var buyPercentInsiderShares: The52_WeekChange?
//    var sellInfoCount, sellInfoShares: EnterpriseValue?
//    var sellPercentInsiderShares: The52_WeekChange?
//    var maxAge: Int?
//    var buyInfoCount, netInfoShares: EnterpriseValue?
//    
//    enum CodingKeys: String, CodingKey {
//        case period = "period"
//        case netPercentInsiderShares = "netPercentInsiderShares"
//        case netInfoCount = "netInfoCount"
//        case totalInsiderShares = "totalInsiderShares"
//        case buyInfoShares = "buyInfoShares"
//        case buyPercentInsiderShares = "buyPercentInsiderShares"
//        case sellInfoCount = "sellInfoCount"
//        case sellInfoShares = "sellInfoShares"
//        case sellPercentInsiderShares = "sellPercentInsiderShares"
//        case maxAge = "maxAge"
//        case buyInfoCount = "buyInfoCount"
//        case netInfoShares = "netInfoShares"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .period) {
//            self.period = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .netPercentInsiderShares) {
//            self.netPercentInsiderShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .netInfoCount) {
//            self.netInfoCount = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .totalInsiderShares) {
//            self.totalInsiderShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .buyInfoShares) {
//            self.buyInfoShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .buyPercentInsiderShares) {
//            self.buyPercentInsiderShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .sellInfoCount) {
//            self.sellInfoCount = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .sellInfoShares) {
//            self.sellInfoShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .sellPercentInsiderShares) {
//            self.sellPercentInsiderShares = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .buyInfoCount) {
//            self.buyInfoCount = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .netInfoShares) {
//            self.netInfoShares = value
//        }
//    }
//}
//
//// MARK: - PageViews
//struct PageViews: Decodable {
//    
//    var shortTermTrend, midTermTrend, longTermTrend: String?
//    var maxAge: Int?
//    
//    enum CodingKeys: String, CodingKey {
//        case shortTermTrend = "shortTermTrend"
//        case midTermTrend = "midTermTrend"
//        case longTermTrend = "longTermTrend"
//        case maxAge = "maxAge"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .shortTermTrend) {
//            self.shortTermTrend = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .shortTermTrend) {
//            self.shortTermTrend = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .midTermTrend) {
//            self.midTermTrend = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .longTermTrend) {
//            self.longTermTrend = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//    }
//    
//    
//}
//
//// MARK: - Price
//
//struct Price: Decodable {
//    var quoteSourceName: String?
//    var regularMarketOpen: The52_WeekChange?
//    var averageDailyVolume3Month: EnterpriseValue?
//    var exchange: String?
//    var regularMarketTime: Int?
//    var volume24Hr: Details?
//    var regularMarketDayHigh: The52_WeekChange?
//    var shortName: String?
//    var averageDailyVolume10Day: EnterpriseValue?
//    var longName: String?
//    var regularMarketChange: The52_WeekChange?
//    var currencySymbol: String?
//    var regularMarketPreviousClose: The52_WeekChange?
//    var postMarketTime: Int?
//    var preMarketPrice: Details?
//    var exchangeDataDelayedBy: Int?
//    var postMarketChange, postMarketPrice: The52_WeekChange?
//    var exchangeName: String?
//    var preMarketChange, circulatingSupply: Details?
//    var regularMarketDayLow: The52_WeekChange?
//    var priceHint: EnterpriseValue?
//    var currency: String?
//    var regularMarketPrice: The52_WeekChange?
//    var regularMarketVolume: EnterpriseValue?
//    var regularMarketSource: String?
//    var openInterest: Details?
//    var marketState: String?
//    var marketCap: EnterpriseValue?
//    var quoteType: String?
//    var volumeAllCurrencies: Details?
//    var postMarketSource: String?
//    var strikePrice: Details?
//    var symbol: String?
//    var postMarketChangePercent: The52_WeekChange?
//    var preMarketSource: String?
//    var maxAge: Int?
//    var regularMarketChangePercent: The52_WeekChange?
//    
//    enum CodingKeys: String, CodingKey {
//        case shortTermTrend = "shortTermTrend"
//        case midTermTrend = "midTermTrend"
//        case longTermTrend = "longTermTrend"
//        case maxAge = "maxAge"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//    }
//}
//
//// MARK: - QuoteType
//struct QuoteType: Decodable {
//    var exchange, shortName, longName, exchangeTimezoneName: String?
//    var exchangeTimezoneShortName: String?
//    var isEsgPopulated: Bool?
//    var gmtOffSetMilliseconds, quoteType, symbol, messageBoardID: String?
//    var market: String?
//
//    enum CodingKeys: String, CodingKey {
//        case exchange, shortName, longName, exchangeTimezoneName, exchangeTimezoneShortName, isEsgPopulated, gmtOffSetMilliseconds, quoteType, symbol
//        case messageBoardID = "messageBoardId"
//        case market
//    }
//}
//
//// MARK: - RecommendationTrend
//struct RecommendationTrend: Decodable {
//    var trend: [Trend]?
//    var maxAge: Int?
//}
//
//// MARK: - Trend
//struct Trend: Decodable {
//    var period: String?
//    var strongBuy, buy, hold, sell: Int?
//    var strongSell: Int?
//}
//
//// MARK: - SummaryDetail
//struct SummaryDetail: Decodable {
//    var previousClose, regularMarketOpen, twoHundredDayAverage: The52_WeekChange?
//    var trailingAnnualDividendYield: Details?
//    var payoutRatio: The52_WeekChange?
//    var volume24Hr: Details?
//    var regularMarketDayHigh: The52_WeekChange?
//    var navPrice: Details?
//    var averageDailyVolume10Day: EnterpriseValue?
//    var totalAssets: Details?
//    var regularMarketPreviousClose, fiftyDayAverage: The52_WeekChange?
//    var trailingAnnualDividendRate: Details?
//    var summaryDetailOpen: The52_WeekChange?
//    var averageVolume10Days: EnterpriseValue?
//    var expireDate, yield: Details?
//    var dividendRate, exDividendDate: Details?
//    var beta: The52_WeekChange?
//    var circulatingSupply, startDate: Details?
//    var regularMarketDayLow: The52_WeekChange?
//    var priceHint: EnterpriseValue?
//    var currency: String?
//    var regularMarketVolume: EnterpriseValue?
//    var maxSupply, openInterest: Details?
//    var marketCap: EnterpriseValue?
//    var volumeAllCurrencies, strikePrice: Details?
//    var averageVolume: EnterpriseValue?
//    var priceToSalesTrailing12Months, dayLow, ask: The52_WeekChange?
//    var ytdReturn: Details?
//    var askSize, volume: EnterpriseValue?
//    var fiftyTwoWeekHigh, forwardPE: The52_WeekChange?
//    var maxAge: Int?
//    var fiveYearAvgDividendYield: Details?
//    var fiftyTwoWeekLow, bid: The52_WeekChange?
//    var tradeable: Bool?
//    var dividendYield: Details?
//    var bidSize: EnterpriseValue?
//    var dayHigh: The52_WeekChange?
//
//    enum CodingKeys: String, CodingKey {
//        case previousClose, regularMarketOpen, twoHundredDayAverage, trailingAnnualDividendYield, payoutRatio, volume24Hr, regularMarketDayHigh, navPrice, averageDailyVolume10Day, totalAssets, regularMarketPreviousClose, fiftyDayAverage, trailingAnnualDividendRate
//        case summaryDetailOpen = "open"
//        case toCurrency
//        case averageVolume10Days = "averageVolume10days"
//        case expireDate, yield, algorithm, dividendRate, exDividendDate, beta, circulatingSupply, startDate, regularMarketDayLow, priceHint, currency, regularMarketVolume, lastMarket, maxSupply, openInterest, marketCap, volumeAllCurrencies, strikePrice, averageVolume, priceToSalesTrailing12Months, dayLow, ask, ytdReturn, askSize, volume, fiftyTwoWeekHigh, forwardPE, maxAge, fromCurrency, fiveYearAvgDividendYield, fiftyTwoWeekLow, bid, tradeable, dividendYield, bidSize, dayHigh
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .previousClose) {
//            self.previousClose = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .regularMarketOpen) {
//            self.regularMarketOpen = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .twoHundredDayAverage) {
//            self.twoHundredDayAverage = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .trailingAnnualDividendYield) {
//            self.trailingAnnualDividendYield = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .payoutRatio) {
//            self.payoutRatio = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .volume24Hr) {
//            self.volume24Hr = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .regularMarketDayHigh) {
//            self.regularMarketDayHigh = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .navPrice) {
//            self.navPrice = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .averageDailyVolume10Day) {
//            self.averageDailyVolume10Day = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .totalAssets) {
//            self.totalAssets = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .regularMarketPreviousClose) {
//            self.regularMarketPreviousClose = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .fiftyDayAverage) {
//            self.fiftyDayAverage = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .trailingAnnualDividendRate) {
//            self.trailingAnnualDividendRate = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .summaryDetailOpen) {
//            self.summaryDetailOpen = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .averageVolume10Days) {
//            self.averageVolume10Days = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .expireDate) {
//            self.expireDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .yield) {
//            self.yield = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .dividendRate) {
//            self.dividendRate = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .exDividendDate) {
//            self.exDividendDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .beta) {
//            self.beta = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .circulatingSupply) {
//            self.circulatingSupply = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .startDate) {
//            self.startDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .regularMarketDayLow) {
//            self.regularMarketDayLow = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .priceHint) {
//            self.priceHint = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .currency) {
//            self.currency = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .regularMarketVolume) {
//            self.regularMarketVolume = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .maxSupply) {
//            self.maxSupply = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .openInterest) {
//            self.openInterest = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .marketCap) {
//            self.marketCap = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .volumeAllCurrencies) {
//            self.volumeAllCurrencies = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .strikePrice) {
//            self.strikePrice = value
//        }
//            
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .averageVolume) {
//            self.averageVolume = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .priceToSalesTrailing12Months) {
//            self.averageVolume = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .dayLow) {
//            self.dayLow = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .ytdReturn) {
//            self.ytdReturn = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .askSize) {
//            self.askSize = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .volume) {
//            self.volume = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .fiftyTwoWeekHigh) {
//            self.fiftyTwoWeekHigh = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .fiveYearAvgDividendYield) {
//            self.fiveYearAvgDividendYield = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .fiftyTwoWeekLow) {
//            self.fiftyTwoWeekLow = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .bid) {
//            self.bid = value
//        }
//        
//        if let value = try values.decodeIfPresent(Bool.self, forKey: .tradeable) {
//            self.tradeable = value
//        }
//        
//        if let value = try values.decodeIfPresent(Details.self, forKey: .dividendYield) {
//            self.dividendYield = value
//        }
//        
//        if let value = try values.decodeIfPresent(EnterpriseValue.self, forKey: .bidSize) {
//            self.bidSize = value
//        }
//        
//        if let value = try values.decodeIfPresent(The52_WeekChange.self, forKey: .dayHigh) {
//            self.dayHigh = value
//        }
//    }
//}
//
//// MARK: - SummaryProfile
//struct SummaryProfile: Decodable {
//    var zip, sector: String?
//    var fullTimeEmployees: Int?
//    var longBusinessSummary, city, phone, country: String?
//    var website: String?
//    var maxAge: Int?
//    var address1, industry, address2: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case zip = "zip"
//        case sector = "sector"
//        case fullTimeEmployees = "fullTimeEmployees"
//        case longBusinessSummary = "longBusinessSummary"
//        case city = "city"
//        case phone = "phone"
//        case country = "country"
//        case website = "website"
//        case maxAge = "maxAge"
//        case address1 = "address1"
//        case industry = "industry"
//        case address2 = "address2"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .zip) {
//            self.zip = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .sector) {
//            self.sector = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .fullTimeEmployees) {
//            self.fullTimeEmployees = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .longBusinessSummary) {
//            self.longBusinessSummary = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .city) {
//            self.city = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .phone) {
//            self.phone = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .country) {
//            self.country = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .website) {
//            self.website = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge) {
//            self.maxAge = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .address1) {
//            self.address1 = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .industry) {
//            self.industry = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .address2) {
//            self.address2 = value
//        }
//    }
//}
//
//// MARK: - UpgradeDowngradeHistory
//struct UpgradeDowngradeHistory: Decodable {
//    
//    var history: [History]?
//    var maxAge: Int?
//    
//    enum CodingKeys: String, CodingKey {
//        case history = "history"
//        case maxAge = "maxAge"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent([History].self, forKey: .history)  {
//            self.history = value
//        }
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .maxAge)  {
//            self.maxAge = value
//        }
//    }
//}
//
//// MARK: - History
//struct History: Decodable {
//    
//    var epochGradeDate: Int?
//    var firm, toGrade: String?
//    var fromGrade: String?
//    var action: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case epochGradeDate = "epochGradeDate"
//        case firm = "firm"
//        case toGrade = "toGrade"
//        case fromGrade = "fromGrade"
//        case action = "action"
//    }
//    
//    init(from decoder: Decoder) throws {
//        
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        
//        if let value = try values.decodeIfPresent(Int.self, forKey: .epochGradeDate)  {
//            self.epochGradeDate = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .firm)  {
//            self.firm = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .toGrade)  {
//            self.toGrade = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .fromGrade)  {
//            self.fromGrade = value
//        }
//        
//        if let value = try values.decodeIfPresent(String.self, forKey: .action)  {
//            self.action = value
//        }
//    }
//}
