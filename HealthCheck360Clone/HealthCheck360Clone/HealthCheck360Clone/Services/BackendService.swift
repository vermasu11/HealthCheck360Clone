//
//  BackendService.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation

class BackendService {
    static let shared = BackendService()

    func fetchData<T: Decodable>(url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data else {
                    completion(.failure(NSError(domain: "DataError", code: -1, userInfo: nil)))
                    return
                }
                do {
                    let decodedData = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(decodedData))
                } catch {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}

extension BackendService {
    func createUser(username: String, email: String, password: String, completion: @escaping (Bool, Error?) -> Void) {
        let url = URL(string: "\(Constants.baseURL)/createUser")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let body = ["username": username, "email": email, "password": password] // Password should be hashed server-side
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            // Process response and errors, call completion accordingly
        }.resume()
    }

    func loginUser(username: String, password: String, completion: @escaping (Bool, Error?) -> Void) {
        // Implementation similar to createUser, targeting my login endpoint
    }
}


