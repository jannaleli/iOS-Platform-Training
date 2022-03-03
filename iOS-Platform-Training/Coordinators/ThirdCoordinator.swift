//
//  ThirdCoordinator.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit


final class ThirdCoordinator: BaseCoordinator {

    
    var navigationController: UINavigationController
    var childCoordinators = [BaseCoordinator]()
    
    init() {
        self.navigationController = UINavigationController()
    
    }
    
    func start() {
       
        let thirdViewController : ThirdViewController = ThirdViewController()
        //firstViewController.delegate = self
        self.navigationController.viewControllers = [thirdViewController]
    }
    
    
    
    
    
    
}
