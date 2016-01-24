//
//  Created by Igor Vorobiov on 1/23/16.
//  Copyright © 2016 Igor Vorobiov. All rights reserved.
//

import UIKit

@IBDesignable
class UIBorderView: UIView {
    
    @IBInspectable var topBorderWeight: Int = 0 {
        didSet {
            adjustTopLayer(layer, withBorderWeight: topBorderWeight)
        }
    }
    
    @IBInspectable var rightBorderWeight: Int = 0 {
        didSet {
            adjustRightLayer(layer, withBorderWeight: rightBorderWeight)
        }
    }
    
    @IBInspectable var leftBorderWeight: Int = 0 {
        didSet {
            adjustLeftLayer(layer, withBorderWeight: leftBorderWeight)
        }
    }
    
    @IBInspectable var bottomBorderWeight: Int = 0 {
        didSet {
            adjustBottomLayer(layer, withBorderWeight: bottomBorderWeight)
        }
    }
    
    @IBInspectable var topBorderColor: UIColor = UIColor.blackColor() {
        didSet {
            topLayer.backgroundColor = topBorderColor.CGColor
        }
    }
    
    @IBInspectable var rightBorderColor: UIColor = UIColor.blackColor(){
        didSet {
            rightLayer.backgroundColor = rightBorderColor.CGColor
        }
    }
    
    @IBInspectable var leftBorderColor: UIColor = UIColor.blackColor() {
        didSet {
            leftLayer.backgroundColor = leftBorderColor.CGColor
        }
    }
    
    @IBInspectable var bottomBorderColor: UIColor = UIColor.blackColor() {
        didSet {
            bottomLayer.backgroundColor = bottomBorderColor.CGColor
        }
    }
    
    private lazy var topLayer: CALayer = {
        [unowned self] in
        
        let border = CALayer()
        
        self.layer.addSublayer(border)
        
        return border
    }()
    
    private lazy var bottomLayer: CALayer = {
        [unowned self] in
        
        let border = CALayer()
        
        self.layer.addSublayer(border)
        
        return border
    }()
    
    private lazy var leftLayer: CALayer = {
        [unowned self] in
        
        let border = CALayer()
        
        self.layer.addSublayer(border)
        
        return border
    }()
    
    
    private lazy var rightLayer: CALayer = {
        [unowned self] in
        
        let border = CALayer()
        
        self.layer.addSublayer(border)
        
        return border
    }()
    
    
    private func adjustTopLayer(layer: CALayer, withBorderWeight: Int) {
        let x: CGFloat = 0
        let y: CGFloat = 0
        let width = layer.frame.width
        let height = CGFloat(withBorderWeight)
        
        topLayer.frame = CGRectMake(x, y, width, height)
    }
    
    private func adjustLeftLayer(layer: CALayer, withBorderWeight: Int){
        let x: CGFloat = 0
        let y: CGFloat = 0
        let width = CGFloat(withBorderWeight)
        let height = layer.frame.height
        
        leftLayer.frame = CGRectMake(x, y, width, height)
    }
    
    private func adjustRightLayer(layer: CALayer, withBorderWeight: Int){
        let x: CGFloat = layer.frame.width - CGFloat(withBorderWeight)
        let y: CGFloat = 0
        let width = CGFloat(withBorderWeight)
        let height = layer.frame.height
        
        rightLayer.frame = CGRectMake(x, y, width, height)
    }
    
    private func adjustBottomLayer(layer: CALayer, withBorderWeight: Int){
        let x: CGFloat = 0
        let y = layer.frame.height - CGFloat(withBorderWeight)
        let width = layer.frame.width
        let height = CGFloat(withBorderWeight)
        
        bottomLayer.frame = CGRectMake(x, y, width, height)
    }
    
    override func layoutSublayersOfLayer(layer: CALayer) {
        super.layoutSublayersOfLayer(layer)
        
        adjustTopLayer(layer, withBorderWeight: topBorderWeight)
        adjustBottomLayer(layer, withBorderWeight: bottomBorderWeight)
        adjustLeftLayer(layer, withBorderWeight: leftBorderWeight)
        adjustRightLayer(layer, withBorderWeight: rightBorderWeight)
    }
}
