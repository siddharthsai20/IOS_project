//
//  ViewController.swift
//  vowelapp
//
//  Created by siddharth sai on 1/28/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Input: UITextField!
    
    @IBOutlet weak var Output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBtn(_ sender: Any) {
        var str:String = Input.text!
                
                var count:Int = 0
                
                for i in str{
                    
                    if(i == "a" || i == "e" || i == "i" || i == "o" || i == "u"){
                        
                        count += 1
                    }
                }
                
                Output.text = "Number of Vowels: \(count)"
                
            }
    }
    


