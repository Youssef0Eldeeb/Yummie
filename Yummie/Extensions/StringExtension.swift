//
//  StringExtension.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 10/03/2022.
//

import Foundation

extension String{
    var asUrl : URL?{
        return URL(string: self)
    }
}
