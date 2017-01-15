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
    var someText = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellImages.isOpaque = true
        cellImages.clipsToBounds = true
        cellImages.contentMode = .scaleAspectFit
        
        someText = UILabel(frame: contentView.frame)
        someText.clipsToBounds = true
        someText.textColor = .white
        someText.numberOfLines = 0
        
        
        
        
        contentView.addSubview(cellImages)
        contentView.addSubview(someText)
        
        cellImages.translatesAutoresizingMaskIntoConstraints = false
        someText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([cellImages.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0), cellImages.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), cellImages.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0), cellImages.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -200)])
        
        NSLayoutConstraint.activate([someText.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0), someText.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), someText.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0), someText.topAnchor.constraint(equalTo: cellImages.bottomAnchor, constant: 0)])
    }
    
}
