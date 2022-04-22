//
//  ShowerViewController.swift
//  novoProjeto
//
//  Created by Gustavo Minatti on 21/04/22.
//

import UIKit

class ShowerViewController: UIViewController {

    var text: String?
    
    @IBOutlet weak var show: UILabel!
    
//    var show:String?
    
    override func viewDidLoad() {
//        super.viewDidLoad()
        
          
//          show.text = text
        
        if let receivedText = text {
            show.text = receivedText
        }

        
    }
    
}
