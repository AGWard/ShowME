//
//  UserViewCell.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class UserViewCell: UICollectionViewCell {
    
//    let profileImage = UIImageView()
    let personName = UILabel()
    let socialBar = UIImageView()
    let notes = UILabel()
    let userPic = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    let line = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 0.005))
    let profileImage2 = UIButton()
    
    
    
    override func awakeFromNib() {
        
    
       
        
        

        
//        profileImage.contentMode = .scaleAspectFill
//        profileImage.clipsToBounds = true
        
        profileImage2.isEnabled = true
        profileImage2.contentHorizontalAlignment = .fill
        profileImage2.contentVerticalAlignment = .fill
        profileImage2.clipsToBounds = true
        profileImage2.isUserInteractionEnabled = true
        profileImage2.addTarget(self, action: #selector(userHit), for: .touchUpInside)
        
       
        
        
    
        personName.textColor = .lightGray
        personName.font = UIFont.systemFont(ofSize: 15)
        
        
        socialBar.image = UIImage(named: "smbar")
        socialBar.backgroundColor = .white
        socialBar.contentMode = .scaleAspectFit
        socialBar.clipsToBounds = false
        
        notes.textColor = .darkText
        notes.font = UIFont.boldSystemFont(ofSize: 14)
        
        
        
        userPic.layer.borderWidth = 1
        userPic.layer.borderColor = UIColor.white.cgColor
        userPic.layer.cornerRadius = userPic.frame.height/2
        userPic.backgroundColor = .white
        userPic.contentMode = .scaleAspectFill
        userPic.clipsToBounds = true
        
        
        line.text = "News feed"
        line.textAlignment = .center
        line.font = UIFont.boldSystemFont(ofSize: 1)
        line.backgroundColor = .green
        line.clipsToBounds = true
        
        
       
        
        
//        contentView.addSubview(profileImage)
        contentView.addSubview(personName)
        contentView.addSubview(socialBar)
        contentView.addSubview(notes)
        contentView.addSubview(userPic)
        contentView.addSubview(line)
        contentView.addSubview(profileImage2)
        
        
//        profileImage.translatesAutoresizingMaskIntoConstraints = false
        personName.translatesAutoresizingMaskIntoConstraints = false
        socialBar.translatesAutoresizingMaskIntoConstraints = false
        notes.translatesAutoresizingMaskIntoConstraints = false
        userPic.translatesAutoresizingMaskIntoConstraints = false
        line.translatesAutoresizingMaskIntoConstraints = false
        profileImage2.translatesAutoresizingMaskIntoConstraints = false
        
        
        
//        NSLayoutConstraint.activate([profileImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 80), profileImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -70), profileImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), profileImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0)])
        
        NSLayoutConstraint.activate([personName.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8), personName.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0), personName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0), personName.topAnchor.constraint(equalTo: profileImage2.bottomAnchor, constant: 0)])
        
        NSLayoutConstraint.activate([socialBar.topAnchor.constraint(equalTo: profileImage2.bottomAnchor, constant: 0), socialBar.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50), socialBar.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50), socialBar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -50)])
        
        NSLayoutConstraint.activate([notes.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20), notes.leftAnchor.constraint(equalTo: userPic.rightAnchor, constant: 8), notes.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0), notes.bottomAnchor.constraint(equalTo: profileImage2.topAnchor, constant: 0)])
        
        NSLayoutConstraint.activate([userPic.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20), userPic.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12), userPic.bottomAnchor.constraint(equalTo: profileImage2.topAnchor, constant: -10), userPic.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -312)])
        
        NSLayoutConstraint.activate([line.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0), line.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), line.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0)])
        
        NSLayoutConstraint.activate([profileImage2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 80), profileImage2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -70), profileImage2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0), profileImage2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0)])
        
    }
    
    func userHit(_ sender: UIButton) {
        
        print(" BOO ")
    }
    
    
}
