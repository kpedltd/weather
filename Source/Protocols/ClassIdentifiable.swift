//
//  ClassIdentifiable.swift
//  WeatherApp
//
//  Created by Егор Ермин on 06.04.2022.
//

protocol ClassIdentifiable {
    static var reuseId: String { get }
}

// MARK: - Default implementation

extension ClassIdentifiable {

    static var reuseId: String {
        String(describing: self)
    }

}
