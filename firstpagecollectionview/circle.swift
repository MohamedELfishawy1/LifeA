//
//  circle.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 4/26/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class circle: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.layer.frame.width/6
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.darkGray.cgColor
    }
    
}

