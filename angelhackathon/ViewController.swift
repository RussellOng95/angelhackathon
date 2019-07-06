//
//  ViewController.swift
//  angelhackathon
//
//  Created by Russell Ong on 6/7/19.
//  Copyright © 2019 Russell Ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    var cellArray: [UIImage] = []
    var vehTypeArray: [String] = ["Ambulance", "Car", "Van", "Helicopter"]
    var availStatusArray: [String] = ["Available: 5","Available: 5","Available: 5","Available: 5"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "assetCell", for: indexPath) as! CollectionViewCell
        cell.iconImageView.image = cellArray[indexPath.row]
        cell.vehTypeTextView.text = vehTypeArray[indexPath.row]
        cell.availTextView.text = availStatusArray[indexPath.row]
        return cell
        
    }
    
    @IBOutlet weak var resourcesViewController: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resourcesViewController.delegate = self
        resourcesViewController.dataSource = self
        cellArray.append(UIImage(named: "pika")!)
        cellArray.append(UIImage(named: "pika")!)

        cellArray.append(UIImage(named: "pika")!)
        cellArray.append(UIImage(named: "pika")!)

    }


}

