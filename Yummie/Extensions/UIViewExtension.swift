//
//  UIViewExtension.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 09/03/2022.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get{return self.layer.cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}

//class IBButton: UIButton{
//    @IBInspectable var cornerRadius : Double{
//        get{
//            return Double(layer.cornerRadius)
//        }
//        set{
//            layer.cornerRadius = CGFloat(newValue)
//        }
//    }
//}
