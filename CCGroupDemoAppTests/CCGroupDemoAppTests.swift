//
//  CCGroupDemoAppTests.swift
//  CCGroupDemoAppTests
//
//  Created by sft_mac on 30/12/21.
//

import XCTest
@testable import CCGroupDemoApp

class CCGroupDemoAppTests: XCTestCase {
    
    private let _utility = APIUtility.shared

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_get_stock_list_api_response() {
        
        let expectation = XCTestExpectation(description: "Data received from server")
        
        let endPointUrl = APIName.getSummary.name.encodedUrl
        
        guard endPointUrl != nil else {
            XCTAssert(endPointUrl != nil, "url endpoint is not valid")
            return
        }
        
        let request = APIRequest(withUrl: endPointUrl!, forHttpMethod: .get, withRequestBody: nil)
        
        _utility.request(apiRequest: request, resultType: SummaryModel.self) { (response) in
            
            switch response {
                
            case .success(let summary):
                
                XCTAssertNotNil(summary?.marketSummaryAndSparkResponse?.result)
                
                if let result = summary?.marketSummaryAndSparkResponse?.result {
                    XCTAssertTrue(!result.isEmpty)
                } else {
                    XCTExpectFailure("list is empty")
                }
                
            case .failure(let apiError):
                XCTAssertNil(apiError)
            }
            
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 10.0)
    }
    
    func test_get_stock_details_api_response() {
        
        let expectation = XCTestExpectation(description: "Data received from server")
        
        let stockDetailsRequest = StockDetailsRequest(symbol: "")
        
        let endPointUrl = "\(APIName.stockDetails.name)&symbol=\(stockDetailsRequest.symbol)".encodedUrl
        
        guard endPointUrl != nil else {
            return
        }
        
        let request = APIRequest(withUrl: endPointUrl!, forHttpMethod: .get, withRequestBody: nil)
        
        _utility.request(apiRequest: request, resultType: StockDetailsResponse.self) { (response) in
            
            switch response {
                
            case .success(let stockDetails):
                XCTAssertNotNil(stockDetails)
                
            case .failure(let apiError):
                XCTAssertNil(apiError)
            }
            
            expectation.fulfill()
        }
    }
}
