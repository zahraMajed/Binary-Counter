//
//  TableCell.swift
//  Binary Counter
//
//  Created by admin on 12/12/2021.
//

import UIKit

class TableCell: UITableViewCell {
    
    var delegate : TabelCellDelegate?
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func plusBtnPressed(_ sender: Any) {
        delegate?.updateTotalLabel(amount: Int(numberLabel.text!) ?? 0)
    }
    @IBAction func minuseBtnPressed(_ sender: Any) {
        delegate?.updateTotalLabelMinus(amount: Int(numberLabel.text!) ?? 0)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
