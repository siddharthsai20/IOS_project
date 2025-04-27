//
//  ViewController.swift
//  Word Guess App
//
//  Created by siddharth sai on 2/13/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayOL: UILabel!
    @IBOutlet weak var hintOL: UILabel!
    @IBOutlet weak var inputOL: UITextField!
    @IBOutlet weak var checkOL: UIButton!
    @IBOutlet weak var messageOL: UILabel!
    @IBOutlet weak var playagainOL: UIButton!
    
    
    
    
    
    var words = [["SWIFT", "Programming Language"],
                 ["DOG", "Animal"],
                 ["CYCLE", "Two wheeler"],
                 ["MACBOOK", "Apple device"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //check button should be disabled
        checkOL.isEnabled = false
                word = words[count][0]
                
                displayOL.text = ""
                for letter in word {
                    displayOL.text!.append(" _")
                }
                hintOL.text = "Hint: " + words[count][1]
        messageOL.text = ""
    }
    
    
    @IBAction func checkBtnClick(_ sender: Any) {
        
        //Get the text from the text field.
        var letters = inputOL.text!
                lettersGuessed += letters
                var newDisplay = ""
                for letter in word {
                    if lettersGuessed.contains(String(letter)) {
                        newDisplay += "\(letter)"
                    } else {
                        newDisplay += "_ "
                    }
                }
                displayOL.text = newDisplay
        inputOL.text = ""
                
                if displayOL.text?.contains("_") == false {
                    playagainOL.isHidden = false
                    checkOL.isEnabled = false
                }
         
             
                    
    }
    
    
    
    @IBAction func playAgainBtnclick(_ sender: Any) {
        playagainOL.isHidden = true
               displayOL.text = ""
               count += 1
               lettersGuessed = ""
               if count == words.count {
                   messageOL.text = "Congratulations! You Win!"
                   hintOL.text = ""
               }
               else{
                   word = words[count][0]
                   hintOL.text = "Hint: " + words[count][1]
                   checkOL.isEnabled = true
                   
                   displayOL.text = ""
                   updateUnderscores()
               }
    }
    
    
    @IBAction func letterEntered(_ sender: Any) {
        
        var letters = inputOL.text!
        letters = String(letters.last ?? " ")
        inputOL.text = letters
                
                if letters.isEmpty{
                    checkOL.isEnabled = false
                } else {
                    checkOL.isEnabled = true
                }
            }
            
            //To update the underscores in displayLabel based on the number of letters
            func updateUnderscores(){
                    for letter in word{
                        displayOL.text! += "_ "
                    }
                }
            
    }
    


