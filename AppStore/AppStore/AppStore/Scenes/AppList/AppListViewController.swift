//
//  AppListViewController.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import UIKit
import AppStoreAPI

class AppListViewController:UIViewController{
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: AppListViewModelProtocol!{
        didSet {
            viewModel.delegate = self
        }
    }
    private var appList: [AppsPresentation] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.load()
    }
    
    
}

extension AppListViewController: AppListViewModelDelegate{
    func handleViewModelOutput(_ output: AppListViewModelOutput) {
        switch output {
        case .updateTitle(let title):
            self.title = title
        case .setLoading(let isLoading):
            UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
        case .showAppList(let appList):
            self.appList = appList
            tableView.reloadData()
        }
    }
    
    func navigate(to route: AppListViewRoute) {
        switch route {
        case .detail(let viewModel):
            let viewController = AppListDetailBuilder.make(with: viewModel)
            show(viewController, sender: nil)
        }
    }
}

extension AppListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppListCell", for: indexPath)
        let apps = appList[indexPath.row]
        cell.textLabel?.text = apps.title
        cell.detailTextLabel?.text = apps.detail
        
        return cell
    }
    
    
}

extension AppListViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        viewModel.selectApp(at: indexPath.row)
    }
    
}
