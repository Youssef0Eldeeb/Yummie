//
//  DishListView.swift
//  Yummie
//
//  Created by Youssef Eldeeb on 21/03/2022.
//

import UIKit

class DishListView : UIView{

    @IBOutlet weak var tabelView: UITableView!
    
    var delegate : ListDishesViewControllerProtocole!
    
    func viewDidLoad(){
        setDelegate()
        registerCell()
        
    }
    
    func setDelegate(){
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    private func registerCell(){
        tabelView.register(UINib(nibName: DishListTableViewCell.identifire, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifire)
    }
    
}
//MARK: - Conform Protocol(Delegate, Data Source) for table View
extension DishListView : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.dishesArrayCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifire, for: indexPath) as! DishListTableViewCell
        cell.setup(dish: delegate.dishesArray[indexPath.row])
        return cell
    }
    
}
