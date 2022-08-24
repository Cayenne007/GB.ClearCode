//
//  User.swift
//  GB.ClearCode
//
//  Created by Cayenne on 23.08.2022.
//

struct User: Codable {
    
    let id: Int
    let login: String
    let name: String
    let lastname: String

    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
    }
    
}
