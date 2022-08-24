//
//  Abstract.swift
//  GB.ClearCode
//
//  Created by Cayenne on 20.08.2022.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
