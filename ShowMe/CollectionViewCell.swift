//
//  CollectionViewCell.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var cellImages = UIImageView()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        cellImages = UIImageView(frame: contentView.frame)
        cellImages.clipsToBounds = true
        cellImages.contentMode = .scaleToFill
        
        
        
        contentView.addSubview(cellImages)
    }
    
}
