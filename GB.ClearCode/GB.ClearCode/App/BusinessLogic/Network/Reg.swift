//
//  Reg.swift
//  GB.ClearCode
//
//  Created by Cayenne on 24.08.2022.
//

import Alamofire


class Reg: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}

extension Reg: RegistrationRequestFactory {
    func register(id: Int, userName: String, password: String, email: String, gender: String, creditCard: String, bio: String, completionHandler: @escaping (AFDataResponse<RegisterResult>) -> Void) {
        
        let requestModel = Registration(id: id,
                                        userName: userName,
                                        password: password,
                                        email: password,
                                        gender: gender,
                                        creditCard: creditCard,
                                        bio: bio
        )
        self.request(request: requestModel, completionHandler:
                        completionHandler)
        
    }
}

extension Reg {
    struct Registration: RequestRouter {
        let method: HTTPMethod = .get
        let path: String = "registerUser.json"
        let id: Int
        let userName: String
        let password: String
        let email: String
        let gender: String
        let creditCard: String
        let bio: String
        
        var parameters: Parameters? {
            return [
                "id_user": id,
                "username": userName,
                "password": password,
                "email": email,
                "gender": gender,
                "credit_card": creditCard,
                "bio": bio
            ]
        }
    }
}

