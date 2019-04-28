//
//  AppListDetailContracts.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation

protocol AppListDetailViewModelDelegate: class {
    func showDetail(_ presentation: AppListDetailPresentation)
}

protocol AppListDetailViewModelProtocol {
    var delegate: AppListDetailViewModelDelegate? { get set }
    func load()
}
