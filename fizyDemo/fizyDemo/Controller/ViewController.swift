//
//  ViewController.swift
//  fizyDemo
//
//  Created by Aleyna Yerlikaya on 14.04.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        phoneButton.backgroundColor = .white
        googleButton.layer.cornerRadius = 1
        googleButton.layer.borderWidth = 1
        googleButton.layer.borderColor = UIColor.white.cgColor
    }
    
    
    @IBAction func phoneAction(_ sender: Any) {
    }
    
    
    @IBAction func googleAction(_ sender: Any) {
    }
    
}

