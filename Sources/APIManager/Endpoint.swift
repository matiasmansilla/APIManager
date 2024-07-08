//
//  Endpoint.swift
//
//
//  Created by Dardo Matias Mansilla on 08/07/2024.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public enum ParameterEncoding {
    case url
    case json
}

public typealias HTTPHeaders = [String: String]

public protocol EndPointType {
    var baseURL: String { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var headers: HTTPHeaders? { get }
    var encoding: ParameterEncoding { get }
}
