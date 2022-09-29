//
//  ViewController.swift
//  Animations
//
//  Created by Bennett Lee on 9/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 1. Add a tap guesture recognizer to blue view, to execute some code when the user taps on the view
        
        // 2. Perform the animation to move the view from the top left to bottom right
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(userDidTapped(_:)))
        
        blueView.addGestureRecognizer(tap)
        
    }
    
    @objc func userDidTapped(_ tap: UITapGestureRecognizer) {
      
        print("\(#function)")

        // 2. Perform the animation to move the view from the top left to bottom right
        
        // Simple one time animation
//        let animator = UIViewPropertyAnimator(duration: 1.0, curve: UIView.AnimationCurve.easeInOut, animations: { () -> Void in
//            // Indicate our target / end state of the view(s)
//            self.blueView.backgroundColor = UIColor.green
//
//            let center = CGPoint(x: self.blueView.center.x + 100, y: self.blueView.center.y + 100)
//            self.blueView.center = center
//        })
    
//        animator.startAnimation()
        
        // 1. First animate from top left to bottom right, after that animation completes, animate back to top left
        
        let animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut) {
            // Indicate our target / end state of the view(s)
            self.blueView.backgroundColor = UIColor.green

            let prevX = self.blueView.center.x
            let prevY = self.blueView.center.y
            let center = CGPoint(x: prevX + 100, y: prevY + 100)
            self.blueView.center = center
        }
        
        // Pass it a block of code to indicate what to execute when the animation finishes
        let originalCenter = blueView.center
        let originalColor = blueView.backgroundColor
        
        animator.addCompletion { _ in
            print("animation completed")
            
            // Perform another animation back to original state
            let animator2 = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut) {
                self.blueView.center = originalCenter
                self.blueView.backgroundColor = originalColor
            }
            animator2.startAnimation()
        }
        
//        animator.addCompletion(completion: { position -> Void in
//
//        })
        
        animator.startAnimation()
    }
    


}

