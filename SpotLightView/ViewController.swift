//
//  ViewController.swift
//  SpotLightView
//
//  Created by Oleksandr Borysenko on 1/24/18.
//  Copyright © 2018 Oleksandr Borysenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let width: CGFloat = 100
    let height: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        (self.view as? SpotLightView)?.drawRect(in: CGRect(x: width, y: height, width: width, height: height))
    }

    @IBAction func onDrag(_ sender: UIPanGestureRecognizer) {
        if let view = self.view as? SpotLightView {
                let location = sender.location(in: self.view)
                view.drawRect(in: CGRect(x: location.x - width / 2,
                                         y: location.y - height / 2,
                                         width: width,
                                         height: height))
        }
    }
}
