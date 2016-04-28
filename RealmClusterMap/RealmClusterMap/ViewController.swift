//
//  ViewController.swift
//  RealmClusterMap
//
//  Created by Ben Peters on 2016-04-23.
//  Copyright © 2016 Orange Chips. All rights reserved.
//

import UIKit
import RealmSwiftSFRestaurantData
import RealmMapView
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet var mapView: RealmMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var config = Realm.Configuration.defaultConfiguration
        config.path = ABFRestaurantScoresPath()
        self.mapView.realmConfiguration = config
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

