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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
        configureTapGesture()


        
   //MARK: -TextField
        myTextFieldM.textColor = .blue
        myTextFieldM.delegate = self
        myTextFieldMe.textColor = .blue
        myTextFieldMe.delegate = self
        
        myTextFieldN.textColor = .blue
        myTextFieldN.delegate = self
        
        
    }
 //MARK: -Actión
    
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

