//
//  UserViewCell.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class UserViewCell: UICollectionViewCell {
    
    let profileImage = UIImageView()
    let personName = UILabel()
    let socialBar = UIImageView()
    let notes = UILabel()
    
    
    override func awakeFromNib() {
        
        profileImage.clipsToBounds = true
        profileImage.contentMode = .scaleToFill
        
    
        personName.textColor = .red
        personName.font = UIFont.systemFont(ofSize: 15)
        
        socialBar.image = UIImage(named: "smbar")
        socialBar.backgroundColor = .darkText
        socialBar.contentMode = .scaleAspectFit
        socialBar.clipsToBounds = false
        
        notes.textColor = .white
        notes.font = UIFont.boldSystemFont(ofSize: 17)
        
        
        contentView.addSubview(profileImage)
        contentView.addSubview(personName)
        contentView.addSubview(socialBar)
        contentView.addSubview(notes)
        
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        personName.translatesAutoresizingMaskIntoConstraints = false
        socialBar.translatesAutoresizingMaskIntoConstraints = false
        notes.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([profileImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50), profileImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -100), profileImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), profileImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0)])
        
        NSLayoutConstraint.activate([personName.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), personName.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0), personName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0), personName.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 0)])
        
        NSLayoutConstraint.activate([socialBar.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 0), socialBar.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50), socialBar.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50), socialBar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -80)])
        
        NSLayoutConstraint.activate([notes.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0), notes.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), notes.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0), notes.bottomAnchor.constraint(equalTo: profileImage.topAnchor, constant: 0)])
        
    }
    
}
