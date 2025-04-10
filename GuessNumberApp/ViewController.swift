//
//  ViewController.swift
//  GuessNumberApp
//
//  Created by Özcan on 9.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let titleImage = UIImageView()
    let getStartedButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpUIs()
    }
    
    private func setUpUIs() {
        
        let screenWidth = view.frame.width
        
        titleImage.frame = CGRect(x: 10, y: 100, width: screenWidth-20 , height: 150)
        titleImage.image = UIImage(named: "aa")
        //        titleImage.layer.cornerRadius = 5
        //        titleImage.layer.borderWidth = 1
        titleImage.layer.masksToBounds = true
        view.addSubview(titleImage)
        
        getStartedButton.frame = CGRect(x: 80, y: 400, width: screenWidth-160, height: 60)
        getStartedButton.setTitle("Get Started", for: .normal)
        getStartedButton.setTitleColor(.black, for: .normal)
        getStartedButton.addTarget(self, action: #selector(getStartedFunc), for: .touchUpInside)
        view.addSubview(getStartedButton)
        
    }
    
    @objc func getStartedFunc() {
        self.navigationController?.pushViewController(secondViewController(), animated: true)
    }
}

