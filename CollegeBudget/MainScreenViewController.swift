//
//  ViewController.swift
//  CollegeBudget
//
//  Created by Nicholas Romano on 11/29/18.
//  Copyright © 2018 Nicholas Romano. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    
    @IBOutlet weak var BudgetTableView: UITableView!
    
    let model = Bank()
    let shapeLayer = CAShapeLayer()
    var tempCounter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        BudgetTableView.dataSource = self
        loadTestData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadTestData() {
        model.addBudget(name: "Groceries", amount: 50.00)
        model.addBudget(name: "Gas", amount: 200.00)
        model.addBudget(name: "Groceries", amount: 50.00)
        model.addBudget(name: "Gas", amount: 200.00)
        model.addBudget(name: "Groceries", amount: 50.00)
        model.addBudget(name: "Gas", amount: 200.00)
        model.addBudget(name: "Groceries", amount: 50.00)
        model.addBudget(name: "Gas", amount: 200.00)
        model.addBudget(name: "Groceries", amount: 50.00)
        model.addBudget(name: "Gas", amount: 200.00)
        model.addBudget(name: "Groceries", amount: 50.00)
        model.addBudget(name: "Gas", amount: 200.00)
        
    }

}

extension MainScreenViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.budgets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        BudgetTableView.rowHeight = 80
        let cell = tableView.dequeueReusableCell(withIdentifier: "BudgetCell") as! BudgetTableViewCell
        cell.BudgetNameLabel.text = model.budgets[indexPath.row].name
        if tempCounter % 2 == 0 {
            cell.contentView.backgroundColor = UIColor(red:0.25, green:0.25, blue:0.25, alpha:1.0)
        } else {
            cell.contentView.backgroundColor = UIColor(red:0.28, green:0.28, blue:0.28, alpha:1.0)
        }
        tempCounter = tempCounter + 1
        
    
        
        return cell
    }
    
    @objc func animateProgress() {
        let cp = self.view.viewWithTag(101) as! CircularProgress
        cp.setProgressWithAnimation(duration: 1.0, value: 0.8)
    }
    

}

