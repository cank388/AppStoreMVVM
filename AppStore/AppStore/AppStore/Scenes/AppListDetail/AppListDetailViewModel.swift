//
//  AppListDetailViewModel.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import AppStoreAPI

final class AppListDetailViewModel: AppListDetailViewModelProtocol {
    
    weak var delegate: AppListDetailViewModelDelegate?
    private let presentation: AppListDetailPresentation
    
    init(apps: Apps) {
        self.presentation = AppListDetailPresentation(apps: apps)
    }
    
    func load() {
        delegate?.showDetail(presentation)
    }
}
