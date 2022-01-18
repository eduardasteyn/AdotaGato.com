//
//  LogoView.swift
//  AdotaGato.com
//
//  Created by Eduarda Jeniffer Steilein Gislon on 04/12/21.
//

import UIKit

class LogoView: UIView {
    
    var nameLogoLabel = UILabel()
    var logoImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    private func setup() {
        setLogoImage()
        setupNameLogoLabel()
    }
    
    private func setupNameLogoLabel() {
        nameLogoLabel.textColor = .black
        nameLogoLabel.font = UIFont.boldSystemFont(ofSize: 2.0)
        nameLogoLabel.text = "adota gato"
        self.addSubview(nameLogoLabel)
        
        NSLayoutConstraint.activate([
            nameLogoLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 16),
            nameLogoLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
    }
    
    private func setLogoImage() {
        logoImage.image = UIImage(named:"adotaGatoLogo")
        self.addSubview(logoImage)
        
        logoImage.sizeThatFits(CGSize(width: 100, height: 100))
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            logoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16)
        ])
    }
}
