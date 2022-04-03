//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Егор Ермин on 02.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let currentWeatherViewController = CurrentWeatherViewController()
        let navigationController = UINavigationController(rootViewController: currentWeatherViewController)
        
        guard let window = window else { return true }
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }

}
