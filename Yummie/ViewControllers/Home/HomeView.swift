//
//  HomeView.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 14/03/2022.
//

import UIKit

class HomeView: UIView {
    
    var delegate: HomeViewControllerProtocol!

    @IBOutlet weak var chifSpecialCollectionView: UICollectionView!
    @IBOutlet weak var popularDishesCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    func viewDidLoad(){
        setDelegtes()
        registerCell()
    }
    
    func setDelegtes(){
        [chifSpecialCollectionView,popularDishesCollectionView,categoryCollectionView].forEach {
            $0?.delegate = self
            $0?.dataSource = self
        }
    }
    
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifer, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifer)
        popularDishesCollectionView.register(UINib(nibName: PopularDishesCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: PopularDishesCollectionViewCell.identifier)
        chifSpecialCollectionView.register(UINib(nibName: ChifSpecialCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ChifSpecialCollectionViewCell.identifier)
    }
}
//MARK: - Conform Protocol(Delegate, Data Source) for all Collection View

extension HomeView: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView{
        case categoryCollectionView:
            return delegate.categoriesCount
        case popularDishesCollectionView:
            return delegate.populatDishesCount
        case chifSpecialCollectionView:
            return delegate.chifSpecialsCount
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView{
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifer, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: delegate.categoryArray[indexPath.row])
            return cell
        case popularDishesCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishesCollectionViewCell.identifier , for: indexPath) as! PopularDishesCollectionViewCell
            cell.setup(dish: delegate.popularDishArray[indexPath.row])
            return cell
        case chifSpecialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ChifSpecialCollectionViewCell.identifier, for: indexPath) as! ChifSpecialCollectionViewCell
            cell.setup(dish: delegate.chifSpecialArray[indexPath.row])
            return cell
        default:
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoryCollectionView {
            delegate.didSelectItemList(index: indexPath)
        }else{
            delegate.didSelectItem(index: indexPath, collectionView: collectionView)
        }
    }
}
