//
//  ContatoViewCell.swift
//  pairProgramming
//
//  Created by Adriano Souza Costa on 29/09/21.
//

import UIKit

class ContatoViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    func setup(contato: Contato) {
        nameLabel.text = contato.nome
    }
    
}
