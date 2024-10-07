//
//  InfoView.swift
//  Danting
//
//  Created by 김은상 on 10/7/24.
//

import UIKit
import SnapKit
import Then

final class InfoView: UIView {

    var studentNum: Int?
    var major: String?
    
    private lazy var studentNumLabel = UILabel().then {
        $0.text = "32240000"
        $0.textColor = .white
        $0.font = UIFont(name: "Pretendard-Regular", size: 10)
        $0.textAlignment = .center
    }
    
    private lazy var majorLabel = UILabel().then {
        $0.text = "어쩌구저쩌구학과"
        $0.textColor = .white
        $0.font = UIFont(name: "Pretendard-Regular", size: 10)
        $0.textAlignment = .center
    }
    
    //MARK: - LifeCycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureInfoView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - Helpers
}


extension InfoView {
    private func configureInfoView() {
        self.backgroundColor = UIColor(hexCode: "#5A80FD")

        self.addSubviews(self.majorLabel, self.studentNumLabel)
        
        self.studentNumLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(7)
            $0.leading.trailing.equalToSuperview()
        }

        self.majorLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(self.studentNumLabel.snp.bottom).offset(7)
            $0.leading.trailing.equalToSuperview()
        }
        
    }
}
