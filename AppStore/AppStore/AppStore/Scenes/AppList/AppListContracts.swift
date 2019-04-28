//
//  AppListContracts.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation

protocol AppListViewModelProtocol {
    var delegate: AppListViewModelDelegate? { get set }
    func load()
    func selectApp(at index: Int)
}

enum AppListViewModelOutput:Equatable {
    case updateTitle(String)
    case setLoading(Bool)
    case showAppList([AppsPresentation])
}

enum AppListViewRoute {
    case detail(AppListDetailViewModelProtocol)
}

protocol AppListViewModelDelegate: class{
    func handleViewModelOutput(_ output: AppListViewModelOutput)
    func navigate(to route: AppListViewRoute)
}

