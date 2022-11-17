//
//  ViewController.swift
//  PickerDemo
//
//  Created by Bennett Lee on 11/7/22.
//

import UIKit


// If you want to detect orientation, monitor orientation changes, detect shake events --> UIKIt has got you covered

// For all other motion events (e.g. accelerometer, gyroscope) go to Core Motion

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let schools = ["USC", "UCB", "UCSF"]
    
    @IBOutlet weak var schoolPicker: UIPickerView!
    
    @IBOutlet weak var mainDatePicker: UIDatePicker!
    
//    override var canBecomeFirstResponder: Bool {
//        return true
//    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        motion == .motionShake
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        UIDevice.current.orientation == .landscapeRight
        
        // 30 days in the future
//        Date(timeIntervalSince1970: <#T##TimeInterval#>)
        // TimeInterval unit of measure is in seconds
        // 60 seconds * 60 minutes * 24 hours * 30 days
        let monthFromToday = Date(timeIntervalSinceNow: 60 * 60 * 24 * 30 )
        mainDatePicker.date = monthFromToday
    }


    @IBAction func getSelectedSchoolDdiTapped(_ sender: UIButton) {
        // Get selected school
        let index = schoolPicker.selectedRow(inComponent: 0)
        let school = schools[index]
        
        print("\(#function) \(school)")
    }
    
    
    @IBAction func getSelectedTimeDidTapped(_ sender: UIButton) {
        
        let date = mainDatePicker.date
        
        // Relative to Jan 1st, 1970, aka birth of Unix
        // Unix timestamp
//        print(date.timeIntervalSince1970)
        
        // Relative to current time
//        date.timeIntervalSinceNow
    }
    
    // UIPickerViewDataSource
    
    // Component == Column in a picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schools.count
    }
    
    // UIPickerViewDelegate

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return schools[row]
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//
//    }
    

}

