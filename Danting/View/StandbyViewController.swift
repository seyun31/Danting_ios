//
//  StandbyViewController.swift
//  Danting
//
//  Created by 김은상 on 10/5/24.
//

import UIKit
import SnapKit
import Then


final class StandbyViewController: UIViewController {

    private lazy var readyButton = UIButton().then {
        $0.setTitle("준비", for: .normal)
        $0.setTitleColor(UIColor(hexCode: "#FFFFFF"), for: .normal)
        $0.backgroundColor = UIColor(hexCode: "#5A80FD")
        $0.layer.cornerRadius = 10
        $0.clipsToBounds = true
        $0.addTarget(self, action: #selector(readyButtonDidTapped(_:)), for: .touchUpInside)
    }
    
    private let findingLoveLabel = UILabel().then {
        $0.text = "Finding Love···"
        $0.textColor = UIColor(hexCode: "#5A80FD")
        $0.font = UIFont.systemFont(ofSize: 20)
    }
    
    private let readyLabel = UILabel().then {
        $0.text = "준비를 완료해주세요"
        $0.textColor = UIColor(hexCode: "#404040")
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    private let heartImage = UIImageView().then {
        $0.image = UIImage(named: "heart_with_text")?.withRenderingMode(.alwaysTemplate)
        $0.contentMode = .scaleAspectFit
        $0.tintColor = UIColor(hexCode: "#D7D7D7")
    }
    
    private let backgroundCircle = UIImageView().then {
        $0.image = UIImage(named: "backgroundCircle")
        $0.contentMode = .scaleAspectFit
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureCommonComponents()
        self.configureUIWithMeetingType()
        self.animateTintColorChange()
        
    }
    

    
    @objc func readyButtonDidTapped(_ sender: UIButton) {
        
        if sender.currentTitle == "준비" {
            sender.backgroundColor = UIColor(hexCode: "#A8B1CE")
            sender.setTitle("취소", for: .normal)
        } else {
            sender.backgroundColor = UIColor(hexCode: "#5A80FD")
            sender.setTitle("준비", for: .normal)
        }
    }

}


extension StandbyViewController {
    
    private func configureCommonComponents() {
        
        self.navigationController?.title = "대기"
        
        self.view.backgroundColor = UIColor(hexCode: "#FFFFFF")
        
        self.backgroundCircle.addSubview(self.heartImage)
        
        self.view.addSubviews(self.readyButton, self.readyLabel, self.findingLoveLabel,
                              self.backgroundCircle)
        
        self.findingLoveLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.width.equalTo(150)
            $0.height.equalTo(22)
            $0.bottom.equalToSuperview ().offset(-195)
        }
        
        self.readyLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(self.findingLoveLabel.snp.bottom).offset(9)
            $0.width.equalTo(97)
            $0.height.equalTo(22)
        }
        
        self.readyButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(self.readyLabel.snp.bottom).offset(51)
            $0.width.equalTo(361)
            $0.height.equalTo(55)

        }
        
        self.backgroundCircle.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(self.findingLoveLabel.snp.top).offset(-88)
            $0.width.height.equalTo(358)
        }
        
        self.heartImage.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
        
    }

    private func configureUIWithMeetingType() {
        let test_meetingType = 2
        
        
        
    }
    
    
    
    private func animateTintColorChange() {
            // 애니메이션 적용 (3초간)
            UIView.animate(withDuration: 3.0, animations: {
                // 색상을 파란색으로 변경
                self.heartImage.tintColor = UIColor(hexCode: "#FB6969")
            }, completion: { _ in
                // 애니메이션이 끝나면 다시 실행 (반대 색상으로 변경)
                UIView.animate(withDuration: 3.0, animations: {
                    self.heartImage.tintColor = UIColor(hexCode: "#D7D7D7")
                }, completion: { _ in
                    // 다시 애니메이션을 시작하여 무한 반복
                    self.animateTintColorChange()
                })
            })
        }
}
