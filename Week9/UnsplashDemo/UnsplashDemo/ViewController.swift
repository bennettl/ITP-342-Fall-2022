//
//  ViewController.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 10/19/22.
//

// Framework , library , dependency, package
// Collection of classes, protocols, structures that fall under a common domain
// Other people's code that we can import and reuse

import UIKit
import Kingfisher

struct UnsplashUrl : Codable {
    let raw: String
    
    let full: String
}

struct Photo: Codable {
    let id : String
    
    let created_at: String
    
    let width: Int
    
    let height: Int
    
    let alt_description: String?
    
    let urls: UnsplashUrl
}

/*
{
"id": "g8UWwOZFDf8",
"created_at": "2022-10-05T21:57:55Z",
"updated_at": "2022-10-19T04:32:47Z",
"promoted_at": "2022-10-06T05:48:32Z",
"width": 6000,
"height": 4000,
"color": "#c0a6c0",
"blur_hash": "L7L4N.t8--^+%Ne[Icof03srM{ou",
"description": "3D render (Blender 3.2)",
"alt_description": null,
"urls": {
    "raw": "https://images.unsplash.com/photo-1665006962810-d20a0244e576?ixid=MnwzNzMwODV8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NjYyMzE4OTM&ixlib=rb-4.0.3",
    "full": "https://images.unsplash.com/photo-1665006962810-d20a0244e576?crop=entropy&cs=tinysrgb&fm=jpg&ixid=MnwzNzMwODV8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NjYyMzE4OTM&ixlib=rb-4.0.3&q=80",
    "regular": "https://images.unsplash.com/photo-1665006962810-d20a0244e576?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNzMwODV8MHwxfHJhbmRvbXx8fHx8fHx8fDE2NjYyMzE4OTM&ixlib=rb-4.0.3&q=80&w=1080",
    ...
    
    */

class ViewController: UIViewController {
    
    private let BASE_URL = "https://api.unsplash.com"
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Goal is to make an HTTP GET request to Unsplash's API to get a random photo
        // Foundation's networking library
        
        // String --> URL --> URLRequest (HTTP verbs)
        let url = URL(string: "\(BASE_URL)/photos/random")!
        var request = URLRequest(url: url)

        // Add http header in our url request for authentication
        request.addValue("Client-ID EQZCQ19_m8bVKeoWtPAtKnuprrpoY-1hKnHSAkDL4HQ", forHTTPHeaderField: "Authorization")
        
        // Synchronus programming
        print("step 0")
        print("step 1")
        print("step 2")

        // Put URLRequest through a URLSesssion Task to execute the request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print("step 3")

            // Ok we got back a Data object....but how do work with that?
            
            do {
                let decoder = JSONDecoder()
                let photo = try decoder.decode(Photo.self, from: data!)
                print(photo.urls.full)
                
                self.loadIntoImageView(url: photo.urls.full)
//                self.loadIntoImageViewSimple(url: photo.urls.full)
                // Convert 0&1s to JSON to Native swift object so we can use it via dot notation
//                print(response)
            } catch {
                print(error)
            }
        }
        
        // Run the task
        task.resume()
        
        print("step 4")
        
    }
    
//    func loadIntoImageViewSimple(url: String) {
//        DispatchQueue.main.async {
//            self.imageView.kf.setImage(with: URL(string: url)!)
//        }
//    }
    
    // Given a url, load the contents of the image into an image view
    func loadIntoImageView(url: String) {
        
        // Execute the downloading of an image in a background thread
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: URL(string: url)!)
                
                // Execute updating the user interface in main thread
                DispatchQueue.main.async {
                    let image = UIImage(data: data)
                    self.imageView.image = image
                }
            } catch{
                print(error)
            }
        }
       
    }

}

