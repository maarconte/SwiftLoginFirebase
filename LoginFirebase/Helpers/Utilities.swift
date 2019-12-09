//
//  Utilities.swift
//  customauth
//
//  Created by Christopher Ching on 2019-05-09.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init?(hexString: String) {
        var chars = Array(hexString.hasPrefix("#") ? hexString.dropFirst() : hexString[...])
        let red, green, blue, alpha: CGFloat
        switch chars.count {
        case 3:
            chars = chars.flatMap { [$0, $0] }
            fallthrough
        case 6:
            chars = ["F","F"] + chars
            fallthrough
        case 8:
            alpha = CGFloat(strtoul(String(chars[0...1]), nil, 16)) / 255
            red   = CGFloat(strtoul(String(chars[2...3]), nil, 16)) / 255
            green = CGFloat(strtoul(String(chars[4...5]), nil, 16)) / 255
            blue  = CGFloat(strtoul(String(chars[6...7]), nil, 16)) / 255
        default:
            return nil
        }
        self.init(red: red, green: green, blue:  blue, alpha: alpha)
    }
}

class Utilities {
    
    static func styleTextField(_ textfield:UITextField) {
        
        // Border
        textfield.layer.borderColor = UIColor.white.cgColor
        textfield.layer.cornerRadius = textfield.frame.size.height/2
        textfield.clipsToBounds = true
        textfield.layer.backgroundColor = UIColor.clear.cgColor
        
       // textfield.attributedPlaceholder = NSAttributedString(string: "placeholderText", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }
    
    static func styleButtonAccent(_ button:UIButton) {
        
        // Filled rounded corner style
        button.backgroundColor = UIColor(hexString: "#d6463b")
        button.layer.cornerRadius = button.frame.size.height/2
        button.tintColor = UIColor.white
    }
    
    static func styleButtonPrimary(_ button:UIButton) {
        
        // Filled rounded corner style
        button.backgroundColor = UIColor(hexString: "#00b3a2")
        button.layer.cornerRadius = button.frame.size.height/2
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius =  button.frame.size.height/2
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}
