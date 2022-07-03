//
//  User.swift
//  FilmApp
//
//  Created by Denys on 01.07.2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
    
}

extension User {
    static var logins = [
    User(login: "lexone", password: "12345")
    ]
}
