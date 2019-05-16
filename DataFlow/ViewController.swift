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
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITextFieldDelegate {
    
}
