//
//  RegisterComplete_VC.swift
//  DataFlow
//
//  Created by Ardi Muhammad Husen on 16/05/19.
//  Copyright © 2019 Ardi Muhammad Husen. All rights reserved.
//

import UIKit

class RegisterComplete_VC: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var fullName: String! // wajib pakai tanda seru (!) atau opsional (?), ! itu gaboleh nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = fullName
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
