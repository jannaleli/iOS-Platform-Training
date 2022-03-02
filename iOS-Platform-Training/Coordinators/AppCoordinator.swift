//
//  FirstCoordinator.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

final class AppCoordinator: BaseCoordinator {
    var navigationController: UINavigationController
    
    var childCoordinators = [BaseCoordinator]()

    var window = UIWindow()
    
    init(scene: UIWindowScene) {
        
        self.navigationController = UINavigationController()
        self.window = UIWindow(windowScene: scene)

        
    }
    
    func start() {
        let firstViewController : FirstViewController = FirstViewController()
        //firstViewController.delegate = self
        self.navigationController.viewControllers = [firstViewController]
        loading()
    }
    
    func loading() {
        window.rootViewController = self.navigationController
        window.makeKeyAndVisible()
    }
    

    
}
