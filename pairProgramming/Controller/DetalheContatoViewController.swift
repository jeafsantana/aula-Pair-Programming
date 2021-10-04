//
//  DetalheContatoViewController.swift
//  pairProgramming
//
//  Created by Lilian on 29/09/21.
//

import UIKit

class DetalheContatoViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var nomeLabel: UILabel!
    @IBOutlet var idadeLabel: UILabel!
    @IBOutlet var enderecoLabel: UILabel!
    @IBOutlet var telefoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contato: Contato?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

    }
    
    func setup() {
        
        imageView.image = UIImage(named: contato?.image ?? "")
        nomeLabel.text = "Nome: \(contato?.nome ?? "")"
        idadeLabel.text = "Idade: \(contato?.idade ?? 0)"
        enderecoLabel.text = "Endereço: \(contato?.endereco ?? "")"
        telefoneLabel.text = "Telefone: \(contato?.telefone ?? "")"
        emailLabel.text = "E-mail: \(contato?.email ?? "")"

    }
}
