//
//  GenericLabel.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 27/12/21.
//

import Foundation
import UIKit

class GenericLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initSetup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    // MARK: -
    // MARK: - Initialize
    
    func initSetup() {
        
        switch self.tag {
            
        case 0:
            //Stock cell label
            self.font = self.font.resultFont
            
        default:
            debugPrint("Default Case..")
        }
    }
}
