//
//  ViewController.swift
//  Desarrollo
//
//  Created by Mikel Valle on 3/11/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: -Outlet
    
    @IBOutlet weak var myTextFieldM: UITextField!
    @IBOutlet weak var myTextFieldMe: UITextField!
    @IBOutlet weak var myTextFieldN: UITextField!
    
   
   
    //MARK: -Actions
    @IBAction func M(_ sender: Int) {
    
    }
    @IBAction func Me(_ sender: Int) {
        
    }
    @IBAction func V(_ sender: Int) {
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    //MARK: -Variables
    
    private var Total: Double = 0
    private var Temp: Double = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   //MARK: -TextField
        myTextFieldM.textColor = .blue
        myTextFieldM.placeholder = "Escribir diámetro mayor del rollo"
        myTextFieldM.delegate = self
        myTextFieldMe.textColor = .blue
        myTextFieldMe.placeholder = "Escribir diámetro menor del rollo"
        myTextFieldMe.delegate = self
        
        myTextFieldN.textColor = .blue
        myTextFieldN.placeholder = "Escribir el número de vueltas que tiene el rollo"
        myTextFieldN.delegate = self
        
        myTextFieldM.tag = 0
        myTextFieldMe.tag = 1
        myTextFieldN.tag = 2
        
    }

    
}
 //MARK: -UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) ->Bool {
        switch textField.tag{
        case 0:
            let caracteres = CharacterSet.alphanumerics
            let caraterSet = CharacterSet(charactersIn: string)
            return caracteres.isSuperset(of: caraterSet)
            
        case 1:
            let caracteres = CharacterSet.alphanumerics
            let caraterSet = CharacterSet(charactersIn: string)
            return caracteres.isSuperset(of: caraterSet)
            
        case 2:
            let caracteres = CharacterSet.alphanumerics
            let caraterSet = CharacterSet(charactersIn: string)
            return caracteres.isSuperset(of: caraterSet)
            
        default:
            print("Fuera de rango")
        }
    }
    private func result(){
        
    }
}

