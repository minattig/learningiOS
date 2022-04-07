//
//  ViewController3.swift
//  novoProjeto
//
//  Created by Gustavo Minatti on 03/04/22.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Terceiro Exercício"
        
    }
    
    @IBOutlet weak var resultado: UILabel!

    @IBOutlet weak var valor1: UITextField!
    @IBOutlet weak var valor2: UITextField!

    @IBAction func calcularSoma(_ sender: Any) {
        
        let converterValor1 = Int(valor1.text!) ?? 0
        let converterValor2 = Int(valor2.text!) ?? 0

        resultado.text = "Resultado: \(converterValor1 + converterValor2)."
    
    }
}
