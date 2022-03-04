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
    weak var firstDelegate: FirstViewDelegate?
    weak var thirdDelegate: ThirdViewDelegate?
    
    init() {
        self.navigationController = UINavigationController()

    
    }
    
    func start() {
  
        let secondViewController : SecondViewController = SecondViewController()
        //firstViewController.delegate = self
        self.navigationController.viewControllers = [secondViewController]
    }
    
    
    
    
    
    
}


