//
//  ViewController.swift
//  Connections
//
//  Created by Bennett Lee on 9/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetLabel.text = "Hey everyone"

    }

    @IBAction func sayHiDidTapped(_ sender: UIButton) {
        greetLabel.text = "Hi"
        sender.backgroundColor = UIColor.green
    }
    
}

