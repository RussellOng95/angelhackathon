//
//  CasualtyViewController.swift
//  angelhackathon
//
//  Created by Russell Ong on 7/7/19.
//  Copyright © 2019 Russell Ong. All rights reserved.
//

import UIKit
import iOSDropDown

class CasualtyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var symptomItems: [String] = [
    "Bowlegged", "Extreme swelling", "Popping joint", "Snapping joint","Bowlegged", "Extreme swelling", "Popping joint", "Snapping joint","Bowlegged", "Extreme swelling", "Popping joint", "Snapping joint"
    ]
    
    @IBOutlet weak var symptomCV: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return symptomItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "symptomCell", for: indexPath) as! symptomViewCell
        cell.textFieldView.text = symptomItems[indexPath.row]
        
        return cell
    }
    

    @IBOutlet weak var symptomVC: UICollectionView!
    @IBOutlet weak var dropDown: DropDown!
    override func viewDidLoad() {
        super.viewDidLoad()
        // The list of array to display. Can be changed dynamically
        symptomCV.delegate = self
        symptomCV.dataSource = self
        dropDown.optionArray = ["Eye", "Head", "Arm", "Neck"]
        //Its Id Values and its optional
        dropDown.optionIds = [1,23,54,22]
    }
}
