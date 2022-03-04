//
//  SecondView.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

protocol SecondViewDelegate: AnyObject{
    func didTapButtonToFirstPage(in view: SecondView)
    func didTapButtonToThirdPage(in vew: SecondView)
}

class SecondView: UIView {
    weak var delegate: SecondViewDelegate?
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
        buttonToFirstPage?.isUserInteractionEnabled = true
        let firstButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToFirstPageTapped(sender:)))
        buttonToFirstPage?.addGestureRecognizer(firstButtonTap)
        addSubview(buttonToFirstPage!)
        
        buttonToThirdPage = UIButton()
        buttonToThirdPage?.backgroundColor = .black
        buttonToThirdPage?.setTitle("Go to Third Page", for: .normal)
        buttonToThirdPage?.isUserInteractionEnabled = true
        let thirdButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToThirdPageTapped(sender:)))
        buttonToThirdPage?.addGestureRecognizer(thirdButtonTap)
        addSubview(buttonToThirdPage!)
        
        
        
    }
    
    func setUpConstraints() {
        
        if let buttonToFirstPage = buttonToFirstPage, let buttonToThirdPage = buttonToThirdPage{
            
            buttonToFirstPage.anchor(top: layoutMarginsGuide.topAnchor,
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
                                      left: buttonToFirstPage.trailingAnchor,
                                      paddingLeft: 10,
                                      right: layoutMarginsGuide.trailingAnchor,
                                      paddingRight: 10,
                                      width: 0,
                                      height: 0)
        }
      
    }
    @objc func handleButtonToFirstPageTapped(sender: UITapGestureRecognizer) {
        
        delegate?.didTapButtonToFirstPage(in: self)
    }
    
    @objc func handleButtonToThirdPageTapped(sender: UITapGestureRecognizer) {
        
        delegate?.didTapButtonToThirdPage(in: self)
    }
}
