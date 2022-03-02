//
//  FirstViewController.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

public protocol FirstViewControllerDelegate: AnyObject {
    func navigateToSecondPage()
    func navigateToThirdPage()
}

class FirstViewController: UIViewController {
    weak var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


