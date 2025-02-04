//
//  ViewController.swift
//  Initials app
//
//  Created by siddharth sai on 1/30/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputol: UITextField!
    
    
    @IBOutlet weak var inputol2: UITextField!
    
    @IBOutlet weak var DisplayOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitBtn(_ sender: Any) {
        // read the firstname and store in var fname
        var fname = inputol.text!
        // read the lastname and store in var lname
        var lname = inputol2.text!
        // we need to get the first letter of first name ,first letter of  last name
        // inbuilt function is avilable in swift
        var firstinitial = fname.prefix(1).uppercased()
        var lastinitial = lname.prefix(1).uppercased()
        //display result in displayol
        DisplayOL.text = "your initials are : \(firstinitial). \(lastinitial)."
        
    }
    
}

