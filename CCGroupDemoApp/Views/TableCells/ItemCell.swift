//
//  ItemCell.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 30/12/21.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var lbLabel: GenericLabel!
    @IBOutlet weak var lbText: GenericLabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
