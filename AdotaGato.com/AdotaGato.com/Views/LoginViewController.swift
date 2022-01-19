//
//  LoginViewController.swift
//  AdotaGato.com
//
//  Created by Eduarda Jeniffer Steilein Gislon on 04/12/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    let logoView = LogoView()
    let userLabel = UILabel()
    let userTextField = UITextField()
    let senhaLabel = UILabel()
    let senhaTextField = UITextField()
    let enviarButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    private func setup() {
        setupLogoView()
        setupUserLabel()
        setupUserTextField()
        setupSenhaLabel()
        setupSenhaTextField()
        setupEnviarButton()
    }
    
    private func setupLogoView() {
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        logoView.backgroundColor = .red
        
        NSLayoutConstraint.activate([
            logoView.heightAnchor.constraint(equalToConstant: 200),
            logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: logoView.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupUserLabel() {
        view.addSubview(userLabel)
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        userLabel.textColor = .black
        userLabel.text = "Nome"
        
        NSLayoutConstraint.activate([
            userLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 16),
            userLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func setupUserTextField() {
        view.addSubview(userTextField)
        userTextField.translatesAutoresizingMaskIntoConstraints = false

        userTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            userTextField.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 16),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupSenhaLabel() {
        view.addSubview(senhaLabel)
        senhaLabel.translatesAutoresizingMaskIntoConstraints = false
        
        senhaLabel.textColor = .black
        senhaLabel.text = "Senha"
        
        NSLayoutConstraint.activate([
            senhaLabel.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 16),
            senhaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func setupSenhaTextField() {
        view.addSubview(senhaTextField)
        senhaTextField.translatesAutoresizingMaskIntoConstraints = false

        senhaTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            senhaTextField.topAnchor.constraint(equalTo: senhaLabel.bottomAnchor, constant: 16),
            senhaTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: senhaTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupEnviarButton() {
        view.addSubview(enviarButton)
        enviarButton.translatesAutoresizingMaskIntoConstraints = false
        
        enviarButton.setTitle("Login", for: .normal)
        enviarButton.setTitleColor(.red, for: .normal)
        
        NSLayoutConstraint.activate([
            enviarButton.heightAnchor.constraint(equalToConstant: 20),
            enviarButton.widthAnchor.constraint(equalToConstant: 20),
            enviarButton.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 16),
            enviarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: enviarButton.trailingAnchor, constant: 16)
        ])
    }
}
