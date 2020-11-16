//
//  ExploreViewController.swift
//  How to create Custom Alerts iOS Swift
//
//  Created by Akshansh Thakur on 16/11/20.
//

import UIKit

class ExploreViewController: UIViewController {

    @IBOutlet weak var contextView: UIView!
    
    @IBAction func alertActionMethod(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contextView.transform = CGAffineTransform.init(translationX: 0.0, y: 1000.0)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userTapped(_:)))
        
        view.addGestureRecognizer(tapGesture)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 0.5) {
            self.contextView.transform = .identity
        }
        
    }
    
    @objc func userTapped(_ sender: UITapGestureRecognizer) {
        let tapLocation = sender.location(in: view)
        
        if !contextView.frame.contains(tapLocation) {
            dismiss(animated: true, completion: nil)
        }
        
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
