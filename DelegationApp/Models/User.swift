//
//  User.swift
//  DelegationApp
//
//  Created by Alexander Shevtsov on 01.09.2024.
//

import Foundation

struct User {
    var name: String
    var surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
