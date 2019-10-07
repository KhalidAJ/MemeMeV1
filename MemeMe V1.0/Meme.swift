//
//  Meme.swift
//  MemeMe V1.0
//
//  Created by Khalid Ajlan on 10/7/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit
struct Meme {
    var Top = String()
    var Bottom = String()
    var originalImage1 = UIImage()
    var memeImage = UIImage()
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage) {
        Top = topText
        Bottom = bottomText
        self.originalImage1 = originalImage
        self.memeImage = memedImage
        
    }
    
    
    
}
