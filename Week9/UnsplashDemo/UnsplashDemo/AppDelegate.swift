//
//  AppDelegate.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 10/19/22.
//

import UIKit


// Event Loop -> Infinite while loop that keeps runnning
// Listen for user events and process your code in the main thread
// User events -> shaking the device, tapping, scrolling, location change, accelerometer

// Speed of your code
// In memory -> fast
// Disk operations -> is slow
// Network operations -> extremely slow

// Disk operations & network operations are doing in a background context / thread to avoid blocking the event loop from processing user events


// Golden rules of threading and concurrency

// 1. Long running operations, do in background thread
// 2. UI work, do in main thread

// Two frameworks to manage concurrency in iOS
// 1. Grand Central Dispatch
// - Easy, Functional way to run code in different threads

// 2. Operation queues
// - Object oriented approach to manage concurreny work

// 3. Actors

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        return false
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Run something for a very long time (e.g. track user location while in background)
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }
    
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

