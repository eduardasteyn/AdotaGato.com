//
//  Gato.swift
//  AdotaGato.com
//
//  Created by Nicole Taufenbach on 22/12/21.
//

import Foundation
import UIKit

class Gato {
    
    private var nome: String?
    private var idade: Int?
    private var isVacinado: Bool?
    private var sexo: String?
    private var raca: String?
    private var imagem: UIImage?
    
    init(nome: String?, idade: Int?, isVacinado: Bool?, sexo: String?, raca: String?, imagem: UIImage?) {
        self.nome = nome
        self.idade = idade
        self.isVacinado = isVacinado
        self.sexo = sexo
        self.raca = raca
        self.imagem = imagem
    }

}
