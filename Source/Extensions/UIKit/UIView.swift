//
//  UIView.swift
//  WeatherApp
//
//  Created by Егор Ермин on 05.04.2022.
//

import UIKit.UIView

extension UIView {
    
    func addSubviews(_ views: UIView ...) {
        views.forEach { addSubview($0) }
    }
    
}
