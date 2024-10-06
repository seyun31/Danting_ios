//
//  StandbyVC3.swift
//  Danting
//
//  Created by 김은상 on 10/5/24.
//

import UIKit

final class StandbyVC4: StandbyViewController {
    //MARK: - Properties
    private lazy var firstUserStackView = UIStackView(arrangedSubviews: [firstUserImageButton, firstUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
        
    }
    
    private lazy var firstUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 1
    }
    
    private lazy var firstUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    private lazy var secondUserStackView = UIStackView(arrangedSubviews: [secondUserImageButton, secondUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
        
    }
    
    private lazy var secondUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 2
    }
    
    private lazy var secondUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    private lazy var thirdUserStackView = UIStackView(arrangedSubviews: [thirdUserImageButton, thirdUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
        
    }
    
    private lazy var thirdUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 3
    }
    
    private lazy var thirdUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    private lazy var fourthUserStackView = UIStackView(arrangedSubviews: [fourthUserImageButton, fourthUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private lazy var fourthUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 4
    }
    
    private lazy var fourthUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    private lazy var fifthUserStackView = UIStackView(arrangedSubviews: [fifthUserImageButton, fifthUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private lazy var fifthUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 5
    }
    
    private lazy var fifthUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    private lazy var sixthUserStackView = UIStackView(arrangedSubviews: [sixthUserImageButton, sixthUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private lazy var sixthUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 6
    }
    
    private lazy var sixthUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    
    
    private lazy var seventhUserStackView = UIStackView(arrangedSubviews: [seventhUserImageButton, seventhUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private lazy var seventhUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 7
    }
    
    private lazy var seventhUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    
    private lazy var eighthUserStackView = UIStackView(arrangedSubviews: [eighthUserImageButton, eighthUserNameLabel]).then {
        $0.backgroundColor = .clear
        $0.axis = .vertical
        $0.distribution = .fill
        $0.spacing = 4
    }
    
    private lazy var eighthUserImageButton = UIButton().then {
        $0.setImage(UIImage(named: "unready.png"), for: .normal)
        $0.tag = 6
    }
    
    private lazy var eighthUserNameLabel = UILabel().then {
        $0.text = "김단국"
        $0.textAlignment = .center
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    
    private lazy var buttons = [self.firstUserImageButton, self.secondUserImageButton,
                                self.thirdUserImageButton, self.fourthUserImageButton,
                                self.fifthUserImageButton, self.sixthUserImageButton,
                                self.seventhUserImageButton, self.eighthUserImageButton]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureStandyVC4()
        self.settingActionsForImageButton()
    }
    
    @objc func userButtonTapped(_ sender: UIButton) {
        print("Dubug: userButtonTapped")
        print("Debug: userButtonTag == \(sender.tag)")
        
    }
    
    
    
}


extension StandbyVC4 {

    private func configureStandyVC4() {
        self.view.addSubviews(firstUserStackView, secondUserStackView,
                              thirdUserStackView, fourthUserStackView,
                              fifthUserStackView, sixthUserStackView,
                              seventhUserStackView, eighthUserStackView)
        
        self.firstUserStackView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(24)
            $0.top.equalToSuperview().offset(301)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        self.secondUserStackView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(100)
            $0.top.equalToSuperview().offset(225)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        self.thirdUserStackView.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-100)
            $0.top.equalToSuperview().offset(225)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        self.fourthUserStackView.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-24)
            $0.top.equalToSuperview().offset(301)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        
        
        self.fifthUserStackView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(24)
            $0.top.equalToSuperview().offset(411)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        self.sixthUserStackView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(100)
            $0.top.equalToSuperview().offset(495)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        self.seventhUserStackView.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-100)
            $0.top.equalToSuperview().offset(495)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
        
        self.eighthUserStackView.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-24)
            $0.top.equalToSuperview().offset(411)
            $0.width.equalTo(67.35)
            $0.height.equalTo(84.42)
        }
    }
    private func settingActionsForImageButton() {
        self.buttons.forEach {
            
            $0.addTarget(self, action: #selector(userButtonTapped(_:)), for: .touchUpInside)
        }
        
    }
}
