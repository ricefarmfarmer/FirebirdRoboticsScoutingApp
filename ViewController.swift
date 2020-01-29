//
//  ViewController.swift
//  Firebird Robotics Scouting App
//
//  Created by Branden Yang on 3/20/19.
//  Copyright © 2019 Branden Yang. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func loadView() {
        super.loadView()
        
        webView = WKWebView()
        
        var webFrame = self.container.frame
        webFrame.origin.x = 0
        webFrame.origin.y = 0
        let config = WKWebViewConfiguration()
        
        webView = WKWebView(frame: webFrame, configuration: config)
        webView.navigationDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"http://www.firebirdrobotics.com/scouting")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        webView.allowsBackForwardNavigationGestures = true
    }

}

