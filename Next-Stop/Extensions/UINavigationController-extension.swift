//
//  UINavigationController-extension.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 28/08/2021.
//

import UIKit

extension UINavigationController {
    
    ///
    /// Make the NavigationBar transparent.
    ///
    func customDesignTransparent() {
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        self.view.backgroundColor = .clear
    }
    
}
