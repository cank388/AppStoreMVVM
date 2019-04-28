//
//  AppListViewModel.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import AppStoreAPI

final class AppListViewModel: AppListViewModelProtocol{
    
    var delegate: AppListViewModelDelegate?
    private let service: AppsServiceProtocol
    private var apps: [Apps] = []
    
    init(service: AppsServiceProtocol){
        self.service = service
    }
    
    func load() {
        notify(.updateTitle("Apps"))
        notify(.setLoading(true))
        
        service.fetchApps{[weak self] (result) in
            guard let self = self else { return }
            self.notify(.setLoading(false))
            
            switch result{
            case.success(let response):
                self.apps = response.results
                let presentations = self.apps.map({ AppsPresentation(app: $0)})
                self.notify(.showAppList(presentations))
            case .failure( _):
                print("Error")
            }
            
        }
    }
    
    func selectApp(at index: Int) {
        let apps = self.apps[index]
        let viewModel = AppListDetailViewModel(apps: apps)
        delegate?.navigate(to: .detail(viewModel))
    }
    
    private func notify(_ output: AppListViewModelOutput) {
        delegate?.handleViewModelOutput(output)
    }
}
