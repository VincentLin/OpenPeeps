//
//  ViewController.swift
//  OpenPeeps
//
//  Created by Vincent Lin on 07/23/2020.
//  Copyright © 2020 Vincent Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet var elementScrollView: [UIScrollView]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func elementSelected(_ sender: UISegmentedControl) {
        elementScrollView.forEach {
               $0.isHidden = true
            }
        elementScrollView[sender.selectedSegmentIndex].isHidden = false
    }
    
    @IBAction func headPressed(_ sender: UIButton) {
        headImageView.image = sender.currentBackgroundImage
    }
    
    @IBAction func facePressed(_ sender: UIButton) {
        faceImageView.image = sender.currentBackgroundImage
    }
}

