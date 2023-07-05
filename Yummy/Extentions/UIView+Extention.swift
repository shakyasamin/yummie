//
//  UIView+Extention.swift
//  Yummy
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 05/07/2023.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat{
        get { return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
