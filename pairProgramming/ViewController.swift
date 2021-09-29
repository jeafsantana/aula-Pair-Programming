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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeTf.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
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

extension ViewController: UITableViewDelegate {}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

