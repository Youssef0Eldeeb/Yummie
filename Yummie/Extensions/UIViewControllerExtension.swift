//
//  UIViewControllerExtension.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 12/03/2022.
//

import UIKit

extension UIViewController{
    static var identifier : String {
        return String(describing: self)
    }
    static func instantiate() -> Self{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: identifier) as! Self
        return controller
    }
}
