//
//  ViewController.swift
//  GuessNumberApp
//
//  Created by Özcan on 9.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImage = UIImageView()
    let titleImage = UIImageView()
    let labelWelcome = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpUIs()
        // SecondVC'de çıkan Back butonunu bir öncek VC'den ayarlıyorsun bu kod parçası o işe yarıyor
//        self.navigationItem.hidesBackButton = true
//        self.navigationItem.backButtonTitle = "Geri Dön"
    }
    
    private func setUpUIs() {
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(getStartedFunc))
        view.addGestureRecognizer(tapGesture)

//        titleImage.frame = view.bounds
        backgroundImage.image = UIImage(named: "ff")
//        titleImage.layer.masksToBounds = true
        view.addSubview(backgroundImage)
        
        
//        labelWelcome.text = "WELCOME"
//        labelWelcome.textColor = .black
//        labelWelcome.font = UIFont.boldSystemFont(ofSize: 50)
//        view.addSubview(labelWelcome)
        
        
        titleImage.image = UIImage(named: "gg")
        titleImage.layer.masksToBounds = true
//        titleImage.layer.borderWidth = 1
        view.addSubview(titleImage)
        
//        self.labelWelcome.translatesAutoresizingMaskIntoConstraints = false
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            titleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            titleImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            titleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -520)
        ])
//
    }
    
    
    @objc func getStartedFunc() {
        self.navigationController?.pushViewController(secondViewController(), animated: true)
    }
    
}

