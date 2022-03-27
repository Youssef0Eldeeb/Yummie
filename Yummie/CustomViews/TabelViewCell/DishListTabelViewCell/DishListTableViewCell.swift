//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 21/03/2022.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    static let identifire = String(describing: DishListTableViewCell.self)
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish: PopularDishSruct){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
    }
}
