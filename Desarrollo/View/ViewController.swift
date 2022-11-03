//
//  ViewController.swift
//  Desarrollo
//
//  Created by Mikel Valle on 3/11/22.
//

import UIKit

class ViewController: UIViewController {

    //TextField
    
    @IBOutlet weak var myTextFieldM: UITextField!
    @IBOutlet weak var myTextFieldMe: UITextField!
    @IBOutlet weak var myTextFieldN: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextFieldM.textColor = .blue
        myTextFieldM.placeholder = "Escribir diámetro mayor del rollo"
        myTextFieldM.delegate = self
        
        myTextFieldMe.textColor = .blue
        myTextFieldMe.placeholder = "Escribir diámetro menor del rollo"
        myTextFieldMe.delegate = self
        
        myTextFieldN.textColor = .blue
        myTextFieldN.placeholder = "Escribir el número de vueltas que tiene el rollo"
        myTextFieldN.delegate = self
        
        
        
    }


}


//UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
