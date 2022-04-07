//
//  ViewController.swift
//  novoProjeto
//
//  Created by Gustavo Minatti on 03/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Primeiro Exercício"
    }
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Botao: UIButton!
    
    var clicked = false

    @IBAction func Clicou(_ sender: Any) {
        if !clicked {
            Label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            Label.text = "Bem Vindo"
            
            self.view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            
            Botao.setTitle("Fim", for: .normal)
            Botao.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
            
            clicked = true
        } else {
            Label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            Label.text = "Mensagem Original"
            
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
            Botao.setTitle("Button", for: .normal)
            Botao.setTitleColor(#colorLiteral(red: 0, green: 0.46, blue: 0.89, alpha: 1), for: .normal)

            clicked = false
        }
    }
}

