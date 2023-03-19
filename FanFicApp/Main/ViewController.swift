//
//  ViewController.swift
//  FanFicApp
//
//  Created by khasan on 13.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func segmentOutlet(_ sender: Any) {
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Tabbar")
        self.navigationController?.pushViewController(vc, animated: false )
        self.view.bringSubviewToFront(loginSegmentView)
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(loginSegmentView)
        case 1:
            self.view.bringSubviewToFront(registerSegmentView)
        default:
            break
        }
        
    
    }
    
}

