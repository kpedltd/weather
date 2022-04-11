//
//  BaseRouter.swift
//  WeatherApp
//
//  Created by Егор Ермин on 12.04.2022.
//

import UIKit.UINavigationController

class BaseRouter {
    
    let navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {}
    
}
