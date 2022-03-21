//
//  SingleOnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 10/03/2022.
//

import UIKit

class SingleOnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: SingleOnboardingCollectionViewCell.self)
    
    @IBOutlet var slideImage: UIImageView!
    @IBOutlet var slideTitle: UILabel!
    @IBOutlet var slideDescription: UILabel!
    
    func setup(_ slide: OnboardingSlideStruct){
        slideImage.image = slide.image
        slideTitle.text = slide.title
        slideDescription.text = slide.description
    }
    
}
