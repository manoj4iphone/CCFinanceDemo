//
//  UIApplication+Extension.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 30/12/21.
//

import Foundation
import UIKit

// MARK: - Extension of UIApplication For getting the TopMostViewController(UIViewController) of Application.

extension UIApplication {
    
    /// This will return the application SceneDelegate instance.
    ///
    ///  This could be nil value also, while using this "sceneDelegate" please use if let. If you are not using if let and if this returns nil and when you are trying to unwrapped this value then application will crash.
    static var sceneDelegate: SceneDelegate? {
        return UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
    }
    
    /// This will return the SceneDelegate UIWindow instance.
    ///
    ///  This could be nil value also, while using this "sceneWindow" please use if let. If you are not using if let and if this returns nil and when you are trying to unwrapped this value then application will crash.
    static var sceneWindow: UIWindow? {
        return UIApplication.sceneDelegate?.window
    }
    
    /// This will return the SceneDelegate  instance.
    ///
    ///  This could be nil value also, while using this "sceneWindowRootViewController" please use if let. If you are not using if let and if this returns nil and when you are trying to unwrapped this value then application will crash.
    static var topMostVC: UIViewController? {
        return UIApplication.sceneWindow?.rootViewController
    }
    
}

