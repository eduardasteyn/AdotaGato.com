//
//  LogoView.swift
//  AdotaGato.com
//
//  Created by Eduarda Jeniffer Steilein Gislon on 04/12/21.
//

import UIKit

class LogoView: UIView {
    
    let contentView = UIView()
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
    
    private func setupContentView() {
        self.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: self.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        ])
    }
    
    private func setup() {
        setupContentView()
        setLogoImage()
        setupNameLogoLabel()
    }
    
    private func setLogoImage() {
        logoImage.image = UIImage(named:"adotaGatoLogo")
        contentView.addSubview(logoImage)
        
        logoImage.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            logoImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        ])
    }
    
    private func setupNameLogoLabel() {
        nameLogoLabel.textColor = .black
        nameLogoLabel.text = "adota gato"
        nameLogoLabel.font = UIFont.boldSystemFont(ofSize: 10)
        contentView.addSubview(nameLogoLabel)
        
         NSLayoutConstraint.activate([
            nameLogoLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            nameLogoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }

}
