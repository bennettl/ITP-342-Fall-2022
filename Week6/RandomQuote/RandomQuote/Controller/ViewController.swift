//
//  ViewController.swift
//  RandomQuote
//
//  Created by Bennett Lee on 9/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func randomQuoteDidTapped(_ sender: UIButton) {
        updateUI()
    }
    
    func updateUI(){
        let quote = QuoteService.shared.getRandomQuote()
        messageLabel.text = quote?.message
        authorLabel.text = quote?.author
    }


}

