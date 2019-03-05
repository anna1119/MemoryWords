//
//  TableCell.swift
//  Li_Yuing_ISU
//
//  Created by Period One on 2018-01-11.
//  Copyright © 2018 Period One. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var wordLbl: UILabel!
    
    @IBOutlet weak var meaningLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
