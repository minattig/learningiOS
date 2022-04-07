//
//  ViewCalculator.swift
//  novoProjeto
//
//  Created by Gustavo Minatti on 05/04/22.
//

import UIKit

class ViewCalculator: UIViewController {

    var firstValue: Double = 0
    var shouldClear = false
    var operation = ""
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Calculadora"
        
    }
    
    
    
    @IBOutlet var screen: UILabel!
    
    
    func selectNumber (number: Int) {
        if operation == "" {
            if screen.text == "0" {
                screen.text = "\(number)"
            } else {
                screen.text! += "\(number)"
            }
        } else if shouldClear == true {
                screen.text = "\(number)"
                shouldClear = false
        } else {
                screen.text! += "\(number)"
            }
        }
    
//    func converterDouble (convert: Double) -> Int {
//
//
//
//    }

    

    
    //       BUTTONS
    @IBAction func numZero(_ sender: UIButton) {
        selectNumber(number: 0)
    }
    @IBAction func numOne(_ sender: UIButton) {
        selectNumber(number: 1)
    }
    @IBAction func numTwo(_ sender: UIButton) {
        selectNumber(number: 2)
    }
    @IBAction func numThree(_ sender: UIButton) {
        selectNumber(number: 3)
    }
    @IBAction func numFour(_ sender: UIButton) {
        selectNumber(number: 4)
    }
    @IBAction func numFive(_ sender: UIButton) {
        selectNumber(number: 5)
    }
    @IBAction func numSix(_ sender: UIButton) {
        selectNumber(number: 6)
    }
    @IBAction func numSeven(_ sender: UIButton) {
        selectNumber(number: 7)
    }
    @IBAction func numEight(_ sender: UIButton) {
        selectNumber(number: 8)
    }
    @IBAction func numNine(_ sender: UIButton) {
        selectNumber(number: 9)
    }
    @IBAction func point(_ sender: UIButton) {
        let contain = screen.text
        
        if !contain!.contains(".") {
            screen.text! += "."
        }
            
        
        
//
//        if screen.text == "0" {
//            screen.text = "0."
//            count = 1
//        } else if screen.text != "0" && count == 0 {
//            screen.text! += "."
//            count = 1
//        }
        
    }
    
    
    //      FUNCTIONS GRAY
    @IBAction func reset(_ sender: UIButton) {
        screen.text = "0"
        shouldClear = true
        operation = "reset"
    }
    @IBAction func percentage(_ sender: UIButton) {
        firstValue = Double(screen.text!) ?? 0
        shouldClear = true
        operation = "%"
    }
    @IBAction func changeSinal(_ sender: UIButton) {
        firstValue = Double(screen.text!) ?? 0
        screen.text = "\(firstValue * -1)"
    }
    
    //      FUNCTIONS ORANGE
    //      CALCULATE
    @IBAction func calculate(_ sender: UIButton) {
        let secondValue = (Double(screen.text!) ?? 0)
        
        if operation == "+" {
            screen.text = "\(firstValue + secondValue)"
        }
        if operation == "-" {
            screen.text = "\(firstValue - secondValue)"
        }
        if operation == "x" {
            screen.text = "\(firstValue * secondValue)"
        }
        if operation == "/" {
            screen.text = "\(firstValue / secondValue)"
        }
        if operation == "%" {
            screen.text = "\(firstValue * (secondValue/100))"
        }
        if operation == "sinal" {
            screen.text = "\(firstValue * -1)"
        }
        
        operation = ""
    //        shouldClear = false

    }
    //       OPERAÇÃO
    @IBAction func addUp(_ sender: UIButton) {
        firstValue = Double(screen.text!) ?? 0
        shouldClear = true
        operation = "+"
    }
    
    @IBAction func subtract(_ sender: UIButton) {
        firstValue = Double(screen.text!) ?? 0
        shouldClear = true
        operation = "-"
    }
    @IBAction func multiply(_ sender: UIButton) {
        firstValue = Double(screen.text!) ?? 0
        shouldClear = true
        operation = "x"
    }
    @IBAction func divide(_ sender: UIButton) {
        firstValue = Double(screen.text!) ?? 0
        shouldClear = true
        operation = "/"
    }
    
    
    
    
}




