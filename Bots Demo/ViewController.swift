//
//  ViewController.swift
//  Bots Demo
//
//  Created by Connor Svrcek on 11/2/18.
//  Copyright © 2018 Connor Svrcek. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    lazy var numLabel: UILabel = {
        let num = UILabel(frame: CGRect(x: 0, y: view.center.y - 100, width: view.frame.width, height: 50))
        num.text = "0"
        num.font = UIFont(name: "Helvetica", size: 54)
        num.center.x = view.center.x
        num.textAlignment = .center
        
        return num
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        
        // Label
//        let helloWorld = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
//        helloWorld.text = "Hello World!"
//        helloWorld.textAlignment = .center
//        helloWorld.center = view.center
//        view.addSubview(helloWorld)
        
        // Text Field
//        let messageBox = UITextField(frame: CGRect(x: 0, y: 100, width: view.frame.width - 40, height: 50))
//        messageBox.placeholder = "New Message"
//        messageBox.layer.cornerRadius = 7
//        messageBox.layer.borderColor = UIColor.gray.cgColor
//        messageBox.layer.borderWidth = 2.0
//        messageBox.center.x = view.center.x
//        view.addSubview(messageBox)
        
        
        view.addSubview(numLabel)
        
        // Button
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width - 200, height: 55))
        button.center = view.center
        button.layer.borderWidth = 2.0
        button.layer.cornerRadius = 7
        button.layer.borderColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(increment), for: .touchUpInside)
        button.setTitle("Press me!", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        
        view.addSubview(button)
        
        // Navigation controller
        navigationItem.title = "Battle of the Schools"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Tab bar
    }
    
    @objc func increment() {
        let num = Int(numLabel.text!)
        let converted = String(num! + 1)
        numLabel.text = converted
    }
    



}

