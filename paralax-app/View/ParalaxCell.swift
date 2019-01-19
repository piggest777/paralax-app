//
//  ParalaxCell.swift
//  paralax-app
//
//  Created by Denis Rakitin on 2019-01-19.
//  Copyright © 2019 Denis Rakitin. All rights reserved.
//

import UIKit

class ParalaxCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func cofigureCell(withImage image: UIImage, andDescription desk: String){
        itemImageView.image = image
        descriptionLbl.text = description
    }

    func setParalax() {
        
    }
    
}
