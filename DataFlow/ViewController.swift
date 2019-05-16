//
//  ViewController.swift
//  DataFlow
//
//  Created by Ardi Muhammad Husen on 16/05/19.
//  Copyright © 2019 Ardi Muhammad Husen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField_yourName: UITextField!
    @IBOutlet weak var textField_yourGFNumber: UITextField!
    
    @IBAction func registerPressed(_ sender: Any) {
        if textField_yourName.text == "" || textField_yourGFNumber.text == "" {
            let alert = UIAlertController(title: "Registration Failed", message: "Text fields must be filled", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default) { (myAlertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            
            alert.addAction(alertAction)
            
            present(alert, animated: true, completion: nil)
        }
        else{
            performSegue(withIdentifier: "checkRegistrationData", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destionation = segue.destination as? RegisterComplete_VC{
            destionation.fullName = textField_yourName.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField_yourName.delegate = self
    }
    
    


}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textField_yourName {
            // pindah ke textfield berikutnya
            textField_yourGFNumber.becomeFirstResponder()
        }
        else
        {
            // hide keyboard
            textField_yourGFNumber.resignFirstResponder()
        }
        
        return true
        
    }
}
