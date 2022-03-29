//
//  ListDishesViewController.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 21/03/2022.
//

import UIKit

protocol ListDishesViewControllerProtocole {
    var dishesArray: [PopularDishSruct] {get}
    var dishesArrayCount: Int {get}
}

class ListDishesViewController: UIViewController, ListDishesViewControllerProtocole {
    var dishesArrayCount: Int {
        return dishesArray.count
    }
    

    var catogry: DishCategoryStruct!
    
    var dishesArray: [PopularDishSruct] = [
        .init(id: "1", name: "name 1", description: "this is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthisthis is descripiton skafksfjlkajljflkajlkfd  fjsklfjkajlkjf sj", image: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", calories: 342),.init(id: "1", name: "name 2", description: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", image: "https://images.pexels.com/photos/10804976/pexels-photo-10804976.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", calories: 123),.init(id: "1", name: "name 3", description: "this is descripiton skafksfjlkajljflkajlkfd  fjsklfjkajlkjf sj", image: "https://images.pexels.com/photos/10804976/pexels-photo-10804976.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", calories: 761),.init(id: "1", name: "name 3", description: "this is descripiton", image: "https://images.pexels.com/photos/10804976/pexels-photo-10804976.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", calories: 761)
    ]
    
    
    @IBOutlet var mainView: DishListView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.viewDidLoad()
        mainView.delegate = self

        title = catogry.name
    }
    


}
