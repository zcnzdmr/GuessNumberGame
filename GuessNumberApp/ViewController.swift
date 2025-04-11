//
//  ViewController.swift
//  GuessNumberApp
//
//  Created by Özcan on 9.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let titleImage = UIImageView()
    let labelWelcome = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpUIs()
    }
    
    private func setUpUIs() {
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(getStartedFunc))
        view.addGestureRecognizer(tapGesture)

//        titleImage.frame = view.bounds
        titleImage.image = UIImage(named: "ff")
//        titleImage.layer.masksToBounds = true
        view.addSubview(titleImage)
        
        
        labelWelcome.text = "WELCOME"
        labelWelcome.textColor = .black
        labelWelcome.font = UIFont.boldSystemFont(ofSize: 50)
        view.addSubview(labelWelcome)
        
        
        self.labelWelcome.translatesAutoresizingMaskIntoConstraints = false
        self.titleImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleImage.topAnchor.constraint(equalTo: view.topAnchor),
            titleImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            titleImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titleImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        
        NSLayoutConstraint.activate([
            labelWelcome.topAnchor.constraint(equalTo: view.topAnchor, constant: 180),
            labelWelcome.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
//
    }
    
    
    @objc func getStartedFunc() {
        self.navigationController?.pushViewController(secondViewController(), animated: true)
        self.navigationItem.hidesBackButton = true
    }
    
    
    
}

