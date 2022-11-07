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
        configureTextFields()
        configureTapGesture()
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
    
    
    
    
    private func result(){
        
    }
}

