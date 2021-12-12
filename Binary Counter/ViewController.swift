//
//  ViewController.swift
//  Binary Counter
//
//  Created by admin on 12/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var myTabelView: UITableView!
    var powerOfTen: [String] = []
    var num = 1
    var total = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        myTabelView.dataSource = self
        myTabelView.delegate = self
        for _ in 1...16 {
            powerOfTen.append(String(num))
            num = num * 10
        }
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate , TabelCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return powerOfTen.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableCell
        cell.numberLabel.text = powerOfTen[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func updateTotalLabel(amount: Int) {
        total += amount
        totalAmount.text = "Total: \(total)"
    }
    
    func updateTotalLabelMinus(amount: Int) {
        total -= amount
        totalAmount.text = "Total: \(total)"
    }
    
}

