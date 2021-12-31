//
//  Loader.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 30/12/21.
//

import Foundation
import UIKit

class Loader {
    
    var isAnimating:Bool = false
    
    private init() {}
    static let shared = Loader()
    
    private static let activityIndicatoryView: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = .large
        activityIndicator.color = .blue
        activityIndicator.hidesWhenStopped = true
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }()
    
    private static let transparentView: UIView = {
        let transparentOverlayView = UIView()
        transparentOverlayView.frame = DeviceScreen.CBounds
        transparentOverlayView.backgroundColor = UIColor.RGB(0, 0, 0, 0.4)
        return transparentOverlayView
    }()
}


// MARK: -
// MARK: - Loader functions

extension Loader {
    
    private func hideCurrentLoaders() {
        
        guard let `view` = UIApplication.topMostVC?.view else  {
            return
        }
        
        for loader in view.subviews {
            if loader == Loader.activityIndicatoryView {
                loader.removeFromSuperview()
            }
        }
    }
    
    private func showIndicatorViewLoader() {
        
        DispatchQueue.main.async {
            UIApplication.topMostVC?.view.addSubview(Loader.activityIndicatoryView)
            self.resizeActivityIndicator()
            self.startAnimating()
        }
    }
    
    private func resizeActivityIndicator() {
        
        NSLayoutConstraint(item: Loader.activityIndicatoryView, attribute: .centerX, relatedBy: .equal, toItem: UIApplication.topMostVC?.view, attribute: .centerX, multiplier: 1.0, constant: 0.0).isActive  = true
        
        NSLayoutConstraint(item: Loader.activityIndicatoryView, attribute: .centerY, relatedBy: .equal, toItem: UIApplication.topMostVC?.view, attribute: .centerY, multiplier: 1.0, constant: 0.0).isActive  = true
    }
    
    private func hideActivityIndicator() {
        self.stopAnimating()
    }
    
    private func startAnimating() {
        Loader.shared.isAnimating = true
        Loader.activityIndicatoryView.startAnimating()
    }
    
    private func stopAnimating() {
        Loader.shared.isAnimating = false
        Loader.activityIndicatoryView.stopAnimating()
        Loader.activityIndicatoryView.removeFromSuperview()
    }
}



// MARK: -
// MARK: - Show/Hide loader
extension Loader {
    
    func show() {
        DispatchQueue.main.async {
            self.hideCurrentLoaders()
            self.showIndicatorViewLoader()
        }
    }
    
    func hide() {
        DispatchQueue.main.async {
            self.hideActivityIndicator()
        }
    }
    
}
