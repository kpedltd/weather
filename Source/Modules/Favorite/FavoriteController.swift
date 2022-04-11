//
//  FavoriteController.swift
//  WeatherApp
//
//  Created by Егор Ермин on 11.04.2022.
//

protocol FavoriteControllerProtocol: AnyObject {
    func setView(_ view: FavoriteViewProtocol)
}

final class FavoriteController {
    
    private let model: FavoriteModel
    private weak var view: FavoriteViewProtocol?
    private let router: FavoriteRouter
    
    init(model: FavoriteModel, router: FavoriteRouter) {
        self.model = model
        self.router = router
    }
    
}

// MARK: - FavoriteControllerProtocol

extension FavoriteController: FavoriteControllerProtocol {
    
    func setView(_ view: FavoriteViewProtocol) {
        self.view = view
    }
    
}
