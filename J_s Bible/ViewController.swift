//
//  ViewController.swift
//  J's Bible
//
//  Created by Yuchi Shi on 8/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let before2022 : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Before 2022", for: .normal)
        button.layer.cornerRadius = 7
        return button
    }()
    
    private let year2022 : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Year of 2022", for: .normal)
        button.layer.cornerRadius = 7
        return button
    }()
    
    private let year2023 : UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Year of 2023", for: .normal)
        button.layer.cornerRadius = 7
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hi!!!");
        setupUI()
        self.before2022.addTarget(self, action: #selector(before2022buttonClicked), for: .touchUpInside)
        self.year2022.addTarget(self, action: #selector(year2022buttonClicked), for: .touchUpInside)
        self.year2023.addTarget(self, action: #selector(year2023buttonClicked), for: .touchUpInside)
        
        
    }
    
    private func setupUI() {
        self.view.addSubview(before2022)
        self.before2022.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(year2022)
        self.year2022.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(year2023)
        self.year2023.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            before2022.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            before2022.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            before2022.widthAnchor.constraint(equalToConstant: 200),
//            before2022.heightAnchor.constraint(equalToConstant: 100),
//        ])
        NSLayoutConstraint.activate([
            before2022.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            before2022.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            before2022.widthAnchor.constraint(equalToConstant: 200),
            before2022.heightAnchor.constraint(equalToConstant: 100),
            year2022.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            year2022.topAnchor.constraint(equalTo: before2022.bottomAnchor, constant: 20),
            year2022.widthAnchor.constraint(equalToConstant: 200),
            year2022.heightAnchor.constraint(equalToConstant: 100),
            year2023.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            year2023.topAnchor.constraint(equalTo: year2022.bottomAnchor, constant: 20),
            year2023.widthAnchor.constraint(equalToConstant: 200),
            year2023.heightAnchor.constraint(equalToConstant: 100),
        ])

        
        before2022buttonClicked()
    }
    
    
    @objc func before2022buttonClicked() {
        print("Hi!");
        let vc = before2022View()
        self.present(vc, animated: true, completion: nil)
        }
    
    @objc func year2022buttonClicked() {
        print("Hi!!");
        let vc = year2022View()
        self.present(vc, animated: true, completion: nil)
        }
    
    @objc func year2023buttonClicked() {
        print("Hi!!!");
        let vc = year2023View()
        self.present(vc, animated: true, completion: nil)
        }


    @objc func buttonClickedFor2022() {
//        before2022Button.setTitle("Tada", for: .normal)
        }
    @objc func buttonClickedFor2023() {
        
        }

}

