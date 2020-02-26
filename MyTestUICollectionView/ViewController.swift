//
//  ViewController.swift
//  MyTestUICollectionView
//
//  Created by Sergey on 25.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    //, UICollectionViewDelegateFlowLayout
    let registerCell = "RegCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        let layout = UICollectionViewFlowLayout()
        
        //layout.scrollDirection = .horizontal
        let myCollectionView = UICollectionView.init(frame: view.bounds, collectionViewLayout: layout)
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: registerCell)
        view.addSubview(myCollectionView)
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        5
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "registerCell", for: indexPath)
        cell.backgroundColor = .lightGray
        return cell
    }
    
    
// test add
}

