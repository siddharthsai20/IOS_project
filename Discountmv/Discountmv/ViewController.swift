//
//  ViewController.swift
//  Discountmv
//
//  Created by siddharth sai on 3/20/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var amountol: UITextField!
    
    @IBOutlet weak var discountol: UITextField!
    
    var priceafterdiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func calcBtn(_ sender: Any) {
        
        //read the amount and convert its datatype to double ans assign it ro a variable
        var amount = Double(amountol.text!)
        
        
        
        //read the discount  and convert its datatype to double ans assign it ro a variable
        var discountrate = Double(discountol.text!)
        
        // calculate price after discount
        priceafterdiscount = amount!*( 1-discountrate!/100)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        var transitiom = segue.identifier
        if transitiom == "ResultSegue"
        {
            //create the destination as resultviewcontroller
            var destination = segue.destination as! ResultViewController
            
            //pass the data of amount ,discount and price afterdiscount
            destination.amount = amountol.text!
            destination.discount = discountol.text!
            destination.priceAfterDiscount = String(priceafterdiscount)
            
            
            
        }
        
    }
    
}

