//
//  URL+Extension.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 29/12/21.
//

import Foundation

extension String {
    
    var encodedUrl: URL? {
        
        guard let result = self.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed) else {
            return nil
        }
        
        return URL(string: result)
    }
}
