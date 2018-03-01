//
//  SpotLightView.swift
//  SpotLightView
//
//  Created by Oleksandr Borysenko on 1/24/18.
//  Copyright © 2018 Oleksandr Borysenko. All rights reserved.
//

import UIKit

class SpotLightView: UIView {
    
    var spotLayer: CAShapeLayer?
    let layerColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.699807363)

    func drawOval(in rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        
        self.drawSpotLightShaped(as: path, color: self.layerColor)
    }
    
    func drawRect(in rect: CGRect) {
        let path = UIBezierPath(rect: rect)
        
        self.drawSpotLightShaped(as: path, color: self.layerColor)
    }
    
    func drawSpotLightShaped(as shape: UIBezierPath, color: UIColor) {
        let layer = CAShapeLayer()
        let path = shape
        path.append(UIBezierPath(rect: self.bounds))
        
        layer.fillRule = kCAFillRuleEvenOdd
        layer.path = path.cgPath
        layer.fillColor = color.cgColor
        
        self.spotLayer?.removeFromSuperlayer()
        self.layer.addSublayer(layer)
        self.spotLayer = layer
    }
}
