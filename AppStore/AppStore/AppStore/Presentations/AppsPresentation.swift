//
//  AppsPresentation.swift
//  AppStore
//
//  Created by Can Kalender on 27.04.2019.
//  Copyright © 2019 Can Kalender. All rights reserved.
//

import Foundation
import UIKit
import AppStoreAPI

final class AppsPresentation: NSObject {
    
    let title: String
    let detail: String
    
    init(title: String, detail: String) {
        self.title = title
        self.detail = detail
        super.init()
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        guard let other = object as? AppsPresentation else { return false }
        return self.title == other.title && self.detail == other.detail
    }
}
