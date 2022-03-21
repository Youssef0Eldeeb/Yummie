//
//  DishDetailsViewController.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 12/03/2022.
//

import UIKit

class DishDetailsViewController: UIViewController {

    @IBOutlet var imageViewDish: UIImageView!
    @IBOutlet var titleLabelDish: UILabel!
    @IBOutlet var caloriesLabelDish: UILabel!
    @IBOutlet var descriptionLabelDish: UILabel!
    @IBOutlet var textFieldDish: UITextField!
    
    var dish: PopularDishSruct!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewSetup()
    }
    
    private func viewSetup() {
        imageViewDish.kf.setImage(with:dish.image?.asUrl)
        titleLabelDish.text = dish.name
        caloriesLabelDish.text = dish.formatedCalories
        descriptionLabelDish.text = dish.description
    }
    
    @IBAction func placeOrderBtn(_ sender: UIButton) {
    }
    
    
    
}
