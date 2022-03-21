//
//  PopularDishSruct.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 11/03/2022.
//

import Foundation

struct PopularDishSruct{
    let id, name , description, image : String?
    let calories: Int?
    
    var formatedCalories: String{
        return "\(calories ?? 0) Calories"
    }
}
