//
//  QuoteService.swift
//  RandomQuote
//
//  Created by Bennett Lee on 9/28/22.
//

import Foundation


// To manage our quotes
class QuoteService {
    
    static let shared = QuoteService()
    
    private var quotes = [
        Quote(author: "William Shakespeare", message: "To be or not to be 🤔"),
        Quote(author: "NBC (1990s)", message: "The more you know"),
        Quote(author: "Vine (10 years ago)", message: "What we learn"),
        Quote(author: "Nolan Chen", message: "It is what it is"),
        Quote(author: "Master Oogway 🐢", message: "Your mind is like water"),
    ]
    
   
    // Create
    func create(quote: Quote){
        quotes.append(quote)
    }
    
    // Read
    
    func numberOfQuotes () -> Int {
        return quotes.count
    }
    
    func get(at index: Int) -> Quote? {
        // Data Validation, protect against out of bounds errors
        if index < 0 || index >= quotes.count {
            return nil
        }
        
        return quotes[index]
    }
    
    func getRandomQuote () -> Quote? {
        if quotes.isEmpty {
            return nil
        }
        
        let randomIndex = Int.random(in: 0..<quotes.count)
        
        return quotes[randomIndex]
    }
    
    // Update
    
    func update(quote: Quote, at index: Int){
        // Todo Data Validation
        
        quotes[index] = quote
    }
    
    // Delete
    
    func delete(at index: Int){
        // Todo Data Validation

        quotes.remove(at: index)
        
    }
    
}

