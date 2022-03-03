//
//  ThirdView.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

class ThirdView: UIView {
    var buttonToFirstPage: UIButton?
    var buttonToSecondPage: UIButton?
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
        
        buttonToSecondPage = UIButton()
        buttonToSecondPage?.backgroundColor = .black
        buttonToSecondPage?.setTitle("Go to Third Page", for: .normal)
        addSubview(buttonToSecondPage!)
        
        
        
    }
    
    func setUpConstraints() {
        
        if let buttonToFirstPage = buttonToFirstPage, let buttonToSecondPage = buttonToSecondPage{
            buttonToFirstPage.translatesAutoresizingMaskIntoConstraints = false
            buttonToSecondPage.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                buttonToFirstPage.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
                buttonToFirstPage.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
                buttonToFirstPage.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
                buttonToFirstPage.widthAnchor.constraint(equalTo: buttonToSecondPage.heightAnchor),

                buttonToSecondPage.leadingAnchor.constraint(equalToSystemSpacingAfter: buttonToFirstPage.trailingAnchor, multiplier: 1.0),
                buttonToSecondPage.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
                buttonToSecondPage.bottomAnchor.constraint(equalTo: buttonToFirstPage.centerYAnchor),

          
                ])
        }
      
    }
}
