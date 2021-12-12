//
//  TabelCellDelegate.swift
//  Binary Counter
//
//  Created by admin on 12/12/2021.
//

import Foundation

protocol TabelCellDelegate {
    func updateTotalLabel(amount: Int)
    func updateTotalLabelMinus(amount: Int)
}
