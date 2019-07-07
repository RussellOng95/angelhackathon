//
//  DoctorViewController.swift
//  angelhackathon
//
//  Created by Russell Ong on 7/7/19.
//  Copyright © 2019 Russell Ong. All rights reserved.
//

import UIKit

class DoctorViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet var doctorCollectionView: UICollectionView!
    
    var cellArray: [UIImage] = []
    var textOne: [String] = ["Ambulance", "Car", "Van", "Helicopter"]
    var textTwo: [String] = ["Available: 5","Available: 5","Available: 5","Available: 5"]
    var textThree: [String] = ["XX","XX","XX","XX"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "doctorCell", for: indexPath) as! DoctorViewCell
        cell.picImageCell.image = cellArray[indexPath.row]
        cell.typeTextView.text = textOne[indexPath.row]
        cell.levelTextView.text = textTwo[indexPath.row]
        cell.symptomsTextView.text = textThree[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        doctorCollectionView.delegate = self
        doctorCollectionView.dataSource = self
        cellArray.append(UIImage(named: "injury")!)
        cellArray.append(UIImage(named: "injury")!)
        cellArray.append(UIImage(named: "injury")!)
        cellArray.append(UIImage(named: "injury")!)


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
