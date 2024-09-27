//
//  ViewController.swift
//  Aug_24_TableViewDemo
//
//  Created by Vishal Jagtap on 27/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViews()
//        registerTableView()
    }
    
    func initializeViews(){
        foodItemsTableView.delegate = self
        foodItemsTableView.dataSource = self
    }
    
//    func registerTableView(){
//        self.foodItemsTableView.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: <#T##String#>)
//    }
}

extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
}

extension ViewController : UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let basicCell = self.foodItemsTableView.dequeueReusableCell(
            withIdentifier: "BasicCell", for: indexPath)
        basicCell.textLabel?.text = "foodItem -- \(indexPath.section) -- \(indexPath.row)"
        
        return basicCell
    }
}
