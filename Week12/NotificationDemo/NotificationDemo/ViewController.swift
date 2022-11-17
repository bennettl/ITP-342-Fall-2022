//
//  ViewController.swift
//  NotificationDemo
//
//  Created by Bennett Lee on 11/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Producer - emits an event
        NotificationCenter.default.post(
            name: NSNotification.Name("SomethingHappend"), object: nil
        )
        
        // Observer - subscribes to an event and invokes a method in response to event
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.somethingHappendDidFired),
            name: NSNotification.Name("SomethingHappend"),
            object: nil
        )
    }
    
    @objc func somethingHappendDidFired() {
        
    }


}

