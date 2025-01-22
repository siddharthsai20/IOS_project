//
//  ViewController.swift
//  HelloApp
//
//  Created by siddharth sai on 1/22/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        var name = input.text!
        output.text = "Hello \(name)"
        
    }
    
}

