//
//  ViewController.swift
//  Gestures
//
//  Created by Bennett Lee on 9/26/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // When the user taps on the blue view, it becomes green
        // Create a gesture recognizer for our blue view
        
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(userDidSingleTapped(_:)))
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(userDidDoubleTapped(_:)))
        doubleTap.numberOfTapsRequired = 2
        
        singleTap.require(toFail: doubleTap)
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(userDidSwipe(_:)))
        swipe.direction = .right
        
        blueView.addGestureRecognizer(singleTap)
        blueView.addGestureRecognizer(doubleTap)
        blueView.addGestureRecognizer(swipe)

    }
    
    // Define a method that will respond to a guesture being recognized
    @objc func userDidSwipe(_ tap: UISwipeGestureRecognizer){
        print("\(#function)")
        blueView.backgroundColor = .yellow
    }
    
    // Define a method that will respond to a guesture being recognized
    @objc func userDidSingleTapped(_ tap: UITapGestureRecognizer){
        print("\(#function)")
        blueView.backgroundColor = .green
    }
    
    // Define a method that will respond to a guesture being recognized
    @objc func userDidDoubleTapped(_ tap: UITapGestureRecognizer){
        print("\(#function)")
        blueView.backgroundColor = .orange
       
    }


}

