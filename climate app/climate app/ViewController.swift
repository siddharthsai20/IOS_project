//
//  ViewController.swift
//  climate app
//
//  Created by siddharth sai on 1/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var displayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        
        //read the temprature
        //convert string to int or double
        
        //check whether is cold or hot
        
        //temprature>60 then display it is hot or it is cold
        var temp = inputOL.text!
                
        //convert string to int or double
        let temperature = Int(temp)!
                
                if(temperature > 60){
                    displayOL.text = "it is hot outside.🔥☀️"
                    imageViewOL.image = UIImage(named: "hot")
                }
                else{
                    displayOL.text = "it is cold outside. ❄️"
                    imageViewOL.image = UIImage(named: "cold")
                }
         
    }
    
}

