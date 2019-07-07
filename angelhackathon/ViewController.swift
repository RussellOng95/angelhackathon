//
//  ViewController.swift
//  angelhackathon
//
//  Created by Russell Ong on 6/7/19.
//  Copyright © 2019 Russell Ong. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    var cellArray: [UIImage] = []
    var vehTypeArray: [String] = ["Ambulance", "Car", "Van", "Helicopter"]
    var availStatusArray: [String] = ["Available: 5","Available: 5","Available: 5","Available: 5"]
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var resourcesViewController: UICollectionView!

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "assetCell", for: indexPath) as! CollectionViewCell
        cell.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tap(_:))))
        cell.iconImageView.image = cellArray[indexPath.row]
        cell.vehTypeTextView.text = vehTypeArray[indexPath.row]
        cell.availTextView.text = availStatusArray[indexPath.row]
        return cell
        
    }
    
    @objc func tap(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: self.resourcesViewController)
        let indexPath = self.resourcesViewController.indexPathForItem(at: location)
        
        if indexPath != nil {
            if indexPath?.row == 0 {
                let initialLocation = CLLocation(latitude: 1.3022017, longitude: 103.7707232)
                centerMapOnLocation(location: initialLocation)
            }
            if indexPath?.row == 1 {
                let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
                centerMapOnLocation(location: initialLocation)
            }
            if indexPath?.row == 2 {
                let initialLocation = CLLocation(latitude: 1.2839687, longitude: 103.8493508)
                centerMapOnLocation(location: initialLocation)
            }
            if indexPath?.row == 3 {
                let initialLocation = CLLocation(latitude: 1.2913601, longitude: 103.8555262)
                centerMapOnLocation(location: initialLocation)
            }
        }
    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
            latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resourcesViewController.delegate = self
        resourcesViewController.dataSource = self
        cellArray.append(UIImage(named: "ambulance")!)
        cellArray.append(UIImage(named: "car")!)
        cellArray.append(UIImage(named: "sedan")!)
        cellArray.append(UIImage(named: "helicopter")!)
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(location: initialLocation)


    }


}

