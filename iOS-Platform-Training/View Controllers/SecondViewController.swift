//
//  SecondViewController.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

public protocol SecondViewControllerDelegate: AnyObject {
    func navigateToFirstPage()
    func navigateToThirdPage()
}


class SecondViewController: UIViewController {
    weak var delegate: SecondViewControllerDelegate?
    var secondView = SecondView()
    override func loadView() {
         view = secondView
    }
}
