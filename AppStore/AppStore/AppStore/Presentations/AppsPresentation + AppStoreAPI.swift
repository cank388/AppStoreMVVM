//
//  AppsPresentation + AppStoreAPI.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import AppStoreAPI

extension AppsPresentation {
    
    convenience init(app: Apps) {
        self.init(title: app.name,
                  detail: app.artistName)
    }
}
