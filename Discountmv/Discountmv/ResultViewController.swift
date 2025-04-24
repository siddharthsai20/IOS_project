//
//  ResultViewController.swift
//  Discountmv
//
//  Created by siddharth sai on 3/20/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    
    @IBOutlet weak var EnteredAmountol: UILabel!
    
    @IBOutlet weak var EnteredDiscountol: UILabel!
    
    @IBOutlet weak var PriceAfterDiscountol: UILabel!
    
    
    var amount =  ""
    var discount = ""
    var priceAfterDiscount = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EnteredAmountol.text = "Enter Amount ::  \(amount)"
        EnteredDiscountol.text = "Enter Discount ::  \(discount)"
        PriceAfterDiscountol.text = "Price After Discount ::  \(priceAfterDiscount)"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
