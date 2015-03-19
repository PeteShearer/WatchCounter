//
//  InterfaceController.swift
//  WatchCounter WatchKit Extension
//
//  Created by Peter Shearer on 3/18/15.
//  Copyright (c) 2015 Peter Shearer. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var displayLabel: WKInterfaceLabel!
    var counter = 0

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        updateMessage()
    }

    @IBAction func buttonWasPressed() {
        counter++;
        updateMessage()
    }
    
    func updateMessage() {
        var message = "Pressed:\(counter) time(s)"
        displayLabel.setText(message)
    }
}
