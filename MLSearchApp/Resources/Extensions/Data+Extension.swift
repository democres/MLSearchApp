//
//  Data+Extension.swift
//  MLSearchApp
//
//  Created by David Figueroa on 18/04/21.
//

import Foundation

extension Data {

    func parseErrorData() -> String {

        var errorMessage: String = ""

        do {
            let result = try  JSONDecoder().decode([ErrorDefault].self, from: self)
            for item in result {
                errorMessage = "\(item.title)"
            }
        } catch {
            errorMessage = error.localizedDescription
        }

        return errorMessage
    }

}
