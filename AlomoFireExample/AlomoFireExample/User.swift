//
//  User.swift
//  AlomoFireExample
//
//  Created by Kaan Yalçınkaya on 28.11.2021.
//

import Foundation
struct User: Codable {
    let firstName, lastName, dateOfBirth: String?

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case dateOfBirth = "date_of_birth"
    }
}
