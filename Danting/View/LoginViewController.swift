//
//  ViewController.swift
//  Danting
//
//  Created by 김은상 on 10/5/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activateBackgroundGradient()
    }

    private func configureLoginUI() {
        
        
        
    }
    
    private func activateBackgroundGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        let topColor = UIColor(hexCode: "#5A80FD").cgColor
        let bottomColor = UIColor(hexCode: "CEDEFF").cgColor
        let colors: [CGColor] = [topColor, bottomColor]
        
        gradientLayer.colors = colors
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)

        
        self.view.layer.addSublayer(gradientLayer)

    }
    

}

