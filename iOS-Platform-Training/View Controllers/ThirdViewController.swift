//
//  ThirdViewController.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

public protocol ThirdViewControllerDelegate: AnyObject {
    func navigateToFirstPage()
    func navigateToSecondPage()
}


class ThirdViewController: UIViewController {
    weak var delegate: ThirdViewControllerDelegate?
    var thirdView = ThirdView()
    override func loadView() {
         view = thirdView
    }
    
    @IBAction func navigateToSecondPage(_ sender: Any) {
        self.delegate?.navigateToSecondPage()
     
    }
     
     @IBAction func navigateToFirstPage(_ sender: Any) {
         self.delegate?.navigateToFirstPage()
     }
}
