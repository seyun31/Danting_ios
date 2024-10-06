//
//  PopupViewController.swift
//  Danting
//
//  Created by 김은상 on 10/6/24.
//

import UIKit
import Then
import SnapKit

final class PopupViewController: UIViewController {
    //MARK: - Properties
    private let backgroundView = UIView().then { $0.backgroundColor = UIColor(hexCode: "#B6B6B6").withAlphaComponent(0.49) }
    
    private let popupView = UIView().then {
        $0.backgroundColor = .white
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 30
    }
    
    private let logobaseView = UIView().then {
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 29
        $0.backgroundColor = .white
    }
    
    private let logoImageView = UIImageView().then {
        $0.image = UIImage(named: "logo_danting.png")
        $0.contentMode = .scaleAspectFill
    }
    
    private let titleLabel = UILabel().then {
        $0.text = "새로운 만남을 가질 준비가 되었나요?"
        $0.textAlignment = .center
        $0.textColor = .black
    }
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurePopupVC()
    }
    
    
    //MARK: - Helpers
    
    
    
    
    
}

extension PopupViewController {
    private func configurePopupVC() {
        self.view.addSubview(self.backgroundView)
        
        self.backgroundView.addSubviews(self.popupView, self.logobaseView)
                
        self.logobaseView.addSubview(self.logoImageView)
        
        self.backgroundView.snp.makeConstraints { $0.edges.equalToSuperview()}
        
        self.popupView.snp.makeConstraints {
            $0.width.equalTo(319)
            $0.height.equalTo(216)
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(300)
        }
        
        self.logobaseView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(271)
            $0.width.height.equalTo(63)
        }
        
        self.logoImageView.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
            $0.width.height.equalTo(63)
        }
        
        
        
        
    }
    
}
