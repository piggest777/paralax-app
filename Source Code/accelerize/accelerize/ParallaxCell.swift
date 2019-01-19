//
//  ParallaxCell.swift
//  accelerize
//
//  Created by Caleb Stultz on 10/16/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var parallaxImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax()
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String) {
        parallaxImageView.image = image
        descLabel.text = desc
    }
    
    func setupParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        parallaxImageView.addMotionEffect(motionEffectGroup)
    }
}
