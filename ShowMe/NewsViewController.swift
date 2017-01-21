//
//  NewsViewController.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let userCellID = "userCellID"
    let headerID = "HeaderID"
    let footerID = "footerID"
    

    var userImages = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7"), UIImage(named: "8"), UIImage(named: "9"), UIImage(named: "10"), UIImage(named: "11"), UIImage(named: "12"), UIImage(named: "13"), UIImage(named: "14"), UIImage(named: "15")]
    var userNames = ["Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here", "Person username and details goes here"]
    
    var topNews = ["Curry drives as he becomes #1 layup player", "Lebron says Warriors are the best", "Kobe on retirement", "Jordon says Hornets are on track", "Carmello to sit out next game", "Harden says Russ is MVP", "4th Qtr flop not real", "CP says clippers are refreshed", "Westbrook on averaging Triple Doubles", "Rumours of trade for CJ", "Kyrie says best rivalry against GS", "Rose - 'family first'", "AI talks about current 76ers", "Timmy on coaching and Popavich", "Garnett and his tight pants"]
    
    var profilePic = [UIImage(named: "rowley"), UIImage(named: "oldMan"), UIImage(named: "female"), UIImage(named: "rowley"), UIImage(named: "oldMan"), UIImage(named: "female"), UIImage(named: "rowley"), UIImage(named: "oldMan"), UIImage(named: "female"), UIImage(named: "rowley"), UIImage(named: "oldMan"), UIImage(named: "female"), UIImage(named: "rowley"), UIImage(named: "oldMan"), UIImage(named: "oldMan")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    view.backgroundColor = .blue
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(addMessage))
        
        
        addCollectionViewMain()
    

        // Do any additional setup after loading the view.
    }
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goBack() {
        dismiss(animated: true, completion: nil)
    }
    
    func addMessage() {
        
        print("anthony")
    }
    
    func addCollectionViewMain() {
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionFootersPinToVisibleBounds = true
      
        let collectionVC = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionVC.register(UserViewCell.self, forCellWithReuseIdentifier: userCellID)
        collectionVC.delegate = self
        collectionVC.dataSource = self
        collectionVC.backgroundColor = .white
        
        collectionVC.register(HeaderCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerID)
        collectionVC.register(FooterCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerID)
        
        
        
        
        
        view.addSubview(collectionVC)
        

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: userCellID, for: indexPath) as! UserViewCell
        cell.backgroundColor = .white
        
        cell.personName.text = userNames[indexPath.row]
        cell.notes.text = topNews[indexPath.row]
        cell.userPic.image = profilePic[indexPath.row]
        cell.profileImage2.setImage(userImages[indexPath.row], for: .normal)
        
        
        
        
        
        cell.awakeFromNib()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 500)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader {
        
        let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath) as! HeaderCollectionViewCell
        
        headerCell.backgroundColor = .lightGray
        
        headerCell.awakeFromNib()
        
        return headerCell
        }
        
        let footerCell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerID, for: indexPath) as! FooterCollectionViewCell
        
        footerCell.backgroundColor = .gray
        footerCell.awakeFromNib()
        
        return footerCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    
}
