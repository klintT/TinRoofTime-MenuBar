//
//  StatusMenuController.swift
//  tinrooftime-menubar
//
//  Created by Klint Thrasher on 6/3/16.
//  Copyright © 2016 Klint Thrasher. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var Menu: NSMenu!
    @IBOutlet weak var mainWebView: MainWebView!
    var timeMenuItem: NSMenuItem!
    
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-1)
    
    @IBAction func quitButtonClicked(sender: AnyObject) {
        NSApplication.sharedApplication().terminate(self)
    }
    
    override func awakeFromNib() {
        statusItem.title = "TinRoof Time"
        statusItem.menu = Menu
        
        timeMenuItem = Menu.itemWithTitle("TinRoof Time")
        timeMenuItem.view = mainWebView
        
        self.mainWebView.draw();
    }
}
