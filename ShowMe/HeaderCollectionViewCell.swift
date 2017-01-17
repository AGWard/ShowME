//
//  HeaderCollectionViewCell.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/16/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    
    var headerLabel = UILabel()
    
    override func awakeFromNib() {
        
        headerLabel = UILabel(frame: CGRect(x: 150, y: 0, width: 50, height: 40))
        headerLabel.text = "News"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 18)
        headerLabel.textColor = .white
        headerLabel.textAlignment = .justified
        
        
        contentView.addSubview(headerLabel)
    }
    
}
