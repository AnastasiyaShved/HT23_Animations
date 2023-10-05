//
//  UIButtonEwt.swift
//  HT23_Animations
//
//  Created by Apple on 5.10.23.
//

import Foundation
import UIKit

extension UIButton {
    
    func pulsate() {
        let pulsate = CASpringAnimation(keyPath: "transform.scale")
        pulsate.duration = 0.5
        pulsate.fromValue = 0.8
        pulsate.toValue = 1.2
        pulsate.autoreverses = true
        pulsate.initialVelocity = 0.3
        pulsate.damping = 1
        
        //добавление данной аниции к кнопке
        layer.add(pulsate, forKey: nil)
    }
}
