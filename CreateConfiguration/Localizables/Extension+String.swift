//
//  Extension+String.swift
//  CreateConfiguration-Development
//
//  Created by Tao Quynh on 3/6/23.
//

import Foundation

extension String {
    func localizeString(string: String) -> String {
        let path = Bundle.main.path(forResource: string, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}
