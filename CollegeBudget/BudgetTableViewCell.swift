//
//  TableViewCell.swift
//  CollegeBudget
//
//  Created by Nicholas Romano on 11/29/18.
//  Copyright © 2018 Nicholas Romano. All rights reserved.
//

import UIKit

class BudgetTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var BudgetNameLabel: UILabel!
    @IBOutlet weak var RemainingMoneyLabel: UILabel!

    
    let shapeLayer = CAShapeLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let center = CGPoint(x: (9/5.0 * contentView.center.x), y: contentView.center.y)
        // create my track layer
        let trackLayer = CAShapeLayer()
        
        let circularPath = UIBezierPath(arcCenter: center, radius: 25, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
        
        trackLayer.strokeColor = UIColor(red:0.33, green:0.33, blue:0.33, alpha:1.0).cgColor
        trackLayer.lineWidth = 12
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound
        contentView.layer.addSublayer(trackLayer)
        
        //        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        shapeLayer.path = circularPath.cgPath
        
        shapeLayer.strokeColor = UIColor(red:0.00, green:0.98, blue:0.00, alpha:1.0).cgColor
        shapeLayer.lineWidth = 6
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound
        
        shapeLayer.strokeEnd = 0
        
        contentView.layer.addSublayer(shapeLayer)
        
        contentView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
       
    }
    
    @objc private func handleTap() {
        print("Attempting to animate stroke")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        
        basicAnimation.duration = 2
        
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state

    }

}
