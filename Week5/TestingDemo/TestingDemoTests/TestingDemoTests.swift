//
//  TestingDemoTests.swift
//  TestingDemoTests
//
//  Created by Bennett Lee on 9/21/22.
//

import XCTest
@testable import TestingDemo

final class TestingDemoTests: XCTestCase {

    var quoteService: QuoteService!
    
    // Executed before each test
    override func setUp() {
        print("\(#function)")
        
        quoteService = QuoteService()
    }
    
    // Executed after each test
    override func tearDown() {
        
    }
    
    func testRemove(){
      
    }
    
    func testList(){
        
    }
    
    func helperMethod() {
        
    }
    
    // Unit Testing
    func testQuoteAdd(){
        // 1. Set up the context (get the environment ready)
        let quote = Quote(author: "Hello", message: "There")
        
        let numberOfQuotesBefore = quoteService.quotes.count
        
        // 2. Execute the functionality / method (try to limit to one operation)
        quoteService.addQuote(quote: quote)
        
        // 3. Asserting that the expected behavior matches the actual behavior
        let numberOfQuotesAfter = numberOfQuotesBefore + 1
        
        // One way to do an assertion
        XCTAssertEqual(numberOfQuotesAfter, quoteService.quotes.count)
        XCTAssertLessThan(numberOfQuotesBefore, quoteService.quotes.count)

        // Another way to an assertion
        let quoteAdded = quoteService.quotes[0]
        XCTAssertEqual(quoteAdded.message, quote.message)
        XCTAssertEqual(quoteAdded.author, quote.author)
    }
}
