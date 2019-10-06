//
//  textFieldDelegate.swift
//  MemeMe V1.0
//
//  Created by Khalid Ajlan on 10/6/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

class textFieldDelegate: NSObject, UITextFieldDelegate{
    var typed: Bool
    override init(){
        typed = false
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if !typed{
            textField.text = ""
            typed = true
            return true
        }
        return true
        
      }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
