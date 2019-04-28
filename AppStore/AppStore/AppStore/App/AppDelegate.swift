//
//  AppDelegate.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        app.router.start()
        return true
    }
}

