//
//  ChifSpecialCollectionViewCell.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 11/03/2022.
//

import UIKit

class ChifSpecialCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: ChifSpecialCollectionViewCell.self)
    
    @IBOutlet var chifImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var caloriesLabel: UILabel!
    
    func setup(dish: PopularDishSruct){
        chifImageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formatedCalories
    }
    

}
