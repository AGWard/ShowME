//
//  HomeController.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    
    let cellID = "cellID"
   
    var loginImages = [UIImage(named: "reporter3"), UIImage(named: "Photo"), UIImage(named: "location")]
    var howToUseDetails = ["Ever dreamn't of becoming a reporter? Here is your chance. You not only can be a reporter but view current news, get emergency alerts and much more", "Simply take a photo or video of something you deemed News worthy...make sure the quality is good", "Select your location. This helps you and othere users see only news in their area/region."]


    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        addCollectionView()
        view.addSubview(addPageController)
        view.addSubview(skipBut)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let pageNumber = targetContentOffset.pointee.x / view.frame.width
        
        
        addPageController.currentPage = Int(pageNumber)
        
        print(pageNumber)
    }
    
    
    func addCollectionView(){
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .darkText
        collectionView.isPagingEnabled = true
        
        view.addSubview(collectionView)
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return loginImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CollectionViewCell
        
        cell.awakeFromNib()
        cell.backgroundColor = .darkText
        
        
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let newCell = cell as! CollectionViewCell
        
        newCell.cellImages.image = loginImages[indexPath.row]
        newCell.someText.text = howToUseDetails[indexPath.row]
        
    }
}






















