//
//  AppListDetailPresentation+AppStoreAPI.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import AppStoreAPI

extension AppListDetailPresentation {
    
    init(apps: Apps) {
        self.init(appNameLabel:apps.name,appArtistLabel:apps.artistName,appReleaseDateLabel: apps.releaseDate)
    }
}
