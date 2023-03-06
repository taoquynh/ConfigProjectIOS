//
//  BaseUrl.swift
//  CreateConfiguration-Development
//
//  Created by Tao Quynh on 3/6/23.
//

import Foundation

extension BuildConfiguration {
    var baseUrl: String {
        switch environment {
        case .debugDevelopment, .releaseDevelopment:
            return "Url Development"
        case .debugStaging, .releaseStaging:
            return "Url Staging"
        case .debugProduction, .releaseProduction:
            return "Url Production"
        }
    }
    
}
