//
//  ViewController.swift
//  FirebaseDemo
//
//  Created by Bennett Lee on 11/9/22.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        if let currentUser = Auth.auth().currentUser {
//            self.performSegue(withIdentifier: "mainSegue", sender: nil)
//        }
    }

    @IBAction func signupDidTapped(_ sender: UIButton) {
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        // SDK -> Software development kit
        // Interacting with an API using the native language of the platform
        Auth.auth().createUser(withEmail: email, password: password, completion: { (result, error) in
            
            // Create a document in Firestore with the uid and email from Firebase Auth
            Firestore.firestore().collection("users").document(result!.user.uid).setData([
                    "email": email
                ])

            // If there are no errors, show the authenticated page
            if error == nil{
                self.performSegue(withIdentifier: "mainSegue", sender: nil)
            }
        })
    }
    
    @IBAction func loginDidTapped(_ sender: UIButton) {
        
        let email = emailTextField.text!
        let password = passwordTextField.text!
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error == nil {
                self.performSegue(withIdentifier: "mainSegue", sender: nil)
            }
        }
    }
    
}





//// Read
//// Access our "justin" document in our "users" collection
//let ref = Firestore.firestore().collection("users").document("justin")
//ref.getDocument { (snapshot, error) in
//    if let snapshot {
//        print("document id \(snapshot.documentID)")
//        let data = snapshot.data()
//        print("document data \(data)")
//
//    }
//}
//
//// Write: Create a document in firebase
//let bobRef = Firestore.firestore().collection("users").document("bob")
//
//// Overwrites any existing document or creates
//        bobRef.setData(["field1": "a" , "field2": "b"])
//
//// Updates fields that are specified
//bobRef.updateData(["field2": "c"])
//bobRef.addSnapshotListener { (snapshot, error) in
//    if let snapshot {
//        print("document id \(snapshot.documentID)")
//        let data = snapshot.data()
//        print("document data \(data)")
//
//    }
//}
//
//// Update a document in firebase
//
//// Create a new document using push keys to prevent conflicting identifiers
////        Firestore.firestore().collection("user").addDocument(data: ["firstName": "Aimee" ])
//
//// Do any additional setup after loading the view.
