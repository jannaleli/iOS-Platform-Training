//
//  SecondCoordinator.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit


protocol BackToFirstViewControllerDelegate: AnyObject {
    func navigateBackToFirstPage(newOrderCoordinate: Any)
}

final class SecondCoordinator: BaseCoordinator {
    var navigationController: UINavigationController
    var childCoordinators = [BaseCoordinator]()
    
    init() {
        self.navigationController = UINavigationController()
    
    }
    
    func start() {
        
    }
    
    
    
    
    
    
}
