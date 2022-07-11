//
//  ViewController.swift
//  CustomDialogStoryboardExample
//
//  Created by Alexandre Oliveira on 19/11/20.
//  Copyright © 2020 Alexandre Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func simpleAlertTouchUpInside(_ sender: UIButton) {
        let view = UIView()
        
        let titleLabel = UILabel()
        titleLabel.text = "Teste"
        titleLabel.textAlignment = .center
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        
        let button = UIButton()
        button.setTitle("Click me!", for: .normal)
        button.backgroundColor = .red
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -12).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12).isActive = true
        button.heightAnchor.constraint(equalToConstant: 56).isActive = true
        button.addTarget(self, action: #selector(teste(_:)), for: .touchUpInside)
        
        BaseDialog.shared.showAlert(view: view)
    }
    
    @objc func teste(_ sender: UIButton) {
        let alert = UIAlertController()
        alert.title = "Teste"
        self.present(alert, animated: true, completion: nil)
    }
    
}

