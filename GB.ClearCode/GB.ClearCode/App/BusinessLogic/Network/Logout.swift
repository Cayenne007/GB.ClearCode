//
//  Logout.swift
//  GB.ClearCode
//
//  Created by Cayenne on 24.08.2022.
//

import Alamofire


class Logout: AbstractRequestFactory {
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

extension Logout: LogoutRequestFactory {
    func logout(id: Int, completionHandler: @escaping (AFDataResponse<LogoutResult>) -> Void) {
        
        let requestModel = Logout(id: id)
        self.request(request: requestModel, completionHandler:
                        completionHandler)
        
    }
}

extension Logout {
    struct Logout: RequestRouter {
        let method: HTTPMethod = .get
        let path: String = "logout.json"
        let id: Int
        
        var parameters: Parameters? {
            return [
                "id_user": id
            ]
        }
    }
}

