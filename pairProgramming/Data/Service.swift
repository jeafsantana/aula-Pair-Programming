//
//  Service.swift
//  pairProgramming
//
//  Created by Adriano Souza Costa on 29/09/21.
//

import Foundation
import UIKit

class Service {
    
    private let contatos: [Contato] = [
        .init(nome: "Lucas", idade: 37, endereco: "RS", telefone: "(51) 9999.999", email: "lucas@dh.com", image: "lucas"),
        .init(nome: "Jessica", idade: 25, endereco: "RS", telefone: "(52) 9999.999", email: "jessica@dh.com", image: "jessica"),
        .init(nome: "Adriano", idade: 32, endereco: "MG", telefone: "(32) 9999.999", email: "adriano@dh.com", image: "adriano"),
        .init(nome: "Eduardo", idade: 33, endereco: "SP", telefone: "(32) 1111.111", email: "eduardo@dh.com", image: "eduardo"),
        .init(nome: "Analu", idade: 3, endereco: "RJ", telefone: "(32) 2222.222", email: "analu@dh.com", image: "analu"),
        .init(nome: "Diana", idade: 33, endereco: "DF", telefone: "(32) 3333.333", email: "diana@dh.com", image: "diana"),
        .init(nome: "Joaquim", idade: 5, endereco: "BA", telefone: "(32) 4444.444", email: "joaquim@dh.com", image: "joaquim"),
        .init(nome: "Mayara", idade: 25, endereco: "AM", telefone: "(32) 5555.555", email: "mayara@dh.com", image: "mayara")
    ]
    
    func getContatos() -> [Contato] {
        return contatos.sorted { $0.nome < $1.nome }
    }
    
    func filtrarContatos(nome: String) -> [Contato] {
        var contacts : [Contato] = []
        for contato in contatos {
            if contato.nome.lowercased().contains(nome.lowercased()) {
                contacts.append(contato)
            }
        }
        return contacts
    }
    
}
