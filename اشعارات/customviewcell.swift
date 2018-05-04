//
//  customviewcell.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 4/23/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class customviewcell: UITableViewCell{

  
    @IBOutlet var cellview: UIView!
    
    @IBOutlet var imgimage: UIImageView!
    @IBOutlet var label: UILabel!
    @IBAction func accept(_ sender: Any) {
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
