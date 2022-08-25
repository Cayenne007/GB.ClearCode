//
//  AuthRequestFactory.swift
//  GB.ClearCode
//
//  Created by Cayenne on 23.08.2022.
//

import Alamofire


protocol AuthRequestFactory {
    func login(userName: String,
               password: String,
               completionHandler: @escaping
               (AFDataResponse<LoginResult>) -> Void)
}

protocol RegistrationRequestFactory {
    func register(id: Int,
                  userName: String,
                  password: String,
                  email: String,
                  gender: String,
                  creditCard: String,
                  bio: String,
                  completionHandler: @escaping
               (AFDataResponse<RegisterResult>) -> Void)
}

protocol LogoutRequestFactory {
    func logout(id: Int,
                completionHandler: @escaping
               (AFDataResponse<LogoutResult>) -> Void)
}

protocol ChangeUserDataRequestFactory {
    func change(id: Int,
                userName: String,
                password: String,
                email: String,
                gender: String,
                creditCard: String,
                bio: String,
                completionHandler: @escaping
                (AFDataResponse<ChangeUserDataResult>) -> Void)
}
