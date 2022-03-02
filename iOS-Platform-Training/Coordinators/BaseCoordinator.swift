//
//  AppCoordinator.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

public protocol BaseCoordinator: AnyObject {
    // MARK: Declaration of protocol properties
    
    var childCoordinators: [BaseCoordinator] { get set }
    
    var navigationController : UINavigationController { get set }
    
    func start()
}
