//
//  checkmarkCell.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 5/3/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class checkmarkCell: UITableViewCell {

    @IBOutlet var meky: UILabel!
    @IBOutlet var number: UILabel!
    @IBOutlet var checkmark: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
