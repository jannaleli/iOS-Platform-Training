//
//  FirstView.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

class FirstView: UIView {
    
    var buttonToSecondPage: UIButton?
    var buttonToThirdPage: UIButton?
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfigurations()
        createSubviews()
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setConfigurations()
        createSubviews()
        setUpConstraints()
    }
    
    func setConfigurations() {
        backgroundColor = .white
    }
    
    func createSubviews() {
        buttonToSecondPage = UIButton()
        buttonToSecondPage?.setTitle("Go to First Page", for: .normal)
        buttonToSecondPage?.backgroundColor = .black
        addSubview(buttonToSecondPage!)
        
        buttonToThirdPage = UIButton()
        buttonToThirdPage?.backgroundColor = .black
        buttonToThirdPage?.setTitle("Go to Third Page", for: .normal)
        addSubview(buttonToThirdPage!)
        
        
        
    }
    
    func setUpConstraints() {
        buttonToSecondPage!.translatesAutoresizingMaskIntoConstraints = false
        buttonToThirdPage!.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonToSecondPage!.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            buttonToSecondPage!.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            buttonToSecondPage!.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            buttonToSecondPage!.widthAnchor.constraint(equalTo: buttonToThirdPage!.heightAnchor),

            buttonToThirdPage!.leadingAnchor.constraint(equalToSystemSpacingAfter: buttonToSecondPage!.trailingAnchor, multiplier: 1.0),
            buttonToThirdPage!.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            buttonToThirdPage!.bottomAnchor.constraint(equalTo: buttonToSecondPage!.centerYAnchor),

      
            ])
    }
}


