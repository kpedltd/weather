//
//  FavoriteRouter.swift
//  WeatherApp
//
//  Created by Егор Ермин on 11.04.2022.
//

import UIKit

final class FavoriteRouter: BaseRouter {
    
    private func assembleModule() -> FavoriteViewController {
        let model = FavoriteModel()
        let controller = FavoriteController(model: model, router: self)
        return FavoriteViewController(controller)
    }
    
    override func start() {
        navigationController.pushViewController(assembleModule(), animated: true)
    }
    
}

// MARK: - Routing

extension FavoriteRouter {
    
}
