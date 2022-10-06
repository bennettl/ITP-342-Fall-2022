//
//  QuotesViewController.swift
//  RandomQuote
//
//  Created by Bennett Lee on 10/5/22.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteService.shared.numberOfQuotes()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath)
        
        let quote = QuoteService.shared.get(at: indexPath.row)
        
        cell.textLabel?.text = quote?.message
        cell.detailTextLabel?.text = quote?.author
        
        return cell
    }

}
