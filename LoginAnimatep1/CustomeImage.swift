//
//  CustomeImage.swift
//  LoginAnimatep1
//
//  Created by mohsen khodadadzadeh on 8/10/18.
//  Copyright © 2018 mohsen khodadadzadeh. All rights reserved.
//

import UIKit

class customeImage : UIImageView{
   
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
            clipsToBounds = true
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }

}
