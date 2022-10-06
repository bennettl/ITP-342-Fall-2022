//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Bennett Lee on 10/5/22.
//

import UIKit

//struct Post {
//    let type: String
//}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

//    let posts = [Post]()
    
    let names = ["James", "Julie", "Kyle", "Samantha", "Juno"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(#function) \(indexPath)")
    }

    // How many sections to render
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    // How many rows to render for a given section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1_000_000
    }
    
    // For a given section and row, what is the cell to render
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Build the cell object and return it to the tableview
//        let cell = UITableViewCell()
 
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "MainCell")
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Main", for: indexPath)
        
//        let name = names[indexPath.row]
        
//        cell.textLabel?.text = name
        cell.textLabel?.text = "row \(indexPath.row)"
        cell.detailTextLabel?.text = "section \(indexPath.section)"
        
        
//        let post = posts[indexPath.row]
//
//        var cell: UITableViewCell!
//
//        if post.type == "Image"{
//            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "imageCell")
//        } else {
//            cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "VideoCell")
//        }
        
        return cell
        
    }

}

