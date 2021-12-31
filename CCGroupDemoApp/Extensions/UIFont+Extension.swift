//
//  UIFont+Extension.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 27/12/21.
//

import Foundation
import UIKit

extension UIFont {
    
    private enum AppFont {
        case Bold
        case Light
        case Medium
        case Regular
        case Thin
    }
    
    var resultFont: UIFont {
        
        let pointSize: CGFloat =  DeviceFamily.IS_IPHONE_5 || DeviceFamily.IS_IPHONE_6 ? -2 : 2
        let fontSize = (self.pointSize) + (pointSize)
        var type = AppFont.Regular
        
        if self.fontName.uppercased().contains("MEDIUM") {
            type = AppFont.Medium
        } else if self.fontName.uppercased().contains("BOLD") {
            type = AppFont.Bold
        } else if self.fontName.uppercased().contains("LIGHT") {
            type = AppFont.Light
        } else {
            type = AppFont.Thin
        }
        
        return updatedFont(fontSize: fontSize, type: type)
    }
    
    private func updatedFont(fontSize: CGFloat, type: AppFont) -> UIFont {
        
        switch type {
            
        case .Light:
            return UIFont.init(name: "HelveticaNeue-Light", size: fontSize)!
        
        case .Bold:
            return UIFont.init(name: "HelveticaNeue-Bold", size: fontSize)!
            
        case .Medium:
            return UIFont.init(name: "HelveticaNeue-Medium", size: fontSize)!
            
        case .Regular:
            return UIFont.init(name: "HelveticaNeue-Regular", size: fontSize)!
            
        case .Thin:
            return UIFont.init(name: "HelveticaNeue-Thin", size: fontSize)!
        }
    }
}


