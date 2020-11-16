//
//  ViewController.swift
//  How to create Custom Alerts iOS Swift
//
//  Created by Akshansh Thakur on 16/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func exploreButtonClicked() {
        
        let exploreController = storyboard?.instantiateViewController(withIdentifier: "ExploreViewController") as! ExploreViewController
        
        present(exploreController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

