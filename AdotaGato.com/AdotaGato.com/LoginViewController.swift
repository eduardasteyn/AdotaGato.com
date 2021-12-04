//
//  LoginViewController.swift
//  AdotaGato.com
//
//  Created by Eduarda Jeniffer Steilein Gislon on 04/12/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    let nameLogoView = NameLogoView()
    let userLabel = UILabel()
    let userTextField = UITextField()
    let senhaLabel = UILabel()
    let senhaTextField = UITextField()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // setup()

    }
    
    func setup() {
        setupNameImageView()
        setupUserLabel()
    }
    
    private func setupNameImageView() {
        view.addSubview(nameLogoView)
        nameLogoView.backgroundColor = .yellow
        nameLogoView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            nameLogoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16.0),
            nameLogoView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16.0),

            
        ])
    }
    
    private func setupUserLabel() {
        view.addSubview(userLabel)
        userLabel.textColor = .black
        userLabel.text = "Nome"
    
        userLabel.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            userLabel.topAnchor.constraint(equalTo: nameLogoView.bottomAnchor, constant: 16.0),
            userLabel.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16.0)
                                        ])
        
    }

}
