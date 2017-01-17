//
//  FooterCollectionViewCell.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/16/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class FooterCollectionViewCell: UICollectionViewCell {
    
    var footerLabel = UILabel()
    
    override func awakeFromNib() {
        
        footerLabel = UILabel(frame: CGRect(x: 150, y: 0, width: 80, height: 40))
        footerLabel.text = "Footer"
        footerLabel.font = UIFont.boldSystemFont(ofSize: 18)
        footerLabel.textColor = .white
        footerLabel.textAlignment = .justified
        
        
        contentView.addSubview(footerLabel)
        
    }

    
}
