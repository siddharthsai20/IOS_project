//
//  ResultViewController.swift
//  Tableviewdemo
//
//  Created by siddharth sai on 4/8/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var Displaylabel: UILabel!
    
    
    var product:Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Displaylabel.text = " The product \((product?.productname)!) and its description is \((product?.productDescription)!)"
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
