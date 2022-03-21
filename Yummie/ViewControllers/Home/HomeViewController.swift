//
//  HomeViewController.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 10/03/2022.
//

import UIKit

protocol HomeViewControllerProtocol {
    var categoriesCount: Int {get}
    var populatDishesCount: Int {get}
    var chifSpecialsCount: Int {get}
    var categoryArray: [DishCategoryStruct] {get}
    var popularDishArray: [PopularDishSruct] {get}
    var chifSpecialArray: [PopularDishSruct] {get}
    func didSelectItem(index: IndexPath , collectionView: UICollectionView)
}

class HomeViewController: UIViewController, HomeViewControllerProtocol {

    @IBOutlet var categoryCollectionView: UICollectionView!
    @IBOutlet var popularDishesCollectionView: UICollectionView!
    @IBOutlet var chifSpecialCollectionView: UICollectionView!
    
    var categoryArray: [DishCategoryStruct] = [.init(id: "1", name: "name 1", image: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),.init(id: "2", name: "name 2", image: "https://images.pexels.com/photos/8984211/pexels-photo-8984211.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),.init(id: "3", name: "name 3", image: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),.init(id: "4", name: "name 4", image: "https://images.pexels.com/photos/8984211/pexels-photo-8984211.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),]
    
    var popularDishArray: [PopularDishSruct] = [.init(id: "1", name: "name 1", description: "jlkjf sj", image: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", calories: 342),.init(id: "1", name: "name 2", description: "this is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", image: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", calories: 123),.init(id: "1", name: "name 3", description: "this is descripiton skafksfjlkajljflkajlkfd  fjsklfjkajlkjf sj", image: "https://images.pexels.com/photos/10804976/pexels-photo-10804976.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", calories: 761)]
    var chifSpecialArray: [PopularDishSruct] = [.init(id: "1", name: "name 1", description: "this is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthis is descripitonthisthis is descripiton skafksfjlkajljflkajlkfd  fjsklfjkajlkjf sj", image: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", calories: 342),.init(id: "1", name: "name 2", description: "https://images.pexels.com/photos/4982878/pexels-photo-4982878.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260", image: "https://images.pexels.com/photos/10804976/pexels-photo-10804976.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", calories: 123),.init(id: "1", name: "name 3", description: "this is descripiton skafksfjlkajljflkajlkfd  fjsklfjkajlkjf sj", image: "https://images.pexels.com/photos/10804976/pexels-photo-10804976.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", calories: 761)]
    
    var categoriesCount: Int {
        return categoryArray.count
    }
    
    var populatDishesCount: Int {
        return popularDishArray.count
    }
    
    var chifSpecialsCount: Int {
        return chifSpecialArray.count
    }
    
    
    @IBOutlet weak var mainView: HomeView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.viewDidLoad()
        setDelegates()
    }
    
    private func setDelegates(){
        mainView.delegate = self
    }
    
    func didSelectItem(index: IndexPath , collectionView: UICollectionView){
        let vc = DishDetailsViewController.instantiate()
        vc.dish = collectionView == popularDishesCollectionView ? popularDishArray[index.row] : chifSpecialArray[index.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


