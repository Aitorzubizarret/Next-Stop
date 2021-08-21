//
//  Initializer.swift
//  Next-Stop
//
//  Created by Aitor Zubizarreta Perez on 21/08/2021.
//

import UIKit

class Initializer {
    
    // MARK: - Properties
    
    static var shared = Initializer()
    
    // MARK: - Methods
    
    ///
    /// Create the MainViewController
    ///
    func createMainViewController() -> UIViewController {
        // Create the MainViewController.
        let mainVC = MainViewController()
        
        // Create the Items ViewModel.
        let itemsViewModel: ItemsViewModel = ItemsViewModel()
        
        // Add the function to execute when the ViewModel gets new data.
        itemsViewModel.binding = {
            mainVC.items = itemsViewModel.itemsList
        }
        
        // Get new data for the ViewModel.
        itemsViewModel.getItems()
        
        // Add the ViewModel to the MainViewController.
        mainVC.itemsViewModel = itemsViewModel
        
        return mainVC
    }
    
}
