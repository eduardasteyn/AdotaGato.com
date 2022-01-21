//
//  CadastroViewController.swift
//  AdotaGato.com
//
//  Created by Nicole Taufenbach on 20/01/22.
//

import Foundation
import UIKit

class CadastroViewController: UIViewController {
    
    let nomeLabel = UILabel()
    let nomeTextField = UITextField()
    let idadeLabel = UILabel()
    let idadeTextField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cadastro"
        view.backgroundColor = .systemBackground
        setup()
    }
    
    private func setup() {
        setupNomeLabel()
        setupNomeTextField()
        setupIdadeLabel()
        setupIdadeTextField()
    }
    
    private func setupNomeLabel() {
        view.addSubview(nomeLabel)
        nomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nomeLabel.text = "Nome"
        nomeLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            nomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 115),
            nomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: nomeLabel.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupNomeTextField() {
        view.addSubview(nomeTextField)
        nomeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        nomeTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            nomeTextField.topAnchor.constraint(equalTo: nomeLabel.bottomAnchor, constant: 16),
            nomeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: nomeTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupIdadeLabel() {
        view.addSubview(idadeLabel)
        idadeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        idadeLabel.text = "Idade"
        idadeLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            idadeLabel.topAnchor.constraint(equalTo: nomeTextField.bottomAnchor, constant: 16),
            idadeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: idadeLabel.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupIdadeTextField() {
        view.addSubview(idadeTextField)
        idadeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        idadeTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            idadeTextField.topAnchor.constraint(equalTo: idadeLabel.bottomAnchor, constant: 16),
            idadeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: idadeTextField.trailingAnchor, constant: 16)
        ])
    }
    
}
