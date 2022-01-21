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
    let loginButton = UIButton()
    
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
        setupLoginButton()
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
        senhaTextField.isSecureTextEntry = true
        
        NSLayoutConstraint.activate([
            senhaTextField.topAnchor.constraint(equalTo: senhaLabel.bottomAnchor, constant: 16),
            senhaTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: senhaTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.layer.borderWidth = 1
        
        loginButton.addTarget(self, action: #selector(abrirHome), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 32),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor, constant: 16)
        ])
    }
    
    @objc func abrirHome() {
        let home = TabBarViewController()
        present(home, animated: true, completion: nil)
    }
}
