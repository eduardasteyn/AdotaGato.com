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
    let isVacinadoLabel = UILabel()
    let isVacinadoTextField = UITextField()
    let sexoLabel = UILabel()
    let sexoTextField = UITextField()
    let racaLabel = UILabel()
    let racaTextField = UITextField()
    let imagemLabel = UILabel()
    let imagemButton = UIButton()
    let arrayIsVacinado = ["Sim", "Não"]
    let arraySexo = ["Macho", "Fêmea"]
    var arrayRacas: [Raca]?
    let pickerView = UIPickerView()
    
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
        setupIsVacinadoLabel()
        setupIsVacinadoTextField()
        setupSexoLabel()
        setupSexoTextField()
        setupRacaLabel()
        setupRacaTextField()
        setupImagemLabel()
        setupImagemButton()
        
        setupPickerView()
        initArrayRacas()
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
    
    private func setupIsVacinadoLabel() {
        view.addSubview(isVacinadoLabel)
        isVacinadoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        isVacinadoLabel.text = "Está vacinado?"
        isVacinadoLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            isVacinadoLabel.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor, constant: 16),
            isVacinadoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: isVacinadoLabel.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupIsVacinadoTextField() {
        view.addSubview(isVacinadoTextField)
        isVacinadoTextField.translatesAutoresizingMaskIntoConstraints = false
        
        isVacinadoTextField.delegate = self
        isVacinadoTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            isVacinadoTextField.topAnchor.constraint(equalTo: isVacinadoLabel.bottomAnchor, constant: 16),
            isVacinadoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: isVacinadoTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupPickerView() {
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.backgroundColor = .white
    }
    
    private func setupSexoLabel() {
        view.addSubview(sexoLabel)
        sexoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        sexoLabel.text = "Sexo"
        sexoLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            sexoLabel.topAnchor.constraint(equalTo: isVacinadoTextField.bottomAnchor, constant: 16),
            sexoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: sexoLabel.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupSexoTextField() {
        view.addSubview(sexoTextField)
        sexoTextField.translatesAutoresizingMaskIntoConstraints = false
        
        sexoTextField.delegate = self
        sexoTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            sexoTextField.topAnchor.constraint(equalTo: sexoLabel.bottomAnchor, constant: 16),
            sexoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: sexoTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupRacaLabel() {
        view.addSubview(racaLabel)
        racaLabel.translatesAutoresizingMaskIntoConstraints = false
        
        racaLabel.text = "Raça"
        racaLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            racaLabel.topAnchor.constraint(equalTo: sexoTextField.bottomAnchor, constant: 16),
            racaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: racaLabel.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupRacaTextField() {
        view.addSubview(racaTextField)
        racaTextField.translatesAutoresizingMaskIntoConstraints = false
        
        racaTextField.delegate = self
        racaTextField.borderStyle = .line
        
        NSLayoutConstraint.activate([
            racaTextField.topAnchor.constraint(equalTo: racaLabel.bottomAnchor, constant: 16),
            racaTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: racaTextField.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupImagemLabel() {
        view.addSubview(imagemLabel)
        imagemLabel.translatesAutoresizingMaskIntoConstraints = false
        
        imagemLabel.text = "Imagem"
        imagemLabel.textColor = .black
        
        NSLayoutConstraint.activate([
            imagemLabel.topAnchor.constraint(equalTo: racaTextField.bottomAnchor, constant: 16),
            imagemLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: imagemLabel.trailingAnchor, constant: 16)
        ])
    }
    
    private func setupImagemButton() {
        view.addSubview(imagemButton)
        imagemButton.translatesAutoresizingMaskIntoConstraints = false
        
        imagemButton.setTitle("Enviar imagem", for: .normal)
        imagemButton.setTitleColor(.black, for: .normal)
        
        imagemButton.layer.borderColor = UIColor.black.cgColor
        imagemButton.layer.borderWidth = 1
        
        NSLayoutConstraint.activate([
            imagemButton.topAnchor.constraint(equalTo: imagemLabel.bottomAnchor, constant: 16),
            imagemButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            view.trailingAnchor.constraint(equalTo: imagemButton.trailingAnchor, constant: 16)
        ])
    }
    
    private func initArrayRacas() {
        CadastroViewModel().requestGatos { [weak self] (racas) in
              self?.arrayRacas = racas
            }
    }
}

extension CadastroViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if racaTextField.isFirstResponder {
            return 999
        } else {
            return 2
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        var titlePicker: String = ""
        if isVacinadoTextField.isFirstResponder {
            titlePicker = arrayIsVacinado[row]
            isVacinadoTextField.text = titlePicker
        } else if sexoTextField.isFirstResponder {
            titlePicker = arraySexo[row]
            sexoTextField.text = titlePicker
        } else if racaTextField.isFirstResponder {
            titlePicker = arrayRacas?[row].name ?? ""
            racaTextField.text = titlePicker
        }
        return titlePicker
    }
    
}

extension CadastroViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.inputView = pickerView
        pickerView.reloadAllComponents()
        return true
    }
    
}

