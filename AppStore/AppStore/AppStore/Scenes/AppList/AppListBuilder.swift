//
//  AppListBuilder.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import UIKit

final class AppListBuilder{
    
    static func make() -> AppListViewController{
        let storyboard = UIStoryboard(name: "AppList", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "AppListViewController") as! AppListViewController
        viewController.viewModel = AppListViewModel(service: app.service)
        return viewController
    }
}
