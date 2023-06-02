//
//  ViewController.swift
//  DemoApp
//
//  Created by Christina Campbell on 6/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeText: UILabel!
    
    @IBOutlet weak var helloText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welcomeText.text = "Welcome Christina!"
    }

}

