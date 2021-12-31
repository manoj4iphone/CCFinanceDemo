//
//  Constants.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import Foundation
import UIKit

public struct DeviceScreen {
    
    static let CURRENT_DEVICE      = UIDevice.current
    static let CScreen             = UIScreen.main
    static let CBounds             = CScreen.bounds
    static let CScreenHeight       = CBounds.size.height
    static let CScreenWidth        = CBounds.size.width
    static let CScreenCenterX      = CScreenWidth / 2.0
    static let CScreenCenterY      = CScreenHeight / 2.0
    static let CScreenCenter      = CGPoint(x: CScreenCenterX, y: CScreenCenterY)
}

public struct DeviceFamily {
    
    static let DEVICE_NAME     = DeviceScreen.CURRENT_DEVICE.name
    static let DEVICE_MODEL    = DeviceScreen.CURRENT_DEVICE.model
    
    static let IS_IPHONE       = DEVICE_MODEL.range(of: "iPhone") != nil
    static let IS_IPOD         = DEVICE_MODEL.range(of: "iPod") != nil
    static let IS_IPAD         = DEVICE_MODEL.range(of: "iPad") != nil
    
    static let IS_iPhone_Simulator = (TARGET_IPHONE_SIMULATOR == 1)
    static let IS_IPHONE_4     = IS_IPHONE && DeviceScreen.CScreenHeight == 480
    static let IS_IPHONE_5     = IS_IPHONE && DeviceScreen.CScreenHeight == 568
    static let IS_IPHONE_6     = IS_IPHONE && DeviceScreen.CScreenHeight == 667
    static let IS_IPHONE_6_Plus    = IS_IPHONE && DeviceScreen.CScreenHeight == 736
    static let IS_IPHONE_With_Notch     = IS_IPHONE && DeviceScreen.CScreenHeight >= 812

    static let IS_IPAD_MINI    = IS_IPAD && DeviceScreen.CScreenHeight == 512
    static let IS_IPAD_MINI2   = IS_IPAD && DeviceScreen.CScreenHeight == 512
    static let IS_IPAD_AIR     = IS_IPAD && DeviceScreen.CScreenHeight == 1024
    static let IS_IPAD_PRO     = IS_IPAD && DeviceScreen.CScreenHeight == 1366
}

public struct ApiHeader {
    
    static let headers = [
        "x-rapidapi-key" : "68242953c7msh66c121f60df46e9p1c983djsn67f4ae381d75",
        "x-rapidapi-host" : "yh-finance.p.rapidapi.com"
    ]
}


