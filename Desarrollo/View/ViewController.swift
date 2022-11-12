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
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var myTextFieldN: UITextField!
   //MARK: -Action
    @IBAction func resultButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
        configureTapGesture()
        
        
        var minorDiameter = myTextFieldMe
        var mayorDiameter = myTextFieldM
        var numberReturn = myTextFieldN
        
        //MARK: - Func Action
        func buttonAction(_ sender: Any) {
            guard let minorDiameter = myTextFieldMe.text else{
                print("Falta un dato")
                return
            }
        print("Diametro menor es \(minorDiameter)")
        }
        {
            guard let mayorDiameter = myTextFieldM.text else{
                print("Falta un dato")
                return
            }
        print("Diametro menor es \(mayorDiameter)")
        }
        {
            guard let numberReturn = myTextFieldN.text else{
                print("Falta un dato")
                return
            }
        print("Diametro menor es \(numberReturn)")
        }
        
        
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
        
        myTextFieldM.keyboardType = .numberPad
        myTextFieldMe.keyboardType = .numberPad
        myTextFieldN.keyboardType = .numberPad
        

        
    }
    
    //MARK: Control de gestos
    private func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
            view.addGestureRecognizer(tapGesture)
    }
    @objc func handleTap(){
        print("Toque en la pantalla")
        view.endEditing(true)
    }
    
    private func configureTextFields(){
        myTextFieldM.delegate = self
        myTextFieldN.delegate = self
        myTextFieldMe.delegate = self
    }
    
}
 //MARK: -UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
