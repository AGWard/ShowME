//
//  NewsViewController.swift
//  ShowMe
//
//  Created by Anthony Ward on 1/15/17.
//  Copyright © 2017 AppCo. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    view.backgroundColor = .blue
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
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
    
    func addCollectionViewMain() {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let collectionVC = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionVC.backgroundColor = .darkText
        
        view.addSubview(collectionVC)
        

    }

    
}
