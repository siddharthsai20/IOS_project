//
//  ViewController.swift
//  Myneni_Inclass
//
//  Created by siddharth sai on 3/27/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Input1ol: UITextField!
    
    
    @IBOutlet weak var Input2ol: UITextField!
    
    
    @IBOutlet weak var Input3ol: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var result = 0.0
    
    @IBAction func CalculateBtn(_ sender: UIButton)
    {
        guard let principalText = Input1ol.text, !principalText.isEmpty,
              let rateText = Input2ol.text, !rateText.isEmpty,
              let timeText = Input3ol.text, !timeText.isEmpty,
              let principal = Double(principalText),
              let rate = Double(rateText),
              let time = Double(timeText) else {
            showAlert(message: "Please enter valid numbers!")
            return
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultsegue" {
            let destVC = segue.destination as! ResultViewController
            destVC.principal = Double(Input1ol.text!) ?? 0
            destVC.rate = Double(Input2ol.text!) ?? 0
            destVC.time = Double(Input3ol.text!) ?? 0
        }
        
    }
   // Show alert for invalid inputs
               func showAlert(message: String) {
                   let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: "OK", style: .default))
                   present(alert, animated: true)
               }
    
}
