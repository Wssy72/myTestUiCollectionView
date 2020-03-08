//
//  ViewController.swift
//  MyTestUICollectionView
//
//  Created by Sergey on 25.02.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let CellId = "RegCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        title = "Navigation"
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
        layout.itemSize = CGSize(width: 150, height: 50) //view.frame.width
        layout.scrollDirection = .horizontal
        let myCollectionView = UICollectionView.init(frame: view.bounds, collectionViewLayout: layout)
        myCollectionView.backgroundColor = .white
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
         //myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: CellId)
        view.addSubview(myCollectionView)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 45
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellId, for: indexPath)
        let labelCell = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: cell.bounds.size.height))
        cell.backgroundColor = .green
        cell.contentView.addSubview(labelCell)
        labelCell.text = indexPath.description
        labelCell.textAlignment = .center
        labelCell.clipsToBounds = true
        
        labelCell.layer.cornerRadius = 20
        return cell
        
    }
   
}

