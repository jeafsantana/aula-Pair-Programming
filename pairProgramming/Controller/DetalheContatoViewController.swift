//
//  DetalheContatoViewController.swift
//  pairProgramming
//
//  Created by Lilian on 29/09/21.
//

import UIKit

class DetalheContatoViewController: UIViewController {

    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var enderecoLabel: UILabel!
    @IBOutlet weak var telefoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var fotoContatoImageView: UIImageView!
    
    var contato: Contato?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeLabel.text = contato?.nome
        idadeLabel.text = "\(contato?.idade)"
        enderecoLabel.text = contato?.endereco
        telefoneLabel.text = contato?.telefone
        emailLabel.text = contato?.email
        fotoContatoImageView.image = UIImage(named: contato?.image ?? "")
    }

}
