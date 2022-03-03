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
        buttonToSecondPage?.isUserInteractionEnabled = true
        let secondButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToSecondPageTapped(sender:)))
        buttonToSecondPage?.addGestureRecognizer(secondButtonTap)
        addSubview(buttonToSecondPage!)
        
        buttonToThirdPage = UIButton()
        buttonToThirdPage?.backgroundColor = .black
        buttonToThirdPage?.setTitle("Go to Third Page", for: .normal)
        
        let thirdButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToThirdPageTapped(sender:)))
        buttonToThirdPage?.addGestureRecognizer(thirdButtonTap)
        addSubview(buttonToThirdPage!)
    
        
        
    }
    
    func setUpConstraints() {
        
        if let buttonToSecondPage = buttonToSecondPage, let buttonToThirdPage = buttonToThirdPage{
            buttonToSecondPage.translatesAutoresizingMaskIntoConstraints = false
            buttonToThirdPage.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                buttonToSecondPage.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
                buttonToSecondPage.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
                buttonToSecondPage.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
                buttonToSecondPage.widthAnchor.constraint(equalTo: buttonToThirdPage.heightAnchor),

                buttonToThirdPage.leadingAnchor.constraint(equalToSystemSpacingAfter: buttonToSecondPage.trailingAnchor, multiplier: 1.0),
                buttonToThirdPage.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
                buttonToThirdPage.bottomAnchor.constraint(equalTo: buttonToSecondPage.centerYAnchor),

          
                ])
        }
      
    }
    
    @objc func handleButtonToSecondPageTapped(sender: UITapGestureRecognizer) {
        delegate?.didTapButtonToSecondPage(in: self)
    }
    
    @objc func handleButtonToThirdPageTapped(sender: UITapGestureRecognizer) {
        delegate?.didTapButtonToThirdPage(in: self)
    }
}


