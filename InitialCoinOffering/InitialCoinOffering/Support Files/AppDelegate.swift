//
//  AppDelegate.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 03/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        setupInitialViewController()
        
        return true
    }
    
    private func setupInitialViewController() {
        
        let navigationController = UINavigationController(rootViewController: ViewController.defaultViewController())
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
        
    }
    
}

