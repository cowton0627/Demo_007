//
//  WebViewController.swift
//  Demo_007
//
//  Created by 鄭淳澧 on 2021/7/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    private let semaphore = DispatchSemaphore(value: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWebView.navigationDelegate = self
        loadRequest()
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        onCallbackReceived()
//    }

    func loadRequest() {
        semaphore.wait() // will wait if another request is in progress
        let url = URL(string: "https://reurl.cc/eDR80x")!
        let request = URLRequest(url: url)
        
        DispatchQueue.main.async {
            self.myWebView.load(request)
        }

    }
    
    
    
    func onCallbackReceived() {
        guard let url = URL(string: "https://reurl.cc/eDR80x") else { return }
        let request = URLRequest(url: url)
//        DispatchQueue.main.async {
            self.myWebView.load(request)
//        }
    }

}


extension WebViewController: WKNavigationDelegate {
    // Called when the navigation finishes loading
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        // The page has fully loaded
        semaphore.signal() // signal completion
        print("Web page loaded successfully")
    }

    // Called when a navigation is received with a server redirect or some other reasons
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        semaphore.signal() // signal completion even if there's an error
        print("Failed to navigate with error: \(error.localizedDescription)")
        // Handle the error, perhaps show an alert or a placeholder view
    }
    // Called when a navigation fails to load
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print("Failed to load: \(error.localizedDescription)")
    }

    
}
