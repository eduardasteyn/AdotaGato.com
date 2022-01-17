//
//  LoginViewController.swift
//  AdotaGato.com
//
//  Created by Eduarda Jeniffer Steilein Gislon on 04/12/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    var nameLogoView: NameLogoView!
    var userLabel: UILabel!
    var userTextField: UITextField!
    var senhaLabel: UILabel!
    var senhaTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    func setup() {
        //setupNameImageView()
        setupUserLabel()
    }
    
    private func setupNameImageView() {
        nameLogoView = NameLogoView()
        nameLogoView.backgroundColor = .yellow
        nameLogoView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLogoView)
        NSLayoutConstraint.activate([
            nameLogoView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLogoView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func setupUserLabel() {
        userLabel = UILabel()
        userLabel.textColor = .black
        userLabel.text = "Nome"
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userLabel)
        
        NSLayoutConstraint.activate([
            userLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
    }

}
