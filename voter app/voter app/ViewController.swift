//
//  ViewController.swift
//  voter app
//
//  Created by siddharth sai on 1/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputol: UITextField!
    
    @IBOutlet weak var imageview: UIImageView!
    
    @IBOutlet weak var outputol: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitbtn(_ sender: Any) {
        var age:Int = Int(inputol.text!)!
       
       if age >= 18 {
           outputol.text = "you are eligible to vote"
           imageview.image = UIImage(named: "eligible")
       }
       else{
           outputol.text = "you are not eligible to vote"
           imageview.image = UIImage(named: "not eligible")
       }

    }
    
}
