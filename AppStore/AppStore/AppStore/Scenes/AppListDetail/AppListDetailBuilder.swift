//
//  AppListDetailBuilder.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import AppStoreAPI

final class AppListDetailBuilder {
    
    static func make(with viewModel: AppListDetailViewModelProtocol) -> AppListDetailViewController {
        let storyboard = UIStoryboard(name: "AppListDetail", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "AppListDetailViewController") as! AppListDetailViewController
        viewController.viewModel = viewModel
        return viewController
    }
}
