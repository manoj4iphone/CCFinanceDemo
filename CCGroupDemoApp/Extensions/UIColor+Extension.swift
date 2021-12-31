//
//  UIColor+Extension.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 30/12/21.
//

import Foundation
import UIKit

extension UIColor {
    
    static func RGB(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
    
}
