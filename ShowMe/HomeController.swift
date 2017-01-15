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
   
    var loginImages = [UIImage(named: "reporter1"), UIImage(named: "Photo"), UIImage(named: "location"), UIImage(named: "content"), UIImage(named: "share")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addCollectionView()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        collectionView.backgroundColor = .blue
        collectionView.isPagingEnabled = true
        
        view.addSubview(collectionView)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return loginImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .darkText
        
        
        cell.awakeFromNib()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        let newCell = cell as! CollectionViewCell
        
        newCell.cellImages.image = loginImages[indexPath.row]
        
        
    }

    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    
}






















