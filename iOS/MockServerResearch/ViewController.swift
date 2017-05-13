//
//  ViewController.swift
//  MockServerResearch
//
//  Created by HungNguyen on 5/7/17.
//  Copyright © 2017 Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        viewModel = ViewModel()
        viewModel?.requestHello()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

