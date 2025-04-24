//
//  ViewController.swift
//  Myneni_WordGuess
//
//  Created by siddharth sai on 3/5/25.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var playAgainBtn: UIButton!
    @IBOutlet weak var guessLetterBtn: UIButton!
    
    
    let WordBank = [
         ["OCEAN", "Large body of saltwater", "ocean"],
         ["ECLIPSE", "Celestial event where one body covers another", "eclipse"],
         ["RIVER", "Flowing body of water", "river"],
         ["GIRAFFE", "Tallest land animal", "giraffe"],
         ["PIRATE", "Person who robs ships", "pirate"]
     ]
    
    
              var currentWordPosition = 0
              var targetWord = ""
              var guessedLetters = ""
              let maxAllowedMistakes = 10
              var incorrectGuesses = 0
              var totalWordsGuessed = 0
              var totalGuesses = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureInitialSetup()
    }
    func configureInitialSetup() {
                 guessLetterField.delegate = self
                 guessLetterField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
                 setupNewGame()
             }

    
    
    func setupNewGame() {
                 targetWord = WordBank[currentWordPosition][0]
                 guessedLetters = ""
                 incorrectGuesses = 0
                  totalGuesses = 0
                 displayImage.isHidden = true
                 playAgainBtn.isHidden = true
                 guessLetterField.isEnabled = true
                 guessLetterBtn.isEnabled = false // Disable the button initially
                 
                 updateLabels()
                 updateUserGuessLabel()
                 hintLabel.text = "Hint: \(WordBank[currentWordPosition][1])"
                 statusLabel.text = "..."
                 guessLetterField.text = ""
             }
    func updateLabels() {
                 wordsGuessedLabel.text = "Total number of words guessed successfully: \(totalWordsGuessed)"
                 wordsRemainingLabel.text = "Total number of words remaining in game: \(WordBank.count - totalWordsGuessed)"
                 totalWordsLabel.text = "Total number of words in game: \(WordBank.count)"
                 guessCountLabel.text = "You have  made: \(totalGuesses) Guesses"
             }
    
    
    
    func updateUserGuessLabel() {
        var revealedWord = ""
        for letter in targetWord{
            guessedLetters.contains(String(letter)) ? (revealedWord += "\(letter) ") : (revealedWord += "_ ")
        }
        userGuessLabel.text = revealedWord.trimmingCharacters(in: .whitespaces)
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        guard let letter = guessLetterField.text?.last?.uppercased() else { return }
                guessedLetters += letter
                totalGuesses += 1
                              
                              if !targetWord.contains(letter) {
                                  incorrectGuesses += 1
                                  statusLabel.text = "Wrong guess. Try again."
                                  if incorrectGuesses == maxAllowedMistakes{
                                      handleGameOver(won: false)
                                      return
                                  }
                              } else {
                                  statusLabel.text = "Good guess! Keep going."
                              }
                              
                              updateLabels()
                              updateUserGuessLabel()
                              guessLetterField.text = ""
                guessLetterBtn.isEnabled = false // Disable the button after a guess
                              
                              if !userGuessLabel.text!.contains("_") {
                                  handleGameOver(won: true)
                              }
    }
    
   
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        
        if totalWordsGuessed == WordBank.count {
                                  // Reset the game if all words are guessed
                   currentWordPosition = 0
                   totalWordsGuessed = 0
                              } else if !userGuessLabel.text!.contains("_") {
                                  // Move to the next word if the current word is guessed
                                  currentWordPosition += 1
                              }
                              setupNewGame()
                          }
                          
                          @objc func textFieldDidChange() {
                              if let text = guessLetterField.text, !text.isEmpty {
                                  guessLetterField.text = String(text.last!)
                                  guessLetterBtn.isEnabled = true // Enable the button when text is entered
                              } else {
                                  guessLetterBtn.isEnabled = false // Disable the button when text is empty
                              }
                          }
                          
                          func handleGameOver(won: Bool) {
                              if won {
                                  totalWordsGuessed += 1
                                  statusLabel.text = "You've guessed it correctly! '\(targetWord)' 🎉"
                                  displayImage.image = UIImage(
                                   named: WordBank[currentWordPosition][2])
                                  displayImage.isHidden = false
                                  
                                  // Check if all words are guessed
                                  if totalWordsGuessed == WordBank.count {
                                      statusLabel.text = "Congratulations,You are done!Please start over again."
                                  } else if incorrectGuesses == maxAllowedMistakes {
                                      guessCountLabel.text = "Wow!You have made 10 guesses to guess the word"
                                  }
                              } else {
                                  statusLabel.text = "You have used all the available guesses.Please play again"
                                  guessCountLabel.text = "Guesses Used: \(incorrectGuesses)/\(maxAllowedMistakes)"
                              }
                              
                              playAgainBtn.isHidden = false
                              guessLetterField.isEnabled = false
                          }
        
        
        
    }
    
    // MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Dismiss keyboard when "Return" is pressed
        return true
    }

}
    
    
    
    
    
    


