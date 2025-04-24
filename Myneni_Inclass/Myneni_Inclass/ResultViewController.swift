//
//  ResultViewController.swift
//  Myneni_Inclass
//
//  Created by siddharth sai on 3/27/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    var principal: Double = 0
    var rate: Double = 0
    var time: Double = 0
    var interest: Double {
        (principal * rate * time) / 100
    }
    
    @IBOutlet weak var Enteredprincipalol: UILabel!
    
    @IBOutlet weak var Enteredinterestol: UILabel!
    
    @IBOutlet weak var Enteredtimeol: UILabel!
    
    
    @IBOutlet weak var Calculatedinterestol: UILabel!
    
    @IBOutlet weak var Displayool: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
        
    }
    func updateUI() {
        Enteredprincipalol.text = String(format: "Principal: $%.2f", principal)
        Enteredinterestol.text = String(format: "Rate: %.2f%%", rate)
        Enteredtimeol.text = String(format: "Time: %.2f years", time)
        Calculatedinterestol.text = String(format: "Interest: $%.2f", interest)
                
                switch interest {
                case ..<100:
                    Displayool.image = UIImage(named: "low")
                case 100..<500:
                    Displayool.image = UIImage(named: "medium")
                default:
                    Displayool.image = UIImage(named: "high")
                }
            }
    // Image animation
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Displayool.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        UIView.animate(withDuration: 1.0) {
            self.Displayool.transform = .identity
        }
    }
    
    
    
}
