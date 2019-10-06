//
//  ViewController.swift
//  MemeMe V1.0
//
//  Created by Khalid Ajlan on 10/6/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var BOTTOM: UITextField!
    @IBOutlet weak var TOP: UITextField!
    let tDelegate = textFieldDelegate()
    let bDelegate = textFieldDelegate()
    let memeTextAttributes: [NSAttributedString.Key: Any] = [
        NSAttributedString.Key.strokeColor: UIColor.black,
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
        NSAttributedString.Key.strokeWidth: 3.0]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TOP.delegate = tDelegate
        BOTTOM.delegate = bDelegate
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
        TOP.defaultTextAttributes = memeTextAttributes
        BOTTOM.defaultTextAttributes = memeTextAttributes
    }
    @IBAction func pickAnImageFromAlbum(_ sender:Any) {

        let pickerController = UIImagePickerController()
        pickerController.delegate = self
         pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)

    }
    @IBAction func pickAnImageFromCamera(_ sender: Any) {

        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
     func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imageView.image = image
        picker.dismiss(animated: true, completion: nil)
        }
     func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        picker.dismiss(animated: true, completion: nil)
    }


}

