//
//  ViewController.swift
//  MadLibs
//
//  Created by Bennett Lee on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var verbTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    
    @IBOutlet weak var animalSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var favoriteNumberSlider: UISlider!
    
    @IBOutlet weak var happyEndingSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        containerView.isHidden = true
        
        // First Responder -> UI component that is first to respond to user interaction
        
        nameTextField.becomeFirstResponder()
    }
    
    @IBAction func nameReturnDidTapped(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func lessOrMoreDidTapped(_ sender: UISegmentedControl) {
        
        // Hide the container view
        if sender.selectedSegmentIndex == 0 {
            containerView.isHidden = true
            
        // Show the container view
        } else if sender.selectedSegmentIndex == 1 {
            containerView.isHidden = false
        }
    }
    
    @IBAction func backgroundDidTapped(_ sender: UIButton) {
        nameTextField.resignFirstResponder()
        cityTextField.resignFirstResponder()
        verbTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
    }
    
    @IBAction func sliderValueDidChanged(_ sender: UISlider) {
        
        numberLabel.text = "\(Int(sender.value))"
        
    }
    
    @IBAction func stepperDidTapped(_ sender: UIStepper) {
        //        numberOfPetsLabel.text =  "\(Int(sender.value + 0.5))"
        numberOfPetsLabel.text =  "\(Int(sender.value))"
    }
    
    @IBAction func createStoryDidTapped(_ sender: UIButton) {
                
        // At the age of 21, Bob took a trip to Austin with 3 pets in order to sing with a moose. Bob decided to buy 42. Now they live happily ever after
        
        let index = animalSegmentedControl.selectedSegmentIndex
        let animal = animalSegmentedControl.titleForSegment(at: index)!
        
        var story = "At the age of \(ageTextField.text!), \(nameTextField.text!) took a trip to \(cityTextField.text!) with \(Int(numberOfPetsStepper.value)) pets in order to \(verbTextField.text!) with a \(animal). \(nameTextField.text!) decided to buy \(Int(favoriteNumberSlider.value)). "
        
        if happyEndingSwitch.isOn {
            story += "Now they live happily ever after!"
        } else {
            story += "Things didn't turn out so well..."
        }
        
        // Present an alert to show the story
        let alert = UIAlertController(title: "The Story", message: story, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        // The story continues...with closures!!!
//        let yoloAction = UIAlertAction(title: "Yolo", style: .destructive, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
//        alert.addAction(yoloAction)

        present(alert, animated: true)
        
        print(story)
    }
    
}

