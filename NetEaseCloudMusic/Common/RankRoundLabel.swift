//
//  RankRoundLabel.swift
//  NetEaseCloudMusic
//
//  Created by Ampire_Dan on 16/6/19.
//  Copyright © 2016年 Ampire_Dan. All rights reserved.
//

import UIKit

class RankRoundLabel: UIView {
    static let height:CGFloat = 15
    
    var rankText:String = "" {
        didSet {
            randkLabel.text = rankText
        }
    }
    
    
    private lazy var randkLabel:UILabel = {
        let label = UILabel()
        label.textColor = UIColor.whiteColor()
        label.font = UIFont.boldSystemFontOfSize(12)
        label.text = "V"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = FixedValue.mainRedColor
        self.layer.cornerRadius = RankRoundLabel.height/2
        self.addSubview(self.randkLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.randkLabel.sizeToFit()
        self.bounds = CGRectMake(0, 0, RankRoundLabel.height, RankRoundLabel.height)
        let size = self.randkLabel.bounds.size
        self.randkLabel.frame = CGRectMake(RankRoundLabel.height/2 - size.width/2, RoundNumberLabel.height/2 - size.height/2, size.width, size.height)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
