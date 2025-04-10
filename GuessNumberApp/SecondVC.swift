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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSecondVCUIs()
        
    }
    
    private func setUpSecondVCUIs() {
        
        let screenWidth = view.frame.width
        
        resultLabel.frame = CGRect(x: 20, y: 140, width: screenWidth - 40, height: 50)
        resultLabel.layer.borderWidth = 1
        resultLabel.layer.cornerRadius = 6
        resultLabel.textAlignment = .center
        resultLabel.text = "0"
        view.addSubview(resultLabel)
        
        
        guessTextField.frame = CGRect(x: 20, y: 230, width: screenWidth - 40, height: 50)
        guessTextField.layer.borderWidth = 1
        guessTextField.layer.cornerRadius = 6
        guessTextField.textAlignment = .center
        guessTextField.text = "Enter your number"
        view.addSubview(guessTextField)
        
        guessButton.frame = CGRect(x: 80, y: 400, width: screenWidth-160, height: 60)
        guessButton.setTitle("GUESS", for: .normal)
        guessButton.setTitleColor(.white, for: .normal)
        guessButton.backgroundColor = .blue
        guessButton.layer.cornerRadius = 6
//        guessButton.layer.borderColor = .white
        guessButton.addTarget(self, action: #selector(guessFunc), for: .touchUpInside)
        view.addSubview(guessButton)
    
    }
    
    @objc func guessFunc() {
        print("10")
    }
    
}
