//
//  ViewController.swift
//  Bruh
//
//  Created by Jeff Algera on 7/28/20.
//  Copyright © 2020 Jeff Algera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]

        let rootView = RCTRootView(
            bundleURL: jsCodeLocation!,
            moduleName: "Bruh",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        self.view = rootView
    }


}

