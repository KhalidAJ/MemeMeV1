//
//  ViewController.swift
//  MemeMe V1.0
//
//  Created by Khalid Ajlan on 10/6/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func pickAnImage(_ sender:Any) {

        let pickerController = UIImagePickerController()
        present(pickerController, animated: true, completion: nil)

    }


}

