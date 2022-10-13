//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by Bennett Lee on 10/12/22.
//

import UIKit

let IS_LIGHT_MODE = "isLightMode"

/**
 User Defaults

 Pros
 - Easy & simple to use
 - Can store Swift primitive types (Int, String, Bool, Float, Double, Array, Dictionary)

 Cons
 - No advance capabilities (i.e. searching, filtering, aggregating)
 - Cannot store custom defined types
 - NOT a place to store sentitive data
 - NOT a place to store lots of information
 
 **/

struct Quote : Codable {
    let message: String
}

class ViewController: UIViewController {

    @IBOutlet weak var mainSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Get
        let isLightMode = UserDefaults.standard.bool(forKey: IS_LIGHT_MODE)
        
        updateBackground(with: isLightMode)
        
        mainSwitch.isOn = isLightMode
        
        // How to save data in documents folder
        
        // 1. Need to find the path to save to
        let documentFolderPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        // "/path/to/documents/directory/filename.txt"
        let fileUrl = documentFolderPath.appendingPathComponent("filename.txt")
        
        // 2. Writing data to that path
        
        let data = "Save this piece of information"
        
//        do {
//            try data.write(to: fileUrl, atomically: true, encoding: .utf8)
//        } catch {
//            print("error \(error)")
//        }
        
        let quote = Quote(message: "This is a quote")
        
        // Objective is to convert our quote object into JSON
        let encoder = JSONEncoder()
        
        do {
            let data = try encoder.encode(quote)
            let string = String(data: data, encoding: .utf8)!
            
            try string.write(to: fileUrl, atomically: true, encoding: .utf8)
        } catch {
            print("error \(error)")
        }
//        print("urls \(urls)")
    }
        
    @IBAction func switchDidTapped(_ sender: UISwitch) {
        // Set
        UserDefaults.standard.set(sender.isOn, forKey: IS_LIGHT_MODE)
    
        updateBackground(with: sender.isOn)
    }
    
    func updateBackground(with isLightMode: Bool){
        if isLightMode {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
}

