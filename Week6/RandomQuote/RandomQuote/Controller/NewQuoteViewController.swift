//
//  NewQuoteViewController.swift
//  RandomQuote
//
//  Created by Bennett Lee on 10/10/22.
//

import UIKit


class NewQuoteViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var authorTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    var completion: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        submitButton.isEnabled = false
        
        authorTextField.becomeFirstResponder()
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        submitButton.isEnabled = !messageTextField.text!.isEmpty && !authorTextField.text!.isEmpty
        
        print("\(#function)")
    }
    
    @IBAction func submitDidTapped(_ sender: UIButton) {
        guard let author = authorTextField.text,
                let message = messageTextField.text else {
            return
        }
        // In the future, we should apply validation
        
        // Create quote
        let quote = Quote(author: author,message: message)
        
        QuoteService.shared.create(quote: quote)
        
        // Dismiss the currently presented view controller
        dismiss(animated: true)
        
        // Execute the completion closure when it's all done
        completion?()
        
    }
    
    
}
