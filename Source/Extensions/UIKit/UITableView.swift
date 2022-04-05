//
//  UITableView.swift
//  WeatherApp
//
//  Created by Егор Ермин on 06.04.2022.
//

import UIKit.UITableView

extension UITableView {
    
    func register<T: UITableViewCell>(cellType: T.Type) where T: ClassIdentifiable {
        register(cellType.self, forCellReuseIdentifier: cellType.reuseId)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(withCellType type: T.Type = T.self) -> T where T: ClassIdentifiable {
        guard let cell = dequeueReusableCell(withIdentifier: type.reuseId) as? T else {
            fatalError(dequeueError(reuseId: type.reuseId))
        }
        return cell
    }

    func dequeueReusableCell<T: UITableViewCell>(withCellType type: T.Type = T.self, for indexPath: IndexPath) -> T where T: ClassIdentifiable {
        guard let cell = dequeueReusableCell(withIdentifier: type.reuseId, for: indexPath) as? T else {
            fatalError(dequeueError(reuseId: type.reuseId))
        }
        return cell
    }
    
}

// MARK: - Dequeue Error Method

extension UITableView {

    private func dequeueError(reuseId: String) -> String {
        return "Couldn't dequeue cell with identifier \(reuseId)"
    }

}
