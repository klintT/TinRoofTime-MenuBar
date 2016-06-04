//
//  MainWebView.swift
//  tinrooftime-menubar
//
//  Created by Klint Thrasher on 6/3/16.
//  Copyright © 2016 Klint Thrasher. All rights reserved.
//

import Cocoa
import WebKit

class MainWebView: NSView {
    @IBOutlet weak var webView: WebView!
    
    func draw() {
        let url = NSURL (string: "http://time.tinroofsoftware.com");
        let requestObj = NSURLRequest(URL: url!);
        webView.mainFrame.loadRequest(requestObj);
    }
    
}
