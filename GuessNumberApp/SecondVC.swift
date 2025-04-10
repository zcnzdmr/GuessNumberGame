//
//  SecondVC.swift
//  GuessNumberApp
//
//  Created by Özcan on 9.04.2025.
//

import UIKit

class secondViewController : UIViewController {
    
    let guessTextField = UITextField()
    let guessButton = UIButton()
    let resultLabel = UILabel()
    let secretNumber = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSecondVCUIs()
        
    }
    
    private func setUpSecondVCUIs() {
        
        let screenWidth = view.frame.width
        
        resultLabel.frame = CGRect(x: (screenWidth - 120) / 2 , y: 120, width: 120, height: 120)
        resultLabel.font = UIFont.boldSystemFont(ofSize: 50)
        resultLabel.layer.borderColor = UIColor.red.cgColor
        resultLabel.layer.borderWidth = 3
        resultLabel.layer.cornerRadius = 60
        resultLabel.textAlignment = .center
        resultLabel.text = "0"
        view.addSubview(resultLabel)
        
        
        guessTextField.frame = CGRect(x: 20, y: 280, width: screenWidth - 40, height: 50)
        guessTextField.layer.borderWidth = 1
        guessTextField.layer.cornerRadius = 6
        guessTextField.textAlignment = .center
        guessTextField.placeholder = "Enter a number between 1-100"
        view.addSubview(guessTextField)
        
        guessButton.frame = CGRect(x: 100, y: 400, width: screenWidth-200, height: 60)
        guessButton.setTitle("GUESS", for: .normal)
        guessButton.setTitleColor(.white, for: .normal)
        guessButton.backgroundColor = .systemBlue
        guessButton.layer.cornerRadius = 6
        //        guessButton.layer.borderColor = .white
        guessButton.addTarget(self, action: #selector(guessFunc), for: .touchUpInside)
        view.addSubview(guessButton)
        
    }
    
    @objc func guessFunc() {
        
        guard let textGuess = guessTextField.text else {
            print("No entry")
            return
        }
        if let guessedNumber = Int(textGuess) {
            
            print("\(secretNumber)")
            
            if 1 < guessedNumber && guessedNumber < 100 {
                if guessedNumber > secretNumber {
                    print("try lower number")
                }else if guessedNumber < secretNumber {
                    print("try higher number")
                }else if guessedNumber == secretNumber {
                    print("congrats")
                }else {
                    print("wrong entry")
                }
            }
        }
        
    }
    
}
