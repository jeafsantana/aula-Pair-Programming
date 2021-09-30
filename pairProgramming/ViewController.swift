//
//  ViewController.swift
//  pairProgramming
//
//  Created by Jessica Arruda Ferreira de Santana on 29/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nomeTf: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private let service = Service()
    
    private var contatos: [Contato] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeTf.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        
        loadContatos()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detalheContato = segue.destination as? DetalheContatoViewController, segue.identifier == "segueTelaContato" {
            detalheContato.contato = sender as? Contato
        }
    }

    private func loadContatos() {
        contatos = service.getContatos()
    }
    
    @IBAction func pesquisar(_ sender: Any) {
    }
    
    private func validaTexField(textField : UITextField) {
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        validaTexField(textField: textField)
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueTelaContato", sender: contatos[indexPath.row])
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contatos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contatoCellIdentifier", for: indexPath) as? ContatoViewCell {
            cell.setup(contato: contatos[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
}

