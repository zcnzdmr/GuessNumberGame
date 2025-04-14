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
    let guessCountLabel = UILabel()
    let guideLabel = UILabel()
    let backroundImage = UIImageView()
    let secretNumber = Int.random(in: 1...100)
    var numberOfGuessed = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpSecondVCUIs()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        let backButton = UIBarButtonItem()
//        backButton.title = ""
//        backButton.tintColor = .black
//        self.navigationItem.leftBarButtonItem = backButton
//    }
    
    private func setUpSecondVCUIs() {
        
        let screenWidth = view.frame.width
        
        backroundImage.frame = view.bounds
        backroundImage.image = UIImage(named: "ff")
        view.addSubview(backroundImage)
        
        guessCountLabel.frame = CGRect(x: (screenWidth - 120) / 2 , y: 120, width: 120, height: 120)
        guessCountLabel.font = UIFont.boldSystemFont(ofSize: 50)
//        resultLabel.layer.borderColor = UIColor.red.cgColor
//        guessCountLabel.layer.borderWidth = 0.5
        guessCountLabel.backgroundColor = .white
        guessCountLabel.layer.cornerRadius = 60
        guessCountLabel.textAlignment = .center
        guessCountLabel.clipsToBounds = true
        guessCountLabel.text = "3"
        view.addSubview(guessCountLabel)
        
        
        guessTextField.frame = CGRect(x: 20, y: 280, width: screenWidth - 40, height: 50)
        guessTextField.layer.borderWidth = 0.5
        guessTextField.layer.cornerRadius = 6
        guessTextField.backgroundColor = .white
        guessTextField.textAlignment = .center
        guessTextField.placeholder = "Enter a number between 1-100"
        view.addSubview(guessTextField)
        
        guessButton.frame = CGRect(x: 130, y: 730, width: screenWidth-260, height: 60)
        guessButton.setTitle("GUESS", for: .normal)
        guessButton.setTitleColor(.white, for: .normal)
        guessButton.backgroundColor = .black
        guessButton.layer.cornerRadius = 6
        //        guessButton.layer.borderColor = .white
        guessButton.addTarget(self, action: #selector(guessFunc), for: .touchUpInside)
        view.addSubview(guessButton)
        
        guideLabel.frame = CGRect(x: 20, y: 360, width: screenWidth - 40, height: 50)
        guideLabel.backgroundColor = .white
        guideLabel.clipsToBounds = true
        guideLabel.layer.borderWidth = 0.5
        guideLabel.layer.cornerRadius = 6
        guideLabel.textAlignment = .center
        guideLabel.font = UIFont.italicSystemFont(ofSize: 22)
        guideLabel.adjustsFontSizeToFitWidth = true  // Usable method to fit the
        guideLabel.text = "Try a number now"
        view.addSubview(guideLabel)
        
        

        let backButton = UIBarButtonItem(title: "<", style: UIBarButtonItem.Style.done, target: self, action: #selector(backButtonFunc))
        backButton.tintColor = .black
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func guessFunc() {
        print("\(secretNumber)")
        
        
        if let textGuess = guessTextField.text , !textGuess.isEmpty {
            if let guessedNumber = Int(textGuess) {
  
                if 1 <= guessedNumber && guessedNumber <= 100 {
                    self.numberOfGuessed -= 1
                    guessCountLabel.text = String(numberOfGuessed)
                    if numberOfGuessed == 0 {
                        alertFunc(message: "Your rights depleted", title: "Oopps")
                    }
                    if guessedNumber > secretNumber {
                        guideLabel.text = "Try lower number :)"
                    }else if guessedNumber < secretNumber {
                        guideLabel.text = "Try higher number :)"
                    }else if guessedNumber == secretNumber {
                        guideLabel.text = "Congrulationssss"
                    }
                }else {
                    guideLabel.text = " Please enter a number between 1-100 "
                }
            }else {
                guideLabel.text = "Wrong Entry "
            }
        }else {
            guideLabel.text = "No Entry"
        }
    }
    
    
    func alertFunc(message : String, title: String) {
        
        let alertCont = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { _ in
            
            // Bu kod parçası tüm navigation stack’i yeniden başlatır yani altta yazdığın pushViewController metodu gibi VC geçmişini korumaz.
            self.navigationController?.setViewControllers([ViewController()], animated: true)
            

//            self.navigationController?.pushViewController(ViewController(), animated: true)
        }
        alertCont.addAction(alertAction)
        
        present(alertCont,animated: true)
    }
    
    @objc func backButtonFunc() {
        self.navigationController?.setViewControllers([ViewController()], animated: true)
    }
}
