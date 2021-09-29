//
//  Contato.swift
//  pairProgramming
//
//  Created by Magno Miranda Dantas on 29/09/21.
//

import Foundation

class Contato {
    var nome : String
    var idade : Int
    var endereco : String
    var telefone : String
    var email : String
    var image : String
    
    init(nome : String, idade : Int, endereco : String, telefone : String, email : String, image : String) {
        self.nome = nome
        self.idade = idade
        self.endereco = endereco
        self.telefone = telefone
        self.email = email
        self.image = image
    }
}
