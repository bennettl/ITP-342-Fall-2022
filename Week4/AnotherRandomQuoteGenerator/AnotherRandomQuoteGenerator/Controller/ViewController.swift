//
//  ViewController.swift
//  AnotherRandomQuoteGenerator
//
//  Created by Bennett Lee on 9/14/22.
//

import UIKit


// Step 1: Conform to the protocol of the delegate
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mainTextField: UITextField!
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    
    @IBOutlet weak var sumLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        mainTextField.delegate = self
       
        
//        UIApplication.shared.
//        FileManager.default
        
    }

    // Step 2: Implement the methods we want to subscribe to
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("\(#function)")
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("\(textField.text?.uppercased())")
    }
    
    @IBAction func addDidTapped(_ sender: UIButton) {
        let firstNumber = Int(firstNumberTextField.text!)!
        let secondNumber = Int(secondNumberTextField.text!)!
        let result = add(firstNumber: firstNumber, with: secondNumber)
        sumLabel.text = "\(result)"
    }
    
    func add(firstNumber: Int, with secondNumber: Int) -> Int{
        let result = firstNumber - secondNumber
        return result
    }
}

