//
//  ViewController.swift
//  goodbye app
//
//  Created by siddharth sai on 1/22/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var input2: UITextField!
    
    @IBOutlet weak var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitBtnClick(_ sender: Any) {
        var name = input1.text!
        var name2 = input2.text!
        output.text = "GoodBye \(name)\(name2)!"
        
    }
}
    



