
//
//  APIUtility.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 14/12/21.
//

import Foundation
import UIKit

public class APIUtility {
    
    public static let shared = APIUtility()
    public var customJsonDecoder: JSONDecoder? = nil
    
    private init() {}
}


// MARK: -
// MARK: - Request function
extension APIUtility {

    public func request<T: Decodable>(apiRequest: APIRequest, resultType: T.Type, completionHandler: @escaping (Result<T?, APIError>) -> ()) {
        
        switch apiRequest.method {

        case .get:
            getData(requestUrl: apiRequest.url, resultType: resultType) {
                completionHandler($0)
            }
            break
            
        case .post:
            postData(request: apiRequest, resultType: resultType) {
                completionHandler($0)
            }
            break
        
        case .put:
            putData(requestUrl: apiRequest.url, resultType: resultType) {
                completionHandler($0)
            }
            break
            
        case .delete:
            deleteData(requestUrl: apiRequest.url, resultType: resultType) {
                completionHandler($0)
            }
        }
    }
}


// MARK: -
// MARK: - Api methods

extension APIUtility {
    
    // MARK: - GET Api
    private func getData<T: Decodable>(requestUrl: URL, resultType: T.Type, completionHandler: @escaping (Result<T?, APIError>) -> ()) {
        
        var urlRequest = createUrlRequest(requestUrl: requestUrl)
        urlRequest.httpMethod = HttpMethods.get.rawValue
        
        performOperation(requestUrl: urlRequest, responseType: T.self) { (result) in
            completionHandler(result)
        }
    }
    
    
    // MARK: - POST Api
    private func postData<T: Decodable>(request: APIRequest, resultType: T.Type, completionHandler: @escaping (Result<T?, APIError>) -> ()) {
        
        var urlRequest = createUrlRequest(requestUrl: request.url)
        urlRequest.httpMethod = HttpMethods.post.rawValue
        urlRequest.httpBody = request.requestBody
        urlRequest.addValue("application/json", forHTTPHeaderField: "content-type")
        
        performOperation(requestUrl: urlRequest, responseType: T.self) { (result) in
            completionHandler(result)
        }
    }
    
    
    // MARK: - PUT Api
    private func putData<T: Decodable>(requestUrl: URL, resultType: T.Type, completionHandler: @escaping (Result<T?, APIError>) -> ()) {
        
        var urlRequest = createUrlRequest(requestUrl: requestUrl)
        urlRequest.httpMethod = HttpMethods.put.rawValue
        
        performOperation(requestUrl: urlRequest, responseType: T.self) { (result) in
            completionHandler(result)
        }
    }
    
    
    // MARK: - DELETE Api
    private func deleteData<T: Decodable>(requestUrl: URL, resultType: T.Type, completionHandler: @escaping (Result<T?, APIError>) -> ()) {
        
        var urlRequest = createUrlRequest(requestUrl: requestUrl)
        urlRequest.httpMethod = HttpMethods.put.rawValue
        
        performOperation(requestUrl: urlRequest, responseType: T.self) { (result) in
            completionHandler(result)
        }
    }
}



// MARK: -
// MARK: - Initialize objecjts

extension APIUtility {
    
    private func createJsonDecoder() -> JSONDecoder {
        let decoder = customJsonDecoder != nil ? customJsonDecoder! : JSONDecoder()
        if customJsonDecoder == nil {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }
    
    private func createUrlRequest(requestUrl: URL) -> URLRequest {
        var urlRequest = URLRequest(url: requestUrl)
        urlRequest.allHTTPHeaderFields = ApiHeader.headers
        return urlRequest
    }
}


// MARK: -
// MARK: - Operations

extension APIUtility {

    private func performOperation<T: Decodable>(requestUrl: URLRequest, responseType: T.Type, completionHandler: @escaping (Result<T?, APIError>) -> ()) {
            
        Loader.shared.show()

        URLSession.shared.dataTask(with: requestUrl) { (data, htttpUrlResponse, error) in

            Loader.shared.hide()

            let statusCode = (htttpUrlResponse as? HTTPURLResponse)?.statusCode

            if statusCode == 200 {

                if error == nil && data != nil && data?.count != 0 {

                    do {
                        if let parsedResponse = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                            print("Json Response is: \(parsedResponse)")
                        }
                    } catch let error {
                        print("Json error is: \(error.localizedDescription)")
                    }

                    let response = self.decodeJsonResponse(data: data!, responseType: responseType)

                    if response != nil {
                        completionHandler(.success(response))
                    } else {
                        completionHandler(.failure(APIError(withServerResponse: data, forRequestUrl: requestUrl.url!, withHttpBody: requestUrl.httpBody, errorMessage: error.debugDescription, forStatusCode: statusCode!)))
                    }
                } else {

                    let networkError = APIError(withServerResponse: data, forRequestUrl: requestUrl.url!, withHttpBody: data, errorMessage: error.debugDescription, forStatusCode: statusCode!)

                    completionHandler(.failure(networkError))
                }

            } else {

                if statusCode == 429 {

                    DispatchQueue.main.async {

                        let alert = UIAlertController(title: AlertMsgs.CAlert, message: ApiErrors.CLimitExceeds, preferredStyle: .alert)

                        alert.addAction(UIAlertAction(title: AlertMsgs.COk, style: .default) { action in

                        })

                        UIApplication.topMostVC?.present(alert, animated: true, completion: nil)
                    }
                }
            }

        }.resume()
    }
    
    private func decodeJsonResponse<T: Decodable>(data: Data, responseType: T.Type) -> T? {
        
        let decoder = createJsonDecoder()
        do {
            return try decoder.decode(responseType, from: data)
        } catch let error {
            debugPrint("decoding error: \(error.localizedDescription)")
        }
        return nil
    }
}
