//
//  ParentViewController.swift
//  ChopeDemoApp
//
//  Created by sft_mac on 07/12/21.
//

import UIKit

class ParentViewController: UIViewController {
    
    override open func awakeFromNib() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let navController = self.navigationController {
            navController.navigationBar.barStyle = .default
            navController.navigationBar.tintColor = .black
            navController.navigationBar.barTintColor = .orange
            navController.navigationBar.isTranslucent = false
            navController.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
            
            let standardAppearance = UINavigationBarAppearance()
            standardAppearance.shadowColor = .clear
            standardAppearance.configureWithOpaqueBackground()
            navController.navigationBar.standardAppearance = standardAppearance
            navController.navigationBar.scrollEdgeAppearance = standardAppearance
            
            let compactAppearance = standardAppearance.copy()
            
            if #available(iOS 15, *) {
                navController.navigationBar.compactAppearance = compactAppearance
            }
        }
    }
}
