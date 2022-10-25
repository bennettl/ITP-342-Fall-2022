//
//  WebViewController.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 10/24/22.
//

import UIKit
import WebKit

class WebViewController : UIViewController, WKNavigationDelegate {

    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    @IBOutlet weak var webView: WKWebView!
    
    
    // When webview starts loading HTTP Request
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinner.startAnimating()
    }
    
    // When webview finishes render
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinner.stopAnimating()
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        // Load url into webview
        let request = URLRequest(url: URL(string: "https://www.apple.com")!)
        webView.load(request)
    }
}
