//
//  ProfileImageViewController.swift
//  AudioDemo
//
//  Created by Bennett Lee on 11/2/22.
//

import UIKit

class ProfileImageViewController : UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
    }
    
    @IBAction func launchDidTapped(_ sender: UIButton) {
        // View Controller that will allow the user to either
        // 1) Select a picture from their photo library ***
        // 2) Take a picture with their camera
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        present(imagePicker, animated: true)
        
        
    }
    
    // Called when user selects a photo
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(#function)
        
        let image = info[.originalImage] as! UIImage
        mainImageView.image = image
        picker.dismiss(animated: true)
        

    }
    
    // Called when the user taps canceled
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print(#function)
        picker.dismiss(animated: true)
    }
}
