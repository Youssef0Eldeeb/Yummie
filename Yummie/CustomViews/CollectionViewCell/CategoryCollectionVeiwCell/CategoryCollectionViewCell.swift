//
//  CategoryCollectionViewCell.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 10/03/2022.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    static let identifer = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet var categoryImageView: UIImageView!
    @IBOutlet var categoryLabel: UILabel!
    
    func setup(category: DishCategoryStruct){
        categoryLabel.text = category.name
        categoryImageView.kf.setImage(with: category.image?.asUrl )
    }
    
}
