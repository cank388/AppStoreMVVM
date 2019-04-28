//
//  AppContainer.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import AppStoreAPI

let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = AppsService()
}
