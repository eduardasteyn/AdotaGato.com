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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    func setup() {
        setupNameLogoView()
        setupUserLabel()
    }
    
    private func setupNameLogoView() {
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoView.topAnchor.constraint(equalTo: view.topAnchor),
            logoView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
     /* let widthConstraint = NSLayoutConstraint(item: nameLogoView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        let heightConstraint = NSLayoutConstraint(item: nameLogoView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        NSLayoutConstraint.activate([widthConstraint, heightConstraint]) */
    }
    
    private func setupUserLabel() {
        view.addSubview(userLabel)
        userLabel.backgroundColor = .green
        userLabel.textColor = .black
        userLabel.text = "Nome"
        
        userLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userLabel.topAnchor.constraint(equalTo: logoView.bottomAnchor, constant: 16),
            userLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
        /* let horizontalConstraint = NSLayoutConstraint(item: userLabel, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: userLabel, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: userLabel, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        let heightConstraint = NSLayoutConstraint(item: userLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint]) */
    }
    
}
