//
//  ViewController.swift
//  Example App
//
//  Created by Muhammad abduh Siregar on 05/08/18.
//  Copyright © 2018 Muhammad abduh Siregar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var edtYear: UITextField!
    @IBOutlet weak var lblYear: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnAge(_ sender: Any) {
        getAge()
    }
    
    func getAge(){
        let yearOfBirth = Int(edtYear.text!)
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        
        let personOfAge = year - yearOfBirth!
        lblYear.text = "Your age is \(personOfAge)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        getAge()
            self.view.endEditing(true)
        return true
    }
    
}

