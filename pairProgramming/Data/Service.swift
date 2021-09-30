//
//  Service.swift
//  pairProgramming
//
//  Created by Adriano Souza Costa on 29/09/21.
//

import Foundation

class Service {
    
    private let contatos: [Contato] = [
        .init(nome: "Lucas", idade: 37, endereco: "RS", telefone: "(51) 9999.999", email: "lucas@dh.com", image: "lucas"),
        .init(nome: "Jessica", idade: 25, endereco: "RS", telefone: "(52) 9999.999", email: "jessica@dh.com", image: "jessica"),
        .init(nome: "Adriano", idade: 32, endereco: "MG", telefone: "(32) 9999.999", email: "adriano@dh.com", image: "adriano")
    ]
    
    func getContatos() -> [Contato] {
        return contatos
    }
    
    func filtrarContatos(nome: String) -> [Contato] {
        var contacts : [Contato] = []
        for contato in contatos {
            if contato.nome.contains(nome) {
                contacts.append(contentsOf: contato)
            }
        }
        return contacts
    }
    
}
