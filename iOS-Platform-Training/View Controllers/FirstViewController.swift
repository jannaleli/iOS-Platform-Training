//
//  FirstViewController.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

public protocol FirstViewControllerDelegate: AnyObject {

    func goToSecondPage()
    func goToThirdPage()
    
}

class FirstViewController: UIViewController {

    
    weak var delegate: AppCoordinatorDelegate?
    var firstView = FirstView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        firstView.delegate = self
        view = firstView
    }
    

}

extension FirstViewController: FirstViewControllerDelegate {
    func goToSecondPage() {
        print("You're on the next page!")
        delegate?.goToSecondPage()
     
    }
     
    func goToThirdPage() {
        print("You're on the third page!")
        delegate?.goToThirdPage()
     }
}




