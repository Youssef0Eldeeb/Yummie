//
//  PopularDishesCollectionViewCell.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 11/03/2022.
//

import UIKit


class PopularDishesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: PopularDishesCollectionViewCell.self)

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dishImageView: UIImageView!
    @IBOutlet var caloriesLabel: UILabel!
    @IBOutlet var desciptionLabel: UILabel!
    
    func setup(dish: PopularDishSruct){
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLabel.text = dish.formatedCalories
        desciptionLabel.text = dish.description
    }
    
}
