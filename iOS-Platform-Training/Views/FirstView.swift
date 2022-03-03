//
//  FirstView.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

protocol FirstViewDelegate: AnyObject {
    func didTapButtonToSecondPage(in view: FirstView)
    func didTapButtonToThirdPage(in view: FirstView)
}

class FirstView: UIView {
    weak var delegate: FirstViewDelegate?
    var buttonToSecondPage: UIButton?
    var buttonToThirdPage: UIButton?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setGeneralConfigurations()
        createSubviews()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setGeneralConfigurations()
        createSubviews()
        setUpConstraints()
    }
    
    func setGeneralConfigurations() {
        backgroundColor = .white
    }
    
    func createSubviews() {
        buttonToSecondPage = UIButton()
        buttonToSecondPage?.setTitle("Go to First Page", for: .normal)
        buttonToSecondPage?.backgroundColor = .black
        buttonToSecondPage?.frame.size = CGSize(width: 100, height: 100)
        buttonToSecondPage?.isUserInteractionEnabled = true
        let secondButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToSecondPageTapped(sender:)))
        buttonToSecondPage?.addGestureRecognizer(secondButtonTap)
        addSubview(buttonToSecondPage!)
        
        buttonToThirdPage = UIButton()
        buttonToThirdPage?.backgroundColor = .black
        buttonToThirdPage?.frame.size = CGSize(width: 100, height: 100)
        buttonToThirdPage?.setTitle("Go to Third Page", for: .normal)
        
        let thirdButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToThirdPageTapped(sender:)))
        buttonToThirdPage?.addGestureRecognizer(thirdButtonTap)
        addSubview(buttonToThirdPage!)
    
        
        
    }
    
    func setUpConstraints() {
        
        if let buttonToSecondPage = buttonToSecondPage, let buttonToThirdPage = buttonToThirdPage{
            buttonToSecondPage.translatesAutoresizingMaskIntoConstraints = false
            buttonToThirdPage.translatesAutoresizingMaskIntoConstraints = false
            
            buttonToSecondPage.anchor(top: layoutMarginsGuide.topAnchor,
                                      paddingTop: 10,
                                      bottom: layoutMarginsGuide.bottomAnchor,
                                      paddingBottom: 10,
                                      left: layoutMarginsGuide.leadingAnchor,
                                      paddingLeft: 10,
                                      right: buttonToThirdPage.leadingAnchor,
                                      paddingRight: 10,
                                      width: 0,
                                      height: 0)
            
            buttonToThirdPage.anchor(top: layoutMarginsGuide.topAnchor,
                                      paddingTop: 10,
                                      bottom: layoutMarginsGuide.bottomAnchor,
                                      paddingBottom: 10,
                                      left: buttonToSecondPage.trailingAnchor,
                                      paddingLeft: 10,
                                      right: layoutMarginsGuide.trailingAnchor,
                                      paddingRight: 10,
                                      width: 0,
                                      height: 0)

        }
      
    }
    
    @objc func handleButtonToSecondPageTapped(sender: UITapGestureRecognizer) {
        print("First Button Tapped")
        delegate?.didTapButtonToSecondPage(in: self)
    }
    
    @objc func handleButtonToThirdPageTapped(sender: UITapGestureRecognizer) {
        print("Second Button Tapped")
        delegate?.didTapButtonToThirdPage(in: self)
    }
}




