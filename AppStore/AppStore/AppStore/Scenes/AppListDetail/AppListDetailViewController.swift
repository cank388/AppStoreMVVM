//
//  AppListDetailViewController.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import UIKit

class AppListDetailViewController: UIViewController{
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appArtistLabel: UILabel!
    @IBOutlet weak var appReleaseDateLabel: UILabel!
    
    var viewModel: AppListDetailViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.load()
        
    }
}

extension AppListDetailViewController: AppListDetailViewModelDelegate {
    
    func showDetail(_ presentation: AppListDetailPresentation) {
        appNameLabel.text = presentation.appNameLabel
        appArtistLabel.text = presentation.appArtistLabel
        appReleaseDateLabel.text = presentation.appReleaseDateLabel.toString()
    }
}

extension Date {
    
    func toString(format: String = "yyyy-MM-dd") -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}
