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
