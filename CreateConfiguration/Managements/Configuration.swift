//
//  Configuration.swift
//  CreateConfiguration-Development
//
//  Created by Tao Quynh on 3/6/23.
//

import UIKit

enum Environment: String {
    case debugDevelopment = "Debug Development"
    case releaseDevelopment = "Release Development"
    
    case debugStaging = "Debug Staging"
    case releaseStaging = "Release Staging"
    
    case debugProduction = "Debug Production"
    case releaseProduction = "Release Production"
}

class BuildConfiguration {
    static let shared = BuildConfiguration()
    
    var environment: Environment
    
    var backgroundColor: UIColor {
        switch environment {
        case .debugDevelopment, .releaseDevelopment:
            return UIColor.yellow
        case .debugStaging, .releaseStaging:
            return UIColor.red
        case .debugProduction, .releaseProduction:
            return UIColor.blue
        }
    }
    
    init() {
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        environment = Environment(rawValue: currentConfiguration)!
    }
    
}
