//
//  ThirdView.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit

protocol ThirdViewDelegate: AnyObject {
    func didTapButtonToFirstPage(in view: ThirdView)
    func didTapButtonToSecondPage(in view: ThirdView)
}

class ThirdView: UIView {
    weak var delegate: ThirdViewDelegate?
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
        buttonToFirstPage?.isUserInteractionEnabled = true
        let firstButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToFirstPageTapped(sender:)))
        buttonToFirstPage?.addGestureRecognizer(firstButtonTap)
        addSubview(buttonToFirstPage!)
        
        buttonToSecondPage = UIButton()
        buttonToSecondPage?.backgroundColor = .black
        buttonToSecondPage?.setTitle("Go to Third Page", for: .normal)
        buttonToSecondPage?.isUserInteractionEnabled = true
        let secondButtonTap = UITapGestureRecognizer(target: self, action: #selector(handleButtonToSecondPageTapped(sender:)))
        buttonToSecondPage?.addGestureRecognizer(secondButtonTap)
        addSubview(buttonToSecondPage!)
        
        
        
    }
    
    func setUpConstraints() {
        
        if let buttonToFirstPage = buttonToFirstPage, let buttonToSecondPage = buttonToSecondPage{

            
            buttonToFirstPage.anchor(top: layoutMarginsGuide.topAnchor,
                                      paddingTop: 10,
                                      bottom: layoutMarginsGuide.bottomAnchor,
                                      paddingBottom: 10,
                                      left: layoutMarginsGuide.leadingAnchor,
                                      paddingLeft: 10,
                                      right: buttonToSecondPage.leadingAnchor,
                                      paddingRight: 10,
                                      width: 0,
                                      height: 0)
            
            buttonToSecondPage.anchor(top: layoutMarginsGuide.topAnchor,
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
    
    @objc func handleButtonToSecondPageTapped(sender: UITapGestureRecognizer) {
      
        delegate?.didTapButtonToSecondPage(in: self)
    }
}
