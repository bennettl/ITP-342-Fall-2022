//
//  QuotesViewController.swift
//  RandomQuote
//
//  Created by Bennett Lee on 10/5/22.
//

import UIKit

class QuotesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuoteService.shared.numberOfQuotes()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Created the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuoteCell", for: indexPath)
        
        let quote = QuoteService.shared.get(at: indexPath.row)
        
        // Configure the cell
        cell.textLabel?.text = quote?.message
        cell.detailTextLabel?.text = quote?.author
        
        // Return the cell
        return cell
    }
    
    @IBAction func editButtonDidTapped(_ sender: UIBarButtonItem) {
        print("\(#function)")
        
        // If the tableview is already in edit mode, turn off editing mode
        if tableView.isEditing {
            tableView.isEditing = false
            sender.title = "Edit"
        } else {
            tableView.isEditing = true
            sender.title = "Done"
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // Allow deletion
        if editingStyle == .delete {
            
            // Remove the item from the underlying data source
            QuoteService.shared.delete(at: indexPath.row)
            
            // Animate the cell out of the user interface
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
        
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Properties of a sugue
        // 1. destination: UIViewController
        // 2. source: UIViewController
        // 3. identifier: String
        
        // This method is how you pass data from your source view controller to destination view controller
        let newQuoteViewController = segue.destination as! NewQuoteViewController
        
        newQuoteViewController.completion = { () -> Void in
            
            // Refresh the table view
            self.tableView.reloadData()
        }
        
    }
}
