//
//  SecondView.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

class SecondView: UIView {
    var buttonToFirstPage: UIButton?
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
        buttonToFirstPage = UIButton()
        buttonToFirstPage?.setTitle("Go to First Page", for: .normal)
        buttonToFirstPage?.backgroundColor = .black
        addSubview(buttonToFirstPage!)
        
        buttonToThirdPage = UIButton()
        buttonToThirdPage?.backgroundColor = .black
        buttonToThirdPage?.setTitle("Go to Third Page", for: .normal)
        addSubview(buttonToThirdPage!)
        
        
        
    }
    
    func setUpConstraints() {
        
        if let buttonToFirstPage = buttonToFirstPage, let buttonToThirdPage = buttonToThirdPage{
            buttonToFirstPage.translatesAutoresizingMaskIntoConstraints = false
            buttonToThirdPage.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                buttonToFirstPage.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
                buttonToFirstPage.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
                buttonToFirstPage.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
                buttonToFirstPage.widthAnchor.constraint(equalTo: buttonToThirdPage.heightAnchor),

                buttonToThirdPage.leadingAnchor.constraint(equalToSystemSpacingAfter: buttonToFirstPage.trailingAnchor, multiplier: 1.0),
                buttonToThirdPage.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
                buttonToThirdPage.bottomAnchor.constraint(equalTo: buttonToFirstPage.centerYAnchor),

          
                ])
        }
      
    }
}
