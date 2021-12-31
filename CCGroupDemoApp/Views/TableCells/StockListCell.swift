//
//  StockListCell.swift
//  CCGroupDemoApp
//
//  Created by Manoj on 26/12/21.
//

import UIKit

class StockListCell: UITableViewCell {

    @IBOutlet weak var lbRank: GenericLabel!
    @IBOutlet weak var lbName: GenericLabel!
    @IBOutlet weak var lbSymbol: GenericLabel!
    @IBOutlet weak var lbType: GenericLabel!
    @IBOutlet weak var lbExchange: GenericLabel!
    @IBOutlet weak var lbClose: GenericLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
